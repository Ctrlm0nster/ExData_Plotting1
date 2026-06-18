# ExData Plotting Project

This repository contains R scripts and generated PNG files for the **Individual household electric power consumption** dataset (UCI Machine Learning Repository).

## Files
- `load_data.R` – Helper to read the raw data, handle missing values, convert dates, and subset to 2007‑02‑01 and 2007‑02‑02.
- `plot1.R` – Global Active Power over time (line plot).
- `plot2.R` – Voltage over time (line plot).
- `plot3.R` – Energy sub‑metering comparison (multiple line plot).
- `plot4.R` – 2×2 panel of four base‑R plots (global active power, voltage, energy sub‑metering, and global reactive power).
- `build_all.R` – Convenience script to generate all four plots in one run.
- `.gitignore` – Excludes the large raw dataset and generated PNGs.
- `README.md` – This file.

## Usage
1. Place the original dataset file `household_power_consumption.txt` (the 20 MB text file) in the repository root.
2. Run the scripts individually, e.g.:
   ```
   Rscript plot1.R
   ```
   This creates `plot1.png` (480×480 px).
3. Or generate all plots at once:
   ```
   Rscript build_all.R
   ```

All PNG files are created with width = 480 and height = 480 pixels using base R graphics.
