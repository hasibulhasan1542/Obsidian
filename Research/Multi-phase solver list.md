
#### List of Solver of OpenFoam 2412

| **Solver Name**                    | **Description**                                                                                                                                    |
| ---------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| `cavitatingDyMFoam`                | Transient cavitation solver using the homogeneous equilibrium model; supports mesh motion and topology changes.                                    |
| `cavitatingFoam`                   | Transient cavitation solver using the homogeneous equilibrium model.                                                                               |
| `compressibleInterFoam`            | Solver for two compressible, non-isothermal immiscible fluids using VOF.                                                                           |
| `overCompressibleInterDyMFoam`     | Solver for two compressible, non-isothermal immiscible fluids using VOF, with mesh motion and topology changes.                                    |
| `compressibleMultiphaseInterFoam`  | Solver for N compressible, non-isothermal immiscible fluids using VOF.                                                                             |
| `driftFluxFoam`                    | Solver for two incompressible fluids using the drift-flux approximation.                                                                           |
| `icoReactingMultiphaseInterFoam`   | Solver for N incompressible, non-isothermal immiscible fluids with phase change, using VOF.                                                        |
| `interCondensatingEvaporatingFoam` | Solver for two incompressible, non-isothermal immiscible fluids with phase change (evaporation-condensation), using VOF.                           |
| `interFoam`                        | Solver for two incompressible, isothermal immiscible fluids using VOF; supports mesh motion and topology changes.                                  |
| `interMixingFoam`                  | Solver for 3 incompressible fluids (two miscible), using VOF; supports mesh motion and topology changes.                                           |
| `overInterDyMFoam`                 | Solver for two incompressible, isothermal immiscible fluids using VOF, with mesh motion and topology changes.                                      |
| `interIsoFoam`                     | Solver derived from `interFoam` using isoAdvector interface capturing; supports mesh motion and topology changes.                                  |
| `interPhaseChangeDyMFoam`          | Solver for two incompressible, isothermal immiscible fluids with phase change (e.g., cavitation), using VOF with mesh motion and topology changes. |
| `interPhaseChangeFoam`             | Solver for two incompressible, isothermal immiscible fluids with phase change (e.g., cavitation), using VOF.                                       |
| `overInterPhaseChangeDyMFoam`      | Solver for two incompressible, isothermal immiscible fluids with phase change using VOF and overset mesh motion.                                   |
| `multiphaseEulerFoam`              | Solver for multiple compressible fluid phases including heat transfer.                                                                             |
| `multiphaseInterFoam`              | Solver for N incompressible fluids, with surface-tension and contact-angle effects for each phase.                                                 |
| `potentialFreeSurfaceDyMFoam`      | Incompressible Navier-Stokes solver with wave height field, supporting mesh motion and topology changes.                                           |
| `potentialFreeSurfaceFoam`         | Incompressible Navier-Stokes solver with wave height field for free-surface approximation.                                                         |
| `reactingTwoPhaseEulerFoam`        | Solver for two compressible phases with common pressure, optional species and reactions; supports different phase transfer models.                 |
| `twoLiquidMixingFoam`              | Solver for mixing two incompressible fluids.                                                                                                       |
| `twoPhaseEulerFoam`                | Solver for two compressible fluid phases (one dispersed); supports heat transfer.                                                                  |

For simulating **hydrogen gas leakage from a hole into ambient air** with **buoyancy effects** and **multi-fluid mixing**, the best OpenFOAM solvers depend on:

- **Gas behavior**: Hydrogen and air are **compressible** and **miscible** gases.
- **Buoyancy**: The simulation must account for **density differences** and resulting **natural convection**.
- **Multi-component** mixture: You need a solver that handles **gas species transport** (e.g., hydrogen diffusing in air).
    
---
### ✅ **Recommended Solver: `reactingFoam`**

This is the most suitable general-purpose solver for your case. Here’s why:

| Feature                     | Status in `reactingFoam`                      |
| --------------------------- | --------------------------------------------- |
| Compressible flow           | ✅ Yes                                         |
| Buoyancy effects            | ✅ Yes (via gravity + rho*g)                   |
| Multi-species gas transport | ✅ Yes                                         |
| Diffusion between gases     | ✅ Yes                                         |
| Chemical reactions          | ✅ Optional (can disable)                      |
| Turbulence modeling         | ✅ Yes                                         |
| Steady or transient         | ✅ Transient (also steady via `rhoSimpleFoam`) |

---

### 🛠️ How to Use `reactingFoam` for Hydrogen Leak Simulation

#### **Step 1: Setup Case**

Use the command:

```bash
foamCloneCase $FOAM_TUTORIALS/combustion/reactingFoam/laminar/counterFlowFlame2D
```

Then adjust for your geometry and boundary conditions.

#### **Step 2: Geometry and Mesh**

- Create your **geometry** in `.stl` or `.obj` format.
    
- Use `snappyHexMesh` or `blockMesh` to mesh it.
    
- Define the **leak location** as a boundary patch.
    

#### **Step 3: Select Thermodynamics and Species**

Edit `constant/thermophysicalProperties` and `constant/chemkin` or `reactions` files:

- Define air and hydrogen as species.
    
- Use a **non-reacting** mixture if no combustion is needed.
    

#### **Step 4: Add Gravity**

In `constant/g`, set:

```plaintext
dimensions [0 1 -2 0 0 0 0];
value (0 -9.81 0);
```

#### **Step 5: Initial and Boundary Conditions**

- `0/T`, `0/p`, `0/U`, `0/YH2`, `0/YO2`, `0/YN2` for species fractions and flow.
    
- Inlet (leak): high-pressure hydrogen
    
- Outlet: ambient pressure
    
- Walls: no-slip
    
- Top: pressure outlet or open
    

#### **Step 6: Run Simulation**

```bash
reactingFoam
```

---

### ❗ Alternative Solvers (if reactingFoam is too heavy)

| Solver                | When to use                                                                                   |
| --------------------- | --------------------------------------------------------------------------------------------- |
| `rhoReactingFoam`     | For steady-state compressible reacting or inert mixtures                                      |
| ~~`rhoBuoyantFoam`~~  | ~~If only buoyant flow is needed with a single compressible gas~~                             |
| ~~`rhoPimpleFoam`~~   | ~~For general compressible flows, less suited for multi-species~~                             |
| ~~`multiphaseEulerFoam`~~ | ~~For non-miscible compressible phases (e.g. gas-liquid systems) – not ideal for gas-gas mixing~~ |

Would you like a minimal example case setup for hydrogen-air diffusion with buoyancy using `reactingFoam`?

|Solver|Buoyancy|Multi-species|Reactions|Miscibility|Suitable for H₂-Air Leak|
|---|---|---|---|---|---|
|`rhoPimpleFoam`|❌|❌|❌|N/A|🚫 No (single fluid only)|
|`reactingFoam`|✅|✅|✅|✅|✅ Yes|
|`rhoReactingFoam`|❌|✅|✅|✅|⚠️ Yes, but no buoyancy|
|`rhoReactingBuoyantFoam`|✅|✅|✅|✅|✅ Best Choice ✅|
|`multiphaseEulerFoam`|✅|✅|✅|❌ (immiscible)|🚫 No|