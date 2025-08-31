# COPSE – Oxygen and photorespiration feedbacks for manuscript

This repository contains the version of the **COPSE (Carbon-Oxygen-Phosphorus-Sulfur-Evolution) model** used in the manuscript:

**"Combined effects of photorespiration and fire strongly regulate atmospheric oxygen levels"**  

*Rayanne Vitali*, Claire M. Belcher, Benjamin J.W. Mills, Andrew J. Watson — *Science Advances* (in review)



---

## Overview

This version of COPSE is a lightly updated version of the Tostevin & Mills (2020) Interface Focus version and includes modifications specifically for this manuscript:  

- Added switches in `COPSE_frontend.m` to turn on updated feedbacks.  
- Integrated **fire and photorespiration feedbacks** from LPJ-LMfire output in `COPSE_equations.m`.  

---

## Repository contents

| File                 | Description |
|----------------------|-------------|
| `COPSE_frontend.m`   | Main frontend script, runs the model and plots results. Use `COPSE_frontend(0)` to run. |
| `COPSE_equations.m`  | Contains flux and reservoir calculations (do not run directly). |
| `COPSE_sens.m`       | Runs sensitivity analysis and plots results. |
| `COPSE_plot.m`       | Called by frontend to generate plots. |
| `COPSE_plot_sens.m`  | Called by sensitivity analysis to generate plots. |
| `ox_analysis.m`      | Script to run different combinations of feedbacks. |
| `cpoint.m`           | Function to calculate compensation point. |
| `importfile.m`       | Script to import the new spreadsheet from LPJ-LMfire output. |
| `interp1qr.m`        | Linear interpolation routine. |


> **Note:** Requires MATLAB (tested in R2018a, Windows 10 x64). Run time ~5 seconds. No installation required. Large HPC outputs are not included.  

---

## Reproduction of paper results

- The manuscript uses COPSE with different combinations **fire and photorespiration feedbacks**, over the Phanerozoic, incorporating outputs from LPJ-LMfire.
- LPJ-LMfire generated forcing data is found in: `new_forcings/bgspreadsheet_updated.xlsx`
- Simulations can be reproduced by running `ox_analysis.m`

---

## Citation

**Original COPSE model:**  
Bergman, N. (2003). COPSE: Carbon-Oxygen-Phosphorus-Sulfur-Evolution model.  

**Base COPSE model (this version derived from):**  
Tostevin, R., & Mills, B.J.W. (2020). Reconciling proxy records and models of Earth's oxygenation during the Neoproterozoic and Palaeozoic. *Interface Focus*, 10(4), 20190137.  


**Updated COPSE version (this repository):**  
Version `v1.0-paper`, used for “Combined effects of photorespiration and fire strongly regulate atmospheric oxygen levels” (*Science Advances*, in review).

---

## Contact

For further details or questions about running the model, please contact the corresponding author: rvitali@envs.au.dk

