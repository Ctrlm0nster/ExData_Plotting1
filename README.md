# ExData Plotting Assignment – Completed
## Overview
This repository reproduces the four required exploratory plots (plus an additional frequency histogram) from the **Individual household electric power consumption** dataset (UCI Machine Learning Repository). All scripts use base R graphics, generate 480 × 480 px PNG files, and are fully reproducible.
## Dataset
- **Source:** https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption
- **File:** `data/household_power_consumption.txt` (≈20 MB)
- **Missing values:** `?` (treated as `NA`)
## Project Files
- `scripts/load_data.R`
- `scripts/Combination_graph.R`
- `scripts/energy_sub_metering.R`
- `scripts/Global_active_power.R.R`
- `scripts/Voltage_vs_datetime.R`
- `scripts/global_active_power_vs_frequency.R`
## How to Run
1. **Install R** (>= 4.6.0) and ensure `Rscript` is on your PATH.
2. **Place the raw dataset** at `data/household_power_consumption.txt`.
3. **Create the subset data** (run once):
   ```
   Rscript scripts/load_data.R
   ```
4. **Generate the plots** (individually or all at once):
   ```
   Rscript scripts/Global_active_power.R.R
   Rscript scripts/Voltage_vs_datetime.R
   Rscript scripts/energy_sub_metering.R
   Rscript scripts/Combination_graph.R
   Rscript scripts/global_active_power_vs_frequency.R
   ```
   Each command creates a PNG in the `images/` folder.
## Plot Descriptions
| Plot | Description |
|------|-------------|
| `Global_active_power.png` | Global Active Power (kilowatts) over the two‑day period (line plot). |
| `Voltage_vs_datetime.png` | Voltage (volts) over the two‑day period (line plot). |
| `energy_sub_metering.png` | Energy sub‑metering 1‑3 (kitchen, laundry, water‑heater/AC) over time (multiple lines with legend). |
| `Combination_graph.png` | 2 × 2 panel: Global Active Power, Voltage, Energy sub‑metering, Global Reactive Power. |
| `global_active_power_vs_frequency.png` | Histogram (frequency) of Global Active Power values for the two days. |
## Reproducibility Checks
- **Memory estimate:** Full dataset ≈ 150 MB; the filtered subset uses < 5 MB.
- **Subset verification:** `load_data.R` filters to `2007‑02‑01` ≤ DateTime < `2007‑02‑03`.
- **Base R only:** No external graphics libraries required.
---
