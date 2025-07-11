
>[!Important] Obstacle 
>For an obstacle, which is a solid, stationary, and impermeable surface, the patch `g` should be defined as a **`wall`**.

Here is a breakdown of what the boundary conditions for your patch `g` should look like in the files within your `0` directory for a typical incompressible, turbulent simulation.

---

### Summary Table

| Field File (`0/...`) | Physical Condition on Obstacle | Recommended Boundary Condition |
| :--- | :--- | :--- |
| **`U`** (Velocity) | No-slip (fluid sticks to the wall) | `fixedValue` with a value of `(0 0 0)` |
| **`p`** (Pressure) or **`p_rgh`** | Pressure gradient is zero | `zeroGradient` |
| **`k`** (Turb. Kinetic Energy) | Wall function applied | `kqRWallFunction` |
| **`epsilon`** (Turb. Dissipation Rate) | Wall function applied | `epsilonWallFunction` |
| **`omega`** (Specific Diss. Rate) | Wall function applied | `omegaWallFunction` |
| **`nu_t`** (Turb. Viscosity) | Wall function applied | `nutkWallFunction` |
| **`T`** (Temperature) | Adiabatic (insulated) wall | `zeroGradient` |
| **`T`** (Temperature) | Fixed temperature wall | `fixedValue` with a specific temperature |

---

### Detailed Example

Let's assume your obstacle patch is named `g`. Here is what you would add to the `boundaryField` section of each relevant file in the `0` directory.

#### 1. Velocity (`0/U`)

The obstacle is a solid wall, so the fluid velocity at its surface must be zero. This is the "no-slip" condition.

```cpp
g
{
    type            fixedValue;
    value           uniform (0 0 0);
}
```

#### 2. Pressure (`0/p` or `0/p_rgh`)

We don't know the pressure value on the wall beforehand; the solver calculates it. The standard condition assumes that the pressure gradient perpendicular to the wall is zero.

```cpp
g
{
    type            zeroGradient;
}
```

#### 3. Turbulence Fields (e.g., for k-epsilon model)

For turbulent flows, you need to provide boundary conditions for the turbulence fields like `k` (turbulent kinetic energy) and `epsilon` (dissipation rate). We use **wall functions** to model the complex flow behavior in the near-wall region without needing an extremely fine mesh right up to the surface.

**In `0/k`:**

```cpp
g
{
    type            kqRWallFunction;
    value           uniform 0.1; // A small initial value, the BC calculates the rest
}
```

**In `0/epsilon`:**

```cpp
g
{
    type            epsilonWallFunction;
    value           uniform 0.1; // A small initial value, the BC calculates the rest
}
```
*Note: If you were using a k-omega based model, you would use `omegaWallFunction` in the `0/omega` file.*

#### 4. Temperature (`0/T`) - (If you are running a heat transfer simulation)

You have two common choices for an obstacle's thermal condition.

**Option A: The wall is insulated (adiabatic).** No heat flows through it.

```cpp
g
{
    type            zeroGradient;
}
```

**Option B: The wall is held at a constant temperature.** (e.g., a heated or cooled obstacle). Let's say 400 Kelvin.

```cpp
g
{
    type            fixedValue;
    value           uniform 400;
}
```

### Very Important Prerequisite: `constant/polyMesh/boundary`

Before the solver even looks at the `0` directory, the mesh itself must know that `g` is a physical wall. You must ensure that in your `constant/polyMesh/boundary` file, the entry for `g` has its `type` set to **`wall`**.

Your meshing process (`blockMesh`, `snappyHexMesh`, or importing a mesh) must generate this entry. It will look something like this:

```cpp
// ... other patches like inlet, outlet ...

g
{
    type            wall; // <-- This is CRITICAL
    inGroups        1(wall);
    nFaces          1234;  // Number of faces, generated automatically
    startFace       56789; // Starting face index, generated automatically
}

// ... other patches ...
```

If the `type` here is set to `patch`, the solver will treat it as an internal connection between mesh regions, which is incorrect for an obstacle. It **must be `wall`**.