
|                                   | Toxic Gas | Flammable Gas |
| --------------------------------- | --------- | ------------- |
| Which one is more harmful?        |           |               |
| Which one is difficult to detect? |           |               |
| Which one uses expensive detector |           |               |
| List of Chemical compounds        |           |               |

<center><h1>Our Goal</h1></center>

1. Study 50 Journals, Books, Articles on Both Toxic Gas and Flammable Gas to make -
			1. List of Gases
			2. Rank of them based on damage
			3. Harmful to human or equipment
			4. Flammable or Toxic ?

> [!Note] Prompt
> 
> I am doing a research on detecting toxic and flammable gas by simulating in a space and then using the data to feed a ML to make a surrogate model.
> Now you tell me based on published books, journals the list of toxic and flammable gases which are -
\# difficult to detect 
\# requires an expensive sensor to detect
\# building surrogate model will be benificial

Great project — simulating gas dispersion and creating ML-based surrogate models is a smart, scalable way to avoid blowing things up in real life.

Based on published literature (e.g., chemical safety handbooks, sensor tech reviews, and environmental health journals), here’s a breakdown of toxic and flammable gases that meet your criteria:

---

## 🧪 Gases That Are **Difficult to Detect**, **Expensive to Sense**, and **Ideal for ML Surrogate Modeling**

|Gas Name|Toxic?|Flammable?|Why It’s Hard to Detect / Expensive / Good for Surrogates|
|---|---|---|---|
|**Phosgene (COCl₂)**|✅|❌|Extremely toxic at low ppm, colorless, odor not always detectable; sensors require high specificity, usually IR or electrochemical.|
|**Hydrogen Fluoride (HF)**|✅|❌|Reacts with moisture, corrodes sensors, needs expensive Teflon-lined or IR-based detection.|
|**Hydrogen Sulfide (H₂S)**|✅|✅|Detectable by smell at first, but olfactory fatigue kicks in; high accuracy sensors (electrochemical) are pricey.|
|**Acetylene (C₂H₂)**|❌|✅|Highly flammable, unstable under pressure; IR sensors are expensive and must avoid cross-sensitivity.|
|**Ammonia (NH₃)**|✅|✅|Strong odor, but at high levels is dangerous and corrosive; sensors degrade fast and need constant calibration.|
|**Ethylene Oxide (C₂H₄O)**|✅|✅|Toxic and carcinogenic, also flammable; requires photoionization or FTIR, both expensive.|
|**Chlorine (Cl₂)**|✅|❌|Heavy, settles in low spots, reacts with many materials; electrochemical sensors require specialized handling.|
|**Formaldehyde (CH₂O)**|✅|✅|Toxic, low ppm required for detection, often needs photoacoustic or advanced electrochemical sensors.|
|**Carbon Monoxide (CO)**|✅|✅|Colorless, odorless; cheap sensors exist but high-accuracy or industrial sensors are expensive and sensitive to drift.|
|**Silane (SiH₄)**|✅|✅|Spontaneously flammable in air; detection often via thermal conductivity sensors or expensive FTIR.|
|**Tetrahydrothiophene (THT)**|✅|✅|Sulfur-based, strong odor but tricky in mixtures; used in natural gas odorization but detection in low ppm is expensive.|

---

## 🧠 Why These Are Good for Surrogate Modeling:

- **Non-linear behavior in dispersion** (especially in confined or obstructed environments).
    
- **Time-sensitive decay or reactions** (e.g., H₂S, HF reacting with moisture).
    
- **Sparse sensor placement** creates gaps that ML can fill.
    
- **Sim-to-real transfer is feasible**, as governing equations (Navier–Stokes + diffusion–reaction) are known.
    
- **Training data is expensive or dangerous to collect physically**, making simulation + ML a goldmine.
    

---

## 🔬 Notably Challenging Detection Cases in Literature:

- _“Toxic Gas Detection Using IoT and Machine Learning” (Sensors, MDPI, 2020)_ mentions that **H₂S, NH₃, and CO** are top candidates for surrogate modeling due to their industrial relevance and sensor limitations.
    
- _“Infrared Spectroscopy for Gas Detection”_ shows **phosgene and ethylene oxide** as extremely challenging due to overlapping IR signatures and sensor cost.
    
- _“Machine Learning for Hazardous Gas Detection: A Review” (IEEE Access, 2021)_ emphasizes using ML surrogates for gases like **formaldehyde and HF** due to rare event data and expensive field tests.
    

---

If you’re doing CFD simulation + ML, the following gases would give your research high impact and real-world value:

- **H₂S**: classic in oil/gas/petrochem, hard to simulate due to layering effects in still air.
    
- **Phosgene**: lethal in low ppm, modeling helps in accidental release scenarios.
    
- **NH₃ or Cl₂**: used in agriculture/industry, hazardous leaks are catastrophic.
    

Want help picking one or two gases to focus your simulation on (based on your application domain)?


<center><h1>Case for a Subway Station</h1></center>


| Gas        | Source                                            | Comment   |
| ---------- | ------------------------------------------------- | --------- |
| CH4        | Underground pipeline, deposit organic matters     | flammable |
| C2H4       | Underground pipeline, Railway leak                | flammable |
| CO         | Combustion, Friction, Burning Plastic/Fossil Fuel | Toxic     |
| NO2        | Train Exhaust, Electric arc                       | Toxic     |
| C3H8, C2H4 | Fuel                                              | flammable |

<center><h3>Top 20 Toxic Gases</h3></center>

| #   | Gas Name                    | Common Source / Use                      | Primary Effect                              |
| --- | --------------------------- | ---------------------------------------- | ------------------------------------------- |
| 1   | **Hydrogen Sulfide (H₂S)**  | Sewage, oil refining, biogas plants      | Respiratory paralysis, eye/nerve damage     |
| 2   | **Carbon Monoxide (CO)**    | Incomplete combustion, vehicles, fires   | Binds hemoglobin → asphyxiation             |
| 3   | **Nitrogen Dioxide (NO₂)**  | Engines, fertilizers, welding            | Lung inflammation, respiratory failure      |
| 4   | **Ammonia (NH₃)**           | Refrigeration, fertilizers, livestock    | Corrosive to lungs, throat, skin            |
| 5   | **Chlorine (Cl₂)**          | Water treatment, chemical plants         | Pulmonary edema, airway burns               |
| 6   | **Phosgene (COCl₂)**        | Plastic production, WWI chemical weapon  | Delayed lung damage, suffocation            |
| 7   | **Sulfur Dioxide (SO₂)**    | Coal plants, metal smelting              | Asthma trigger, mucous membrane damage      |
| 8   | **Ozone (O₃)**              | Electrical equipment, smog               | Lung tissue damage, reduces lung function   |
| 9   | **Hydrogen Cyanide (HCN)**  | Combustion of plastics, mining           | Inhibits cellular respiration → fast death  |
| 10  | **Formaldehyde (CH₂O)**     | Building materials, disinfectants        | Carcinogen, eye/lung irritation             |
| 11  | **Benzene (C₆H₆)**          | Fuels, solvents, cigarettes              | Bone marrow damage, leukemia risk           |
| 12  | **Toluene (C₇H₈)**          | Paints, adhesives, solvents              | CNS depression, liver damage                |
| 13  | **Xylene (C₈H₁₀)**          | Solvents, petrochemicals                 | Dizziness, kidney/liver toxicity            |
| 14  | **Ethylene Oxide (C₂H₄O)**  | Sterilants, plastics                     | Carcinogenic, reproductive toxicity         |
| 15  | **Arsine (AsH₃)**           | Semiconductor industry                   | Hemolysis (RBC destruction), kidney failure |
| 16  | **Silane (SiH₄)**           | Semiconductor manufacturing              | Toxic, explosive, pulmonary irritation      |
| 17  | **Diborane (B₂H₆)**         | Rocket fuels, reducing agents            | Severe lung/brain effects                   |
| 18  | **Acetylene (C₂H₂)**        | Welding, gas cylinders                   | Neurotoxic in high concentrations           |
| 19  | **Nitric Oxide (NO)**       | High-temp combustion, nitric acid plants | Lung inflammation, vascular toxicity        |
| 20  | **Vinyl Chloride (C₂H₃Cl)** | PVC manufacturing                        | Liver cancer, CNS effects                   |

<center><h3>Top 20 Flammable Gases</h3></center>

| #   | Gas Name                    | Lower Explosive Limit (LEL) | Common Sources / Use              | Fire/Explosion Hazard                         |
| --- | --------------------------- | --------------------------- | --------------------------------- | --------------------------------------------- |
| 1   | **Hydrogen (H₂)**           | 4.0%                        | Fuel cells, refining, electronics | Extremely flammable, invisible flame          |
| 2   | **Methane (CH₄)**           | 5.0%                        | Natural gas, landfills, mines     | Underground explosions, suffocation risk      |
| 3   | ~~**Ethylene (C₂H₄)**~~     | ~~2.7%~~                    | ~~Petrochemicals, plastics~~      | ~~Fire & reactive hazard~~                    |
| 4   | ~~**Acetylene (C₂H₂)**~~    | ~~2.5%~~                    | ~~Welding, chemical synthesis~~   | ~~Explosive under pressure, highly unstable~~ |
| 5   | **Propane (C₃H₈)**          | 2.1%                        | LPG cylinders, heating, fuel      | Heavy gas, pools in low areas                 |
| 6   | ~~**Butane (C₄H₁₀)**~~      | ~~1.8%~~                    | ~~Portable stoves, lighters~~     | ~~Dense gas, asphyxiant in basements~~        |
| 7   | ~~**Ethane (C₂H₆)**~~       | ~~3.0%~~                    | ~~Natural gas, refrigeration~~    | ~~Colorless, odorless, explosion hazard~~     |
| 8   | **Ammonia (NH₃)**           | 15.0%                       | Fertilizer, refrigeration         | Toxic and flammable in air                    |
| 9   | **Hydrogen Sulfide (H₂S)**  | 4.0%                        | Oil refineries, sewers            | Toxic + explosive—double threat               |
| 10  | **Carbon Monoxide (CO)**    | 12.5%                       | Incomplete combustion             | Invisible, deadly, flammable                  |
| 11  | ~~**Formaldehyde (CH₂O)**~~     | ~~7.0%~~                        | ~~Disinfectants, lab chemicals~~      | ~~Toxic + fire hazard~~                           |
| 12  | ~~**Methylamine (CH₃NH₂)**~~    | ~~4.9%~~                        | ~~Chemical industry, pharma~~         | ~~Toxic + explosive~~                             |
| 13  | ~~**Dimethyl Ether (DME)**~~    | ~~3.4%~~                        | ~~Aerosol propellants, LPG blends~~   | ~~High volatility, flash fire risk~~              |
| 14  | ~~**Isobutane (C₄H₁₀)**~~       | ~~1.8%~~                        | ~~Refrigerants, fuel blends~~         | ~~Pools in low spaces, explosion risk~~           |
| 15  | ~~**Vinyl Chloride (C₂H₃Cl)**~~ | ~~3.6%~~                        | ~~PVC production~~                    | ~~Carcinogen + flammable~~                        |
| 16  | ~~**Acrolein (C₃H₄O)**~~        | ~~2.8%~~                        | ~~Combustion byproduct~~              | ~~Highly flammable, severe respiratory toxin~~    |
| 17  | ~~**Styrene (C₈H₈)**~~          | ~~1.1%~~                        | ~~Plastics, resin plants~~            | ~~Flammable and toxic~~                           |
| 18  | ~~**Tetrahydrofuran (THF)**~~   | ~~2.0%~~                        | ~~Solvents, labs~~                    | ~~Volatile, forms explosive peroxides~~           |
| 19  | ~~**Cyclopropane (C₃H₆)**~~     | ~~2.4%~~                        | ~~Anesthetic gas (historical)~~       | ~~Highly flammable, explosive in air~~            |
| 20  | ~~**Silane (SiH₄)**~~           | ~~1.4%~~                        | ~~Semiconductor industry~~            | ~~Pyrophoric—ignites spontaneously in air~~       |



## 🔍 So, how _likely_ is H₂S leakage in subways?

### ⚠️ **Not common... but very possible.**

It depends on **local geology**, **infrastructure age**, and **connectivity with other systems**. Here's the breakdown:

---

## 🧾 Realistic Sources of H₂S in Subway Environments:

### 1. **Sewer System Backflow / Cross-Connection**

- Subways and sewers often **share tunnels, vent shafts, or pressure zones**.
    
- H₂S is a **common sewer gas**, especially where **organic waste decomposes anaerobically**.
    
- Leaks or ventilation failure → subway space contamination.
    

> **Example:** NYC MTA reports multiple odor complaints linked to sewer gas seepage.

---

### 2. **Underground Utility Tunnels with Corroded Pipes**

- **Corroding iron or steel in the presence of sulfate-reducing bacteria** → H₂S.
    
- Maintenance vaults and pump rooms have had **documented H₂S incidents**.
    

---

### 3. **Geothermal or Natural Gas Migration (Region Dependent)**

- Some subway systems (e.g., Istanbul, parts of Japan) are built in **geothermal-active zones**.
    
- Natural fissures can **emit low levels of H₂S**, especially after earthquakes or drilling.
    

> In some **Chinese subway tunnels**, H₂S intrusion from surrounding soil/water has been documented in environmental safety studies.

---

### 4. **Industrial/Refinery Nearby**

- If subways run under or near **industrial zones** (refineries, chemical plants), a leak from **process pipelines** could migrate underground via utility corridors.
    

---

### 5. **Maintenance Chemicals Gone Wrong**

- Some degreasers, cleaning agents, and wastewater treatments **generate H₂S as byproducts** when mixed improperly.
    

> There are OSHA reports of subway janitorial staff triggering H₂S releases this way.


| Gas                        | OpenFOAM Compatibility     | Notes                                                                                                        |
| -------------------------- | -------------------------- | ------------------------------------------------------------------------------------------------------------ |
| **Hydrogen (H₂)**          | ✅ Fully supported          | Used in many OpenFOAM combustion/dispersion studies; works with `rhoReactingFoam`, `reactingFoam`            |
| **Ammonia (NH₃)**          | ✅ Supported (customizable) | No built-in template, but can define in `thermophysicalProperties`; toxic + flammable modeling possible      |
| **Carbon Monoxide (CO)**   | ✅ Fully supported          | Common in combustion studies; usable in dispersion or reaction mode                                          |
| **Propane (C₃H₈)**         | ✅ Fully supported          | Built-in in `reactingFoam` examples; often used in fire/explosion simulation                                 |
| **Hydrogen Sulfide (H₂S)** | ⚠️ **Partially supported** | Needs **manual setup**: define transport, reaction properties yourself; no built-in species, but it's doable |
