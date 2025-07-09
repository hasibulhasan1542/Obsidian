### **Simulating a Methane Leak in OpenFOAM: Step-by-Step Guide**  
You can model methane (CH₄) dispersion using OpenFOAM by leveraging **compressible flow solvers** and **species transport equations**. Below is a structured approach, including setup, solver selection, boundary conditions, and post-processing.

---

## **1. Solver Selection**  
For methane dispersion, use:  
- **`rhoReactingBuoyantFoam`** (if combustion is considered)  
- **`buoyantSimpleFoam`** (steady-state)  
- **`scalarTransportFoam`** (simplified passive scalar transport)  

**Recommended**: `rhoReactingBuoyantFoam` (handles buoyancy and turbulence well).  

---

## **2. Case Setup**  
### **A. Geometry & Mesh**  
- Create a **3D domain** (e.g., tunnel, pipe, or open environment).  
- Use **blockMesh** or **snappyHexMesh** for structured/unstructured grids.  
- Refine mesh near the **leak source** and walls for accuracy.  

### **B. Boundary Conditions**  
| Patch Type | `p` (Pressure) | `U` (Velocity) | `T` (Temperature) | `CH₄` (Methane Mass Fraction) |  
|------------|----------------|----------------|--------------------|-------------------------------|  
| **Inlet (Leak Source)** | `fixedValue` (high pressure) | `fixedValue` (jet velocity) | `fixedValue` (300 K) | `fixedValue` (1.0) |  
| **Outlet** | `zeroGradient` | `inletOutlet` | `zeroGradient` | `zeroGradient` |  
| **Walls** | `noSlip` | `fixedFluxPressure` | `fixedValue` (adiabatic) | `zeroGradient` |  
| **Atmosphere** | `totalPressure` | `pressureInletOutletVelocity` | `fixedValue` (300 K) | `zeroGradient` |  

### **C. Physical Properties**  
- **`thermophysicalProperties`** (methane as a species):  
  ```  
  species ( CH4 O2 N2 CO2 );  
  ```  
- **`transportProperties`**:  
  ```  
  CH4 [0 0 0 0 0] 16.04; // Molar mass = 16.04 g/mol  
  ```  

---

## **3. Turbulence & Buoyancy Modeling**  
- **RANS (k-ε or k-ω SST)** for industrial cases.  
- **LES** for high-accuracy transient simulations.  
- Enable **buoyancy** in `constant/g`:  
  ```  
  buoyancy yes;  
  ```  

---

## **4. Running the Simulation**  
1. **Decompose the domain** (for parallel runs):  
   ```  
   decomposePar  
   ```  
2. **Run the solver**:  
   ```  
   mpirun -np 4 rhoReactingBuoyantFoam -parallel  
   ```  
3. **Reconstruct results**:  
   ```  
   reconstructPar  
   ```  

---

## **5. Post-Processing**  
- **ParaView**: Visualize methane concentration (`CH4`), velocity, and pressure.  
- **Quantitative Analysis**:  
  - Use **sampleDict** to extract data along lines/planes.  
  - Calculate **flammable zones** (5–15% CH₄ concentration).  

---

## **6. Validation & References**  
- Compare with **experimental data** (e.g., methane dispersion in tunnels).  
- **Key Papers**:  
  - *Journal of Hazardous Materials* ([Elsevier](https://www.sciencedirect.com/journal/journal-of-hazardous-materials))  
  - *Process Safety and Environmental Protection* ([Elsevier](https://www.sciencedirect.com/journal/process-safety-and-environmental-protection))  

---

### **Example Case Structure**  
```
methane_leak/  
├── 0/  
│   ├── p, U, T, CH4 (boundary conditions)  
├── constant/  
│   ├── thermophysicalProperties, turbulenceProperties  
├── system/  
│   ├── controlDict, fvSchemes, fvSolution  
```  

Would you like a **sample case setup** or help with **specific boundary conditions**? Let me know!