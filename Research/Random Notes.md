1. blockMeshDict automatically generates internal and faces patches.
2. So, if simulate something that is inside the box, no need to worry.
3. `inletOutlet` prevents unrealistic temperature spikes during backflow by imposing a physically reasonable value (293 K).
4. for `U` outlet should be 'inletOutlet' type and inletValue '$internalField' and value  '\$internalField' 
5. for `T` outlet should be 'inletOutlet' type and inletValue '$internalField' and value  '\$internalField' 
6. for `p` 
7. In nacaAirfoil, they declared airfoil as wall;
8. We can simply mention all faces - though some faces are in a separate stl file in triSurface folder - in boundary conditions.
---
In OpenFOAM's **counterflow flame tutorials** (like `counterFlowFlame2D`), the `air` and `fuel` patches are **both inlets**, but they serve distinct roles in the combustion simulation. Here's the key clarification:

---

### **1. Both Are Inlets, But With Different Properties**
| Patch      | Role           | Typical Boundary Conditions                                                                                                                                          |
| ---------- | -------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **`air`**  | Oxidizer inlet | - Velocity: `fixedValue` or `flowRateInletVelocity` <br> - Temperature: `fixedValue` (e.g., 300 K) <br> - Species: High `O2` concentration (e.g., 23% mass fraction) |
| **`fuel`** | Fuel inlet     | - Velocity: `fixedValue` or `flowRateInletVelocity` <br> - Temperature: `fixedValue` (e.g., 300 K) <br> - Species: High fuel concentration (e.g., `CH4` for methane) |
