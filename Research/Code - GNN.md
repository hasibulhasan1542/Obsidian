# What we’ll build

A mesh-aware surrogate model that predicts the pressure and velocity fields around a 2D cylinder directly on your mesh. Train on OpenFOAM simulations; infer with a Graph Neural Network (GNN). Minimal moving parts, maximal signal.

---

## 0) Crash-course: GNNs for CFD (2-minute version)

- **Graphs**: Nodes = mesh points/cell centroids. Edges = adjacency.
    
- **Features**: Node inputs like (x, y), boundary tags, optional cell area; global inputs like Reynolds number _Re_ or inlet velocity.
    
- **Message passing**: Each layer updates nodes by aggregating messages from neighbors; think of it as a learned stencil.
    
- **Conditioning**: Concatenate global parameters to every node so predictions adapt to _Re_, inlet profile, etc.
    
- **Targets**: Steady-state case – predict **u_x, u_y, p** at each node. Transient case – predict **next time step** and roll out.
    

---

## 1) Minimal experiment to prove it works

Pick **steady-state, laminar** 2D flow (Re ≤ ~200) so training converges fast and physics is clean.

- Geometry: Rectangle domain with a centered cylinder (D = 1).
    
- Domain size: e.g., **[0, 25D] × [−8D, 8D]** (cylinder center ~ (5D, 0)).
    
- Boundary conditions:
    
    - Inlet: fixed parabolic or uniform **U_in**; zeroGradient p
        
    - Outlet: zeroGradient U; fixedValue p = 0
        
    - Walls & cylinder: no-slip U = (0,0)
        
- Viscosity ν fixed, vary **U_in** to sweep **Re = U_in·D/ν**.
    
- Mesh: Start with snappyHexMesh (or blockMesh + refineMesh). Keep **2D** (one cell in z, empty type).
    

### Dataset plan

- Sample ~**N = 100–300** cases: U_in ∈ \[0.5, 2.5] m/s → Re spans your target.
    
- For each case, run to steady state; export fields (U, p) on the **same mesh** or remap to a **reference mesh**.
    
- Save as VTK/VTU (via `foamToVTK`) per case.
    

---

## 2) Turning meshes into graphs

Two simple choices:

1. **Cell-centroid graph** (robust): each cell is a node; edges connect face-adjacent cells.
    
2. **Vertex graph** (finer geometry detail): each mesh vertex is a node; edges from mesh connectivity.
    

**Recommended**: cell-centroid graph for stability at start.

### Node features (per node i)

- **x, y** coordinates (normalized)
    
- **isWall, isInlet, isOutlet, isCylinder** (one-hot)
    
- Optional: **area/volume**, **distance to cylinder center**, **mask** for boundaries
    

### Edge features (i → j)

- Relative position **(x_j − x_i, y_j − y_i)**
    
- Optional: edge length
    

### Global features

- **Re** or **U_in** (broadcast to all nodes)
    

### Targets

- **\[u_x, u_y, p]** at each node (steady state)
    

---

## 3) Data pipeline (Python skeleton)

Below is a compact **PyTorch Geometric**-centric pipeline. Adjust paths to your `VTK` outputs.

```python
# env: python>=3.10, torch, torch-geometric, meshio, numpy, pandas
import meshio, numpy as np, os
from torch_geometric.data import Data, InMemoryDataset
import torch

CYL_CENTER = np.array([5.0, 0.0])  # if D=1 and center at (5,0)

class VtkToGraph:
    def __init__(self, vtk_path):
        m = meshio.read(vtk_path)
        # Assume cell data fields exist: 'U', 'p'
        # Use cell centroids
        cells = []
        for c in m.cells:
            if c.type in ("triangle", "quad", "polygon"):
                cells.append(c.data)
        cells = np.vstack(cells)
        pts = m.points[:, :2]  # x,y
        # Centroids per cell
        centroids = np.array([pts[idx].mean(axis=0) for idx in cells])
        # Build adjacency via shared edges (approx): k-NN in centroid space as start
        from sklearn.neighbors import kneighbors_graph
        A = kneighbors_graph(centroids, n_neighbors=6, mode='connectivity', include_self=False)
        row, col = A.nonzero()
        edge_index = np.vstack([row, col])

        # Features
        x = centroids.copy()
        # Normalize to [−1,1]
        xmin, xmax = x.min(0), x.max(0)
        xnorm = 2*(x - xmin)/(xmax - xmin + 1e-8) - 1

        # Boundary tags (if you exported region ids – otherwise set zeros)
        btags = np.zeros((len(centroids), 4))  # wall, inlet, outlet, cylinder

        # Targets from cell_data; meshio stores as dict of dicts
        U = None; p = None
        for name, arr in m.cell_data_dict.get('vtkOriginalCellIds', {}).items():
            pass  # placeholder, depends on export
        # Safer: try reading from point_data and interpolate (omitted for brevity)

        self.data = Data(
            x=torch.from_numpy(np.hstack([xnorm, btags])).float(),
            pos=torch.from_numpy(centroids).float(),
            edge_index=torch.from_numpy(edge_index).long(),
            # y=torch.from_numpy(np.hstack([Ux, Uy, p])).float(),
        )

# Dataset wrapper (expects a CSV manifest with columns: path, Re)
class CylinderDataset(InMemoryDataset):
    def __init__(self, manifest_csv):
        import pandas as pd
        self.df = pd.read_csv(manifest_csv)
        super().__init__(root='.')
        data_list = []
        for _, r in self.df.iterrows():
            g = VtkToGraph(r['path']).data
            Re = np.full((g.x.shape[0], 1), r['Re'], dtype=np.float32)
            g.x = torch.cat([g.x, torch.from_numpy(Re)], dim=1)
            data_list.append(g)
        self.data, self.slices = self.collate(data_list)
```

> **Notes**: The exact extraction of `U` and `p` depends on how you export VTK (point vs. cell data). Start with `foamToVTK -cellSet` to dump per-cell fields so you can align to centroids easily.

---

## 4) A minimal GNN (message passing + global conditioning)

```python
import torch
from torch import nn
from torch_geometric.nn import MessagePassing
from torch_geometric.utils import add_self_loops

class EdgeMLP(nn.Module):
    def __init__(self, in_dim, hidden):
        super().__init__()
        self.net = nn.Sequential(
            nn.Linear(in_dim, hidden), nn.ReLU(),
            nn.Linear(hidden, hidden), nn.ReLU(),
        )
    def forward(self, e):
        return self.net(e)

class NodeMLP(nn.Module):
    def __init__(self, in_dim, hidden, out_dim):
        super().__init__()
        self.net = nn.Sequential(
            nn.Linear(in_dim, hidden), nn.ReLU(),
            nn.Linear(hidden, out_dim)
        )
    def forward(self, x):
        return self.net(x)

class CylinderGNN(MessagePassing):
    def __init__(self, node_in, hidden=128, steps=5):
        super().__init__(aggr='mean')
        self.steps = steps
        self.edge_mlp = EdgeMLP(in_dim=node_in*2 + 2, hidden=hidden)  # src,dst plus rel_pos (dx,dy)
        self.node_mlp = NodeMLP(in_dim=node_in + hidden, hidden=hidden, out_dim=node_in)
        self.head = nn.Sequential(nn.Linear(node_in, 128), nn.ReLU(), nn.Linear(128, 3))  # ux, uy, p

    def forward(self, x, edge_index, pos):
        row, col = edge_index
        for _ in range(self.steps):
            dx = pos[col] - pos[row]
            e_in = torch.cat([x[row], x[col], dx], dim=-1)
            m_ij = self.edge_mlp(e_in)
            m = self.propagate(edge_index, x=x, m=m_ij)
            x = self.node_mlp(torch.cat([x, m], dim=-1))
        return self.head(x)

    def message(self, m):
        return m
```

**Training loop (sketch)**

```python
model = CylinderGNN(node_in=1+2+4)  # Re + (x,y) + 4 tags; adjust if you add more
opt = torch.optim.Adam(model.parameters(), lr=1e-3)
loss_fn = lambda pred, y: ((pred - y)**2).mean()

for epoch in range(200):
    for g in train_loader:
        pred = model(g.x, g.edge_index, g.pos)
        loss = loss_fn(pred, g.y)
        opt.zero_grad(); loss.backward(); opt.step()
```

---

## 5) Exporting training data from OpenFOAM

1. Run simulation to convergence (steady residuals or fixed iterations).
    
2. Create a cellSet for internal field (or use all cells).
    
3. Convert to VTK:
    
    ```bash
    foamToVTK -time 'latestTime' -ascii
    ```
    
4. Ensure **cellData** includes `U` and `p` (if they are pointData, use `vtkCellDataToPointData` in ParaView and save; or sample with `sampleDict`).
    
5. Build a **manifest CSV** with columns: `path,Re,U_in` for your dataset.
    

---

## 6) Evaluation: don’t just eyeball the contours

- **Field errors**: L2 and relative L2 for `U` and `p`.
    
- **Integral quantities**: compute **drag (C_d)** and **lift (C_l)** from predictions on the cylinder boundary (pressure + shear). Compare against CFD truth.
    
- **Iso-lines / wake metrics**: recirculation length, vortex center locations (for higher Re).
    
- **Generalization**: hold-out _Re_ values outside training range.
    

---

## 7) Common pitfalls (learned the hard way)

- **Leaky BC knowledge**: If you don’t tag boundaries, the model will hallucinate near walls. Use boundary one-hots.
    
- **Non-normalized inputs**: Normalize coordinates and targets; scale `p` and `U` to unit variance.
    
- **Insufficient graph connectivity**: If you k-NN instead of topological adjacency, pick k≥6 and test stability.
    
- **Data leakage**: Don’t mix times/iterations from the same case across train/val.
    
- **Steady vs transient confusion**: For vortex shedding, don’t train a direct field regressor; train **next-step** predictor and roll out.
    

---

## 8) Stretch goals

- **MeshGraphNets** style encoder-processor-decoder with residual connections and 10–15 message-passing steps.
    
- **Graph U-Net** or **GAT** for learned receptive fields.
    
- **Temporal**: Add GRU inside message passing or use sequence-to-sequence over windows.
    
- **Physics constraints**: Penalize ∇·u with a divergence loss term, or add pressure-Poisson consistency.
    

---

## 9) If you want JAX / MeshGraphNets

- Use JAX + Haiku (or Flax). Graph library: **jraph**.
    
- Same features/targets; same dataset. Start with 5 message-passing steps; try 10 for better accuracy.
    
- Train with Adam, cosine LR, batch by **graphs-per-batch** (1–4 depending on nodes).
    

---

## 10) Your next moves (checklist)

-  Lock a steady-state case (Re range, mesh frozen)
    
-  Automate runs and VTK export; build manifest CSV
    
-  Write a converter that outputs **(x, pos, edge_index, y)** per case
    
-  Train the minimal GNN; plot L2 vs epoch
    
-  Evaluate on held-out Re; report C_d and field errors
    
-  Iterate: add boundary tags, add edge features, increase steps
    

---

### Want help wiring this to your exact case?

Paste: your `system/controlDict`, `0/{U,p}`, and a screenshot of your mesh. I’ll tailor the converter and the tags so you’re not fighting VTK quirks.

***
***

# GNN Surrogate Model for Flow Over a Cylinder — Complete Guide

This guide will take your existing VTK files from OpenFOAM simulations and walk you through building a surrogate model using a Graph Neural Network (GNN) in PyTorch Geometric.

---

## 1) Overview

We’ll:

1. Load VTK output (U, p) from OpenFOAM.
    
2. Convert the mesh to a graph (nodes = cell centroids).
    
3. Build a minimal GNN to predict velocity & pressure fields.
    
4. Train, validate, and evaluate the model.
    

---

## 2) Python Environment

```bash
pip install torch torch-geometric meshio pandas scikit-learn
```

---

## 3) VTK to Graph Conversion

```python
import meshio, numpy as np, torch
from torch_geometric.data import Data, InMemoryDataset
from sklearn.neighbors import kneighbors_graph

class VtkToGraph:
    def __init__(self, vtk_path):
        m = meshio.read(vtk_path)
        cells = np.vstack([c.data for c in m.cells if c.type in ("triangle", "quad", "polygon")])
        pts = m.points[:, :2]
        centroids = np.array([pts[idx].mean(axis=0) for idx in cells])
        A = kneighbors_graph(centroids, n_neighbors=6, mode='connectivity', include_self=False)
        row, col = A.nonzero()
        edge_index = np.vstack([row, col])

        xmin, xmax = centroids.min(0), centroids.max(0)
        xnorm = 2*(centroids - xmin)/(xmax - xmin + 1e-8) - 1

        U = np.array(m.cell_data["U"][0])
        p = np.array(m.cell_data["p"][0]).reshape(-1, 1)
        y = np.hstack([U, p])

        self.data = Data(
            x=torch.from_numpy(xnorm).float(),
            pos=torch.from_numpy(centroids).float(),
            edge_index=torch.from_numpy(edge_index).long(),
            y=torch.from_numpy(y).float(),
        )

class CylinderDataset(InMemoryDataset):
    def __init__(self, manifest_csv):
        import pandas as pd
        df = pd.read_csv(manifest_csv)
        super().__init__(root='.')
        data_list = []
        for _, r in df.iterrows():
            g = VtkToGraph(r['path']).data
            Re = np.full((g.x.shape[0], 1), r['Re'], dtype=np.float32)
            g.x = torch.cat([g.x, torch.from_numpy(Re)], dim=1)
            data_list.append(g)
        self.data, self.slices = self.collate(data_list)
```

---

## 4) GNN Model

```python
import torch
from torch import nn
from torch_geometric.nn import MessagePassing

class EdgeMLP(nn.Module):
    def __init__(self, in_dim, hidden):
        super().__init__()
        self.net = nn.Sequential(
            nn.Linear(in_dim, hidden), nn.ReLU(),
            nn.Linear(hidden, hidden), nn.ReLU()
        )
    def forward(self, e):
        return self.net(e)

class NodeMLP(nn.Module):
    def __init__(self, in_dim, hidden, out_dim):
        super().__init__()
        self.net = nn.Sequential(
            nn.Linear(in_dim, hidden), nn.ReLU(),
            nn.Linear(hidden, out_dim)
        )
    def forward(self, x):
        return self.net(x)

class CylinderGNN(MessagePassing):
    def __init__(self, node_in, hidden=128, steps=5):
        super().__init__(aggr='mean')
        self.steps = steps
        self.edge_mlp = EdgeMLP(node_in*2 + 2, hidden)
        self.node_mlp = NodeMLP(node_in + hidden, hidden, node_in)
        self.head = nn.Sequential(nn.Linear(node_in, 128), nn.ReLU(), nn.Linear(128, 3))

    def forward(self, x, edge_index, pos):
        row, col = edge_index
        for _ in range(self.steps):
            dx = pos[col] - pos[row]
            e_in = torch.cat([x[row], x[col], dx], dim=-1)
            m_ij = self.edge_mlp(e_in)
            m = self.propagate(edge_index, x=x, m=m_ij)
            x = self.node_mlp(torch.cat([x, m], dim=-1))
        return self.head(x)

    def message(self, m):
        return m
```

---

## 5) Training

```python
from torch_geometric.loader import DataLoader

train_dataset = CylinderDataset('train_manifest.csv')
train_loader = DataLoader(train_dataset, batch_size=1, shuffle=True)

model = CylinderGNN(node_in=train_dataset[0].x.shape[1])
opt = torch.optim.Adam(model.parameters(), lr=1e-3)
loss_fn = nn.MSELoss()

for epoch in range(200):
    total_loss = 0
    for g in train_loader:
        pred = model(g.x, g.edge_index, g.pos)
        loss = loss_fn(pred, g.y)
        opt.zero_grad(); loss.backward(); opt.step()
        total_loss += loss.item()
    print(f"Epoch {epoch}: Loss {total_loss/len(train_loader):.6f}")
```

---

## 6) Evaluation

- Compute L2 errors for U and p.
    
- Plot predicted vs CFD contours for visual validation.
    

---

## 7) Next Steps

- Add boundary condition tags as features.
    
- Try deeper GNN (MeshGraphNets style).
    
- Add divergence penalty in loss for physics-awareness.