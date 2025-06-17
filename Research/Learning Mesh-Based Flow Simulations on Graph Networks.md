Traditional deep learning methods are not able to model intricate mesh-based flow simulations accurately. In this post, we show a step-by-step implementation of the MeshGraphNets graph neural network using PyTorch and PyG, which achieves precise simulation results on meshes.

By [Isaac Ju](https://scholar.google.com/citations?user=NldX0YsAAAAJ&hl=en), [Robert Lupoiu](http://www.robertlupoiu.com), and [Rayan Kanfar](http://www.linkedin.com/in/rayan-kanfar-091297129) as part of the Stanford CS224W course project. Based on the paper by T. Pfaff et al., [Learning Mesh-Based Simulation with Graph Networks](https://arxiv.org/abs/2010.03409) (2021) ICLR. The code written for this blog is made available in the [Colab](https://colab.research.google.com/drive/1mZAWP6k9R0DE5NxPzF8yL2HpIUG3aoDC?usp=sharing).

![](https://miro.medium.com/v2/resize:fit:625/1*aNFrlqJT66tHmuA_mSa7Ew.gif)

A dynamic mesh-based simulation, mapping fluid velocity over time in the presence of an obstacle

# Overview

From solving Navier-Stoke’s equations for modelling the evolution of deep geothermal reservoirs to Maxwell’s equations for nanophotonic devices, high-fidelity mesh-based simulations are essential for accurately modelling the dynamics of geophysical, biological, and engineering systems. Unfortunately, the computational costs of deterministic methods are prohibitively high for realistic applications and uncertainty quantification studies.

Deep learning surrogate models for flow systems have become popular due to their computational efficiency and ability to approximate high dimensional non-linear functions [1]. However, conventional deep learning methods, such as the use of convolutional neural networks (CNNs) are limited to regular grid representations of the geometries being modeled, resulting in large discretization errors or exponentially increased computation time.

Unlike grid representations, simulation meshes can be irregular, offering variability in resolution across the modeled space based on the geometry of the object being modeled. Breaking down the research conference-level jargon: if we want to model high-resolution edges (such as round circles, as illustrated in Fig.1), we have a very hard time to do so with the regular square grids of CNNs, whereas it is easy to do with meshes [2]. This is why computational scientists love using mesh-based simulations ([FEM](https://en.wikipedia.org/wiki/Finite_element_method)). Furthermore, surrogate models must be independent of resolution: they should be able to handle prediction domains of variable sizes. Graph neural networks (GNNs) satisfy all of these requirements, making them the ideal deep learning framework for surrogate modelling physical phenomena.

![](https://miro.medium.com/v2/resize:fit:700/1*Cw1iE_WF-GLWfb7jYxHaeg.png)

Fig.1 — Irregular meshes (right) are far better suited to model general, non-rectangular geometries accurately compared to regular grids (left)

In this post, we explain in detail the working principle of a GNN that has been demonstrated to be particularly well-suited for scientific computing, MeshGraphNets. We hope that this tutorial and [the accompanying code and preprocessed](https://drive.google.com/drive/folders/12QaYm2Y6H4UJ0dit9us4cfN7HelpLXvD?usp=sharing) example datasets can serve as a gentle introduction into the world of graph neural networks, serving as a solid starting point for academic or industry research. Let’s get started!

# But First… What is a Graph Neural Network?

Before diving into MeshGraphNets, a quick crash course on the conceptual _basics_ of graph neural networks (GNNs) will go a long way in understanding the slightly more involved working principle of MeshGraphNets.

A GNN is a deep learning framework that operates on graph objects. A graph is a data structure that naturally characterizes a set of objects and their relationships through sets of nodes and edges. Broadly, GNNs leverage the structure and features of nodes and edges to achieve one of three* tasks:

- node classification: _predicting unknown quantities for the nodes of the graph_
- link prediction: _predicting the existence of missing links between nodes_
- graph classification: _predicting unknowns for the entire graph_

As illustrated in Fig.2, these are referred to as node-level, edge-level, or graph-level tasks. In Fig.2., note that graphs can have different _types_ of nodes. For flow simulations, for example, we could construct graph structures with _wall_ type nodes and _flow_ type nodes, which represent different underlying physics. Whichever the task, the key idea in GNNs is to learn how to propagate information into nodes from their local neighborhoods across interconnecting edges for all nodes in the graph.

![](https://miro.medium.com/v2/resize:fit:700/1*_DijkB20Zb8_P3b8jvGAVA.png)

Fig.2 — Deep learning on graphs is most generally used to achieve node-level, edge-level, or graph-level tasks. This example graph contains two types of nodes: blue and yellow-colored ones.

_*Note that other exciting applications of deep learning on graphs exist, such as_ [_clustering_](https://arxiv.org/abs/2006.16904) _[3] and_ [_graph generation_](https://arxiv.org/abs/1910.00760) _[4], which are outside the scope of this post._

The best way to learn how information propagates through a graph in the GNN algorithm is by example. Consider the simple graph illustrated in Fig.3, where nodes are distinguished by color. To simplify this introduction, the graph edges only provide connectivity between the nodes, and they do not have features themselves. We will demonstrate node classification, which is conceptually very similar to the node regression of MeshGraphNets.

![](https://miro.medium.com/v2/resize:fit:377/1*I--E3pcPeyOirEN_seu1CA.png)

Fig.3 — An example graph used to illustrate node classification

Each node has an initial _node embedding_ that can be calculated from, for example, information about the physical structure the node represents (i.e., the initial _node features_), information about each node’s connectivity, or it can simply be a constant for all nodes to start.

The general GNN framework consists of three steps to update the node embeddings for classification or regression tasks, as illustrated in Fig.4:

- **message computation**: for each node, we compute a “message” that it passes to neighboring nodes in the network. The message function could be as simple as the raw embeddings or a learned transformation of the embeddings, such as using a multilayer perceptron (MLP). In Fig.4, the message functions are denoted by _m._

![](https://miro.medium.com/v2/resize:fit:241/1*OnCl8ioMWTRGy_0bGKWQmQ.png)

Message passing: the embedding _h of node u_ at the previous level of the GNN are transformed by the message function MSG into message m.

- **aggregation**: for each node, a function aggregates all of the messages received from neighbors. This function must be permutation invariant, because neighboring nodes have no canonical ordering, and [variadic](https://en.wikipedia.org/wiki/Variadic_function), because different nodes can have different numbers of neighbors. Suitable aggregation functions include sum, mean, and max, or learned transformations.

![](https://miro.medium.com/v2/resize:fit:337/1*lwGICZ4QfAhz6xbRBWY0SA.png)

Aggregation: a function used to aggregate the messages from neighboring nodes v for node u.

- **updating**: given the aggregated messages from neighboring nodes, the embedding of each node is updated using a processor function. This is most commonly a learned transformation or simply a pass-through function.

![](https://miro.medium.com/v2/resize:fit:242/1*QE1ktWPkERFjwGGhvYSd0Q.png)

Updating: the embedding of node v is updated using a processor function given the aggregated information from neighboring nodes.

All three of these steps together are referred to as a _GNN layer._ If after the first layer we execute these steps again, we would add another GNN layer to the computational graph of each node update, as illustrated in Fig.4. Note that any learned weights are shared within each GNN layer.

![](https://miro.medium.com/v2/resize:fit:700/1*WQhBETsL8rFebL-nF8JqIw.png)

Fig.4 — The general computational graph for the update of the blue node of Fig.3 using a two-layer GNN

Note that every node has its own computational graph defined by its local neighborhood, as illustrated in Fig.5.

![](https://miro.medium.com/v2/resize:fit:700/1*Z4tmb9O1Iz04vzCz33g6Sw.png)

Fig.5 — The computational graph of each node update for the example graph given in Fig.3 using a two-layer GNN

This highlights the importance of the local structure in propagation. We can also see that propagation is independent of graph size, meaning that during training we can feed the algorithm differently sized graphs since the computational graphs are node specific. This has two advantages that allows GNNs to scale well to larger graphs:

- weights learned on one graph are transferable to graphs of different sizes
- the network learns common weights shared across each layer, despite each node having a different neighboring structure

Now that we know what goes on under the hood of a GNN, it should be clear that GNNs are ideal for modelling flow simulations. The properties of GNNs — structural equivariance, scaling, high dependence on local structure and neighbor embeddings — are all intuitively linked to the irregularly structured, neighboring region-dependent dynamics of flow systems.

With our primer on GNNs, we are ready to dive into the exciting world of MeshGraphNets!

# The MeshGraphNets Dataset

Before getting to the main attraction — how to build MeshGraphNets, understanding the flow simulation data is key to understanding the model and its loss function.

We demonstrate the power of MeshGraphNets using the [CylinderFlow dataset](https://github.com/deepmind/deepmind-research/tree/master/meshgraphnets) provided by [DeepMind](https://arxiv.org/abs/2010.03409) [5]. It consists of simulations of incompressible Navier-Stokes flow trajectories over a circular cylinder over time, generated using [COMSOL](https://www.comsol.com/). As illustrated in Fig.6., the dataset consists of 1,200 trajectories (different simulation domains), each consisting of 600 time steps.

![](https://miro.medium.com/v2/resize:fit:700/1*p9MjRLk2mgNIZkSk6WzkUw.png)

Fig 6. The dataset consists of j=1200 trajectories of t-600 time steps.

Different trajectories use different 2D triangular meshes, with edge lengths deviating throughout the mesh based on the underlying structure being modelled. As illustrated in Fig.7, the data associated with each graph in the dataset is:

- **Node type**: a 9-dimensional one-hot vector corresponding to node location in fluid, wall, inflow, or outflow regions.
- **Mesh topology**: each node contains the 2D position vector of its location in the two dimensional space that is being simulated.
- **Node attributes**: this is the underlying data that we will be training MeshGraphNets to simulate. The dataset contains both the 2D velocity vector of the fluid (as illustrated in Fig.6), and the scalar pressure, which can be directly calculated from the time-dependent velocity.

![](https://miro.medium.com/v2/resize:fit:700/1*vHTXvpAxfwdNvA-HPvFvCQ.png)

Fig.7 — An example graph from the CylinderFlow dataset. Each node has a type, position, and attributes (a 2D fluid velocity vector and a pressure scalar).

The dataset provided by DeepMind is in TFRecord format, which is used with TensorFlow training pipelines. To train with a PyG pipeline, this dataset is pre-processed with code made available and fully explained in the [Colab](https://colab.research.google.com/drive/1mZAWP6k9R0DE5NxPzF8yL2HpIUG3aoDC?usp=sharing). We also provide [example datasets](https://drive.google.com/drive/folders/1QANENxeWRVBs2TZ8SQ5CGuHo27i95WtO?usp=sharing) that you can use without having to wait for the pre-processor.

The main takeaway is the final result: in PyG, each graph is stored in an instance of [torch_geometric.data.Data](https://pytorch-geometric.readthedocs.io/en/latest/modules/data.html#torch_geometric.data.Data), which stores all of the attributes of the graph. Our pre-processor returns a list of all the graphs at each time step for all trajectories used during training. A single element (i.e., a graph corresponding to a single time step), has the following signature:

```
For each node i in the graph with neighbor node j:x - (the node features) contains the ground truth 2D velocities concatenated with the 9D node type one-hot vector for all nodes [num_nodes x 11]edge_index - contains the connectivity of the graph in [COO](https://scipy-lectures.org/advanced/scipy_sparse/coo_matrix.html) format. [2 x num_edges]edge_attr - contains the 2D position vector, u_ij, between connecting nodes (u_ij=u_i-u_j) concatenated with the 2-norm of the position vector. [num_edges x 3]y - (the node outputs) contains the fluid acceleration between the current graph and the graph in the next time step. These are the features used for training: y=(v_t_next-v_t_curr)/dt [num_nodes x 2]p - pressure scalar, used for validation [num_nodes x 1]cells and mesh_pos: these attributes contain no new information. They are included for ease of visualization of the results and explained in detail in the Colab.

Data(x=x, edge_index=edge_index, edge_attr=edge_attr, y=y, p=p, cells=cells, mesh_pos=mesh_pos)
```

Now that we understand GNNs and the dataset we are using for MeshGraphNets, let’s dive into the main event!

# Building MeshGraphNets

MeshGraphNets is a deep learning model introduced by [T. Pfaff et al.[5]](https://arxiv.org/abs/2010.03409). We demonstrate its use as a dynamic forward fluid flow simulation surrogate model for a meshed domain: given the velocities at each node at a time step, it predicts the acceleration at each mesh node, from which we can calculate the next step’s velocities through forward integration. As described in [5], the architecture of MeshGraphNets consists of encoding, processing, and decoding steps, as illustrated in Fig.8.

![](https://miro.medium.com/v2/resize:fit:700/1*qtglT1AH6A1QJtlA6bmIMw.png)

Fig.8 — Overview of the MeshGraphNets training process

“Encoding” generates node and edge _embeddings_ from _features, “_processing” takes care of message passing, aggregation, and updating, and decoding is the post-processing step that gives final predictions, as described below.

As demonstrated in the Colab, MeshGraphNets is built in the initialization of the MeshGraphNet class. During the forward passes of the model, the output of the model is calculated as follows:
```python
def forward(self,data,mean_vec_x,std_vec_x,mean_vec_edge,std_vec_edge):
       Encoder encodes graph (node/edge features) into latent vectors (node/edge embeddings)
        The return of processor is fed into the processor for generating new feature vectors

        x, edge_index, edge_attr, pressure = data.x, data.edge_index, data.edge_attr, data.p

        x = stats.normalize(x,mean_vec_x,std_vec_x)
        edge_attr=stats.normalize(edge_attr,mean_vec_edge,std_vec_edge)

        # Step 1: encode node/edge features into latent node/edge embeddings
        x = self.node_encoder(x) # output shape is the specified hidden dimension

        edge_attr = self.edge_encoder(edge_attr) # output shape is the specified hidden dimension

        # step 2: perform message passing with latent node/edge embeddings
        for i in range(self.num_layers):
            x,edge_attr = self.processor[i](x,edge_index,edge_attr)

        # step 3: decode latent node embeddings into physical quantities of interest
        return self.decoder(x)
```
Note that the zeroth step is to normalize the data. As shown in the Colab, the data is normalized to zero mean and unit variance to stabilize training using statistics that are collected on-the-fly.

The encoding, processing, and decoding steps are then executed. These are described in detail below.

## 1. Encoding

The encoding step is tasked with generating the node and edge embeddings from the initial features of the graph, which we then train on in the processing step. The node encoding and edge encoding processes are animated in Fig.9 and Fig.10, respectively.

Recall from the discussion about the dataset that the initial node features of the graph are the concatenated velocity at the current time step, denoted by wᵢ, with the one-hot node type vector, denoted by nᵢ. As illustrated in Fig.9 for two nodes, each node’s features are inputted into an MLP, εᵥ, to get the node feature, vᵢ.

![](https://miro.medium.com/v2/resize:fit:480/1*25F0EE1D-W-wwOXhN2invA.gif)

Fig.9 — Node encoding, animated for two nodes

In the original MeshGraphNets study, all MLPs have two hidden layers with ReLU activation and the output layer (except for that of the decoding MLP) is normalized by LayerNorm. To allow the model to train in a reasonable amount of time on Google Colab, here we define our MLPs to have a single hidden layer. Furthermore, we reduce the size of the hidden layers from 128 to 10. The MLP is created using a PyTorch Sequential container, as shown below.

```python
self.node_encoder = Sequential(Linear(input_dim_node , hidden_dim), ReLU(), Linear(hidden_dim, hidden_dim), LayerNorm(hidden_dim))
```

A similar encoding process is followed for the edge encoding. The edge features (the concatenated relative position vector and its norm) are inputted into a different MLP, εₘ to get the embeddings for each edge.

![](https://miro.medium.com/v2/resize:fit:480/1*ECq02XR3Nh7742M4qoHcfw.gif)

Fig.10 — Edge encoding, animated for two edges

The edge encoder is straightforwardly defined using a Sequential container as well.
```python
self.edge_encoder = Sequential(Linear( input_dim_edge , hidden_dim),ReLU(),Linear(hidden_dim, hidden_dim),LayerNorm(hidden_dim))
```
Given the initial encoded features of the graph, the GNN algorithm described at length in the “What is a GNN?” section above is ready to be executed!

**2. Processing _(Message Passing, Aggregation, Updating)_**

The processing layers of the MeshGraphNets is handled by a separate class, ProcessorLayer, which inherits from the PyG [MessagePassing](https://pytorch-geometric.readthedocs.io/en/latest/notes/create_gnn.html) base class, which streamlines computationally efficient message passing network logic. The entirety of the processing logic is animated in Fig.11.

![](https://miro.medium.com/v2/resize:fit:360/1*J9vKxZ5RNozAfg9XPSceqQ.gif)

Fig.11 — Edge and Node Processing steps

Firstly, the MLPs used in message passing and aggregation are defined below.
```python
# Note that the node and edge encoders both have the same hidden dimension
# size. This means that the input of the edge processor will always be
# three times the specified hidden dimension
# (input: adjacent node embeddings and self embeddings)
self.edge_mlp = Sequential(Linear( 3* in_channels , out_channels),ReLU(),Linear( out_channels, out_channels),LayerNorm(out_channels))

self.node_mlp = Sequential(Linear( 2* in_channels , out_channels),ReLU(),Linear( out_channels, out_channels),LayerNorm(out_channels))
```
The forward pass through a processor layer is defined below. We make use of the MessagePassing.propagate() function, which initiates the propagation of messages. Note the information that we pass to this function that we will require for message passing and aggregation: the COO-format connectivity matrix, edge_index, the node and feature embeddings, x and edge_attr, respectively. Each line of the forward function is described in detail below. The function returns updated node and edge embeddings, which are passed into the next processor layer for further processing or to the decoder.
```python
def forward(self, x, edge_index, edge_attr, size = None):
# Handle the pre and post-processing of node features/embeddings, as well as initiates message passing by calling the propagate function.

# Note that message passing and aggregation are handled by the propagate function, and the update x has shpae [node_num , in_channels] (node embeddings)
#        edge_index: [2, edge_num]
#        edge_attr: [E, in_channels]

        out, updated_edges = self.propagate(edge_index, x = x, edge_attr = edge_attr, size = size) # out has the shape of [E, out_channels]

        updated_nodes = torch.cat([x,out],dim=1)        # Complete the aggregation through self-aggregation

        updated_nodes = x + self.node_mlp(updated_nodes) # residual connection

        return updated_nodes, updated_edges
```

**_Message Passing_**

Message passing is animated in Fig.12. The message that each edge passed to neighboring nodes for node updating is a learned transformation through an MLP with a skip connection (fₘ) of the self edge embedding concatenated with the embeddings of the connecting nodes.

![](https://miro.medium.com/v2/resize:fit:360/1*RpoJV_au41GmTyhnlNWr0g.gif)

Fig.12 — MeshGraphNets message passing

In the message function, we can access the connecting node embeddings for each edge defined by the edge adjacency matrix edge_index passed to MessagePassing.propagate() by calling x_i and x_j. The node embeddings are stored in edge_attr. The three embeddings are then concatenated and passed through the edge_mlp (fₘ). The MessagePassing.propagate() method then facilitates the calling of the aggregation method, with an input of updated_edges.
```python
def message(self, x_i, x_j, edge_attr):

#        source_node: x_i has the shape of [E, in_channels]
#        target_node: x_j has the shape of [E, in_channels]
#        target_edge: edge_attr has the shape of [E, out_channels]

#        The messages that are passed are the raw embeddings. These are not processed.

		updated_edges=torch.cat([x_i, x_j, edge_attr], dim = 1) # tmp_emb has the shape of [E, 3 * in_channels]
        updated_edges=self.edge_mlp(updated_edges)+edge_attr

        return updated_edges
```

**_Aggregation_**

There are two aggregation steps in MeshGraphNets: the first is aggregating over the messages of the neighbors (i.e., the updated edge embeddings). This is done as a summation over the connected edges of each node, as illustrated in Fig.13.

![](https://miro.medium.com/v2/resize:fit:700/1*LCdKcJMmVIRq1k_a5yHWjg.png)

Fig.13 — MeshGraphNets aggregation over neighboring edges

The second aggregation step is to aggregate the aggregated messages from above with the self node embedding. This is illustrated in Fig.14.

![](https://miro.medium.com/v2/resize:fit:700/1*0PStkNX03moS6YTlbleiXg.png)

Fig.14 — MeshGraphNets aggregating neighbor embeddings with self node embedding

The first aggregation step is facilitated by the [torch_scatter.scatter](https://pytorch-scatter.readthedocs.io/en/latest/functions/scatter.html) method, which reduces the updated_edges input at the indices specified by edge_index[0,:] (i.e., the target update nodes specified in the edge connectivity matrix) using the method specified by reduce (i.e., ‘sum’). We put this all together below, and remember to pass the updated edge embeddings so that they can be used by the next processor layer.
```python
def aggregate(self, updated_edges, edge_index, dim_size = None):

#        First we aggregate from neighbors (i.e., adjacent nodes) through concatenation,
#       then we aggregate self message (from the edge itself). This is streamlined
#       into one operation here.
# The axis along which to index number of nodes.
        node_dim = 0

        out = torch_scatter.scatter(updated_edges, edge_index[0, :], dim=node_dim, reduce = 'sum')

        return out, updated_edges
```
The second step of aggregation, over the self node embedding, is done after propagate() returns, in the forward() function. This is a simple concatenation operation, as shown below.
```python
# Complete the aggregation through self-aggregation  
updated_nodes = torch.cat([x,out],dim=1)
```
# Complete the aggregation through self-aggregation  
updated_nodes = torch.cat([x,out],dim=1)

**_Updating_**

Updating is done by passing the final result from aggregation for each node into an MLP with a skip connection, fᵥ, as animated in Fig.15.

![](https://miro.medium.com/v2/resize:fit:360/1*ahPvlVWGO5mVXpw9aa3Wbw.gif)

Fig.15 — MeshGraphNets self embedding update

The update to the node embedding, as described above, is straightforwardly done at the end of the forward() function.
```python
# MLP with residual connection  
updated_nodes = x + self.node_mlp(updated_nodes)
```
# MLP with residual connection  
updated_nodes = x + self.node_mlp(updated_nodes)

**3. Decoding**

The final accelerations for each node _i,_ denoted by pᵢ, are found by passing the final node embeddings, vᵢ’, through the decoding MLP δᵥ. This is illustrated in Fig.16.

![](https://miro.medium.com/v2/resize:fit:480/1*3tB0lKRGL99pqA2Pfr1huQ.gif)

Fig.16 — MeshGraphNets decoding

The decoding MLP is straightforwardly defined below.
```python
self.decoder = Sequential(Linear(hidden_dim , hidden_dim),
ReLU(), Linear( hidden_dim, output_dim)
                                 )
```
Congratulations on making it this far! We have successfully learned how a GNN works in general and we used those concepts to code our very own MeshGraphNets! Let’s now train it and test how well our baby performs.

# Training MeshGraphNets

Given that our model was defined using a class that inherits from torch.nn.Module, the training pipeline is typical for training a neural network in PyTorch. For an in-depth explanation on how we set up the training and evaluation pipelines, please refer to the Colab.

The only “trick” lies in the loss function defined in the MeshGraphNets class:
```python
def loss(self, pred, inputs,mean_vec_y,std_vec_y):
        #Define the node types that we calculate loss for
        normal=torch.tensor(0)  #Normal-type nodes
        outflow=torch.tensor(5) #Outflow-type nodes
        
        #Get the loss mask for the nodes of the types we calculate loss for
        loss_mask=torch.logical_or((torch.argmax(inputs.x[:,2:],dim=1)==torch.tensor(0)),
                                   (torch.argmax(inputs.x[:,2:],dim=1)==torch.tensor(5)))

        #Normalize labels with dataset statistics
        labels = normalize(inputs.y,mean_vec_y,std_vec_y)
        
        #Find sum of square errors
        error=torch.sum((labels-pred)**2,axis=1)       
        
        #Root and mean the errors for the nodes we calculate loss for
        loss=torch.sqrt(torch.mean(error[loss_mask]))   
        
        return loss
```
We only calculate loss for and optimize over normal and outflow node types in the mesh: we don’t calculate flow acceleration error for walls, for example. As shown above, this is done by creating a mask for the nodes where a loss is defined. To stabilize training we also normalize the acceleration labels given dataset statistics that are passed during training.

# Evaluating MeshGraphNets

In the original MeshGraphNets study, models were trained over 10M training steps. To make this post accessibly replicable, we scaled this down considerably. These three Colab-runnable test results are given below, along with the performance of our best computing cluster-trained model for demonstrating the potential of MeshGraphNets.

**_Training set: 45 time steps, single trajectory (Colab)_**

Below, we see that MeshGraphNets can learn on 45 time steps fairly well without overfitting, but the test loss is very high, at 0.5 RMSE.

![](https://miro.medium.com/v2/resize:fit:391/1*ttMNdS3wiK54RdHcwDhAEA.png)

If we plot the time dynamics of the model, however, we notice that the prediction is imperceptibly similar to the ground truth! The error plot demonstrates only the slightest of differences, which are only further improved in the following tests.

![](https://miro.medium.com/v2/resize:fit:700/1*0L4VcegH2i9nnZZqHhCUqg.gif)

**_Training set: 85 time steps, singletrajectory (Colab)_**

With more training data, we observe even better generalization to unseen data. This is described at length in the next section.

![](https://miro.medium.com/v2/resize:fit:386/1*uXm1ndIsAxN1DVAhAJ8Rlg.png)

**_Training set: 45 time steps, 9 different trajectories (Colab)_**

Testing on two completely unseen trajectories gives results that are very close to the single trajectory case! This demonstrates that the model can generalize _across_ different graph structures (i.e., trajectories).

![](https://miro.medium.com/v2/resize:fit:389/1*x54LMXxxrpWlxaurLbMu9Q.png)

**_Training set: 420 time steps, single trajectory, full-size MLPs (cluster)_**

With 420 time steps for training and 100 for testing, the model demonstrates virtually perfect generalization to unseen data, and a test RMSE of less than 0.1!

![](https://miro.medium.com/v2/resize:fit:606/1*34_hREg2p9zsFCqa9F6J3Q.png)

The implications of these results are discussed in the next section.

# Going Big or Going Home

It’s time to address the elephant in the room. We initially motivated MeshGraphNets as a tool for computational scientists, who greatly prize accuracy and precision. With an accuracy of _only_ 90%, surely they won’t be impressed? Luckily for them, we have been able to demonstrate that MeshGraphNets scales well with more data, more GNN layers, and more expressive MLPs. More, more, more… In fact, the original DeepMind paper claims that we can get 99.98% accuracy with proper scaling!

We conducted a grid search on the computing cluster to find how MeshGraphNets scales. The varied parameters are shown in Table 1.

![](https://miro.medium.com/v2/resize:fit:700/1*uc17X90I76SffuvsclaRSg.png)

Table 1. parameter values used in the grid search for testing model scaling

Using the test loss as a response variable, we deployed a distance-based global sensitivity analysis [6] on the explored hyperparameters to study the impact and order of sensitivity of the three parameters analyzed. The results are illustrated in Fig.17: we find that the training set size is the most sensitive hyperparameter. This is expected, given that the original study trained on 10M time steps!

![](https://miro.medium.com/v2/resize:fit:700/1*IfhG77_KSoYZc2xdqjZXEQ.png)

Fig.17 — Global Sensitivity Analysis for scaling parameters. The rejection hypothesis criterion is based on the 95th percentile of the distance. The size of the training data is the most sensitive hyper parameter followed by the size of the hidden dimensions and the number of layers.

Since the training size is the most sensitive parameter, we show the interaction between the other two hyperparameters at the largest training size of 500 trajectories in Fig.18.

![](https://miro.medium.com/v2/resize:fit:700/1*Fh6rMGQgs5pgRRgSfXxmFw.png)

Fig.18 — Hyperparameter interactive plot. The orange rectangle illustrates changes in hidden dimension sizes corresponding to the bar plot on the right. The maroon rectangle illustrates changes in the number of layers, corresponding to the bar plot on the left.

It is clear that increasing the number of layers and/or the hidden dimension of the MLP increases the performance of the model. For our experiments, our performance was not bounded by the expressivity of the model or the data we have available, but rather by the compute time limits we have!

# Conclusion

It is well-established that mesh-based simulations are best suited for most practical computational science applications — from geophysics to mechanical engineering. Practical and truly general deep learning surrogate simulation models have yet to be demonstrated across most scientific domains, due in part to the restrictions of the simulation domain imposed by conventional deep learning models, such as CNNs. In this post, we introduced the idea of GNNs and explained in depth how to build a particular GNN model well-suited for scientific computing, MeshGraphNets.

We demonstrated that MeshGraphNets performs and generalizes very well on a COMSOL-generated incompressible fluid flow simulation dataset, and that it scales to even better performance with more expressive deep learning model design choices and more training data. Graph neural networks thus have the potential to provide the holy grail in surrogate modelling: ultra-fast _and_ ultra-accurate simulation results. We hope that this post and the code we provide is helpful for your learning, research, or work, and that it will help lead you to making amazing discoveries!

_Note that to keep this post as concise as possible, a lot of results and behind-the-scenes work had to be omitted. If you are interested in the tiniest of details, be sure to check out the Colab!_

| # References                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [1] Tang, Meng, Yimin Liu, and Louis J. Durlofsky. “A deep-learning-based surrogate model for data assimilation in dynamic subsurface flow problems.” _Journal of Computational Physics_ 413 (2020): 109456.[2] Bono, Gustavo, and Armando M. Awruch. “Numerical Study Between Structured And Unstructured Meshes For Euler And Navier-Stokes Equations.” _Mecanica Computacional_ 36 (2007): 3134–3146.<br>[3] Tsitsulin, Anton, et al. “Graph clustering with graph neural networks.” _arXiv preprint arXiv:2006.16904_ (2020).<br>[4] Liao, Renjie, et al. “Efficient graph generation with graph recurrent attention networks.” _arXiv preprint arXiv:1910.00760_ (2019).<br>[5] Pfaff, Tobias, et al. “Learning mesh-based simulation with graph networks.” _arXiv preprint arXiv:2010.03409_ (2020).<br>[6] Fenwick, D., C. Scheidt, and J. Caers. “Quantifying Asymmetric Parameter Interactions in Sensitivity Analysis: Application to Reservoir Modeling, Math. Geosci., 46, 493–511.” (2014). |
