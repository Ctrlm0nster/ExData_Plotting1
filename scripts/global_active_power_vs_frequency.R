# global_active_power_vs_frequency.R
# This script creates a histogram (frequency plot) of Global Active Power
# for the two-day subset of the household power consumption dataset.

# Load the data preprocessing script (located in the scripts folder)
source(file.path("scripts", "load_data.R"))

# Load the preprocessed subset data (saved in the data folder)
load(file.path("data", "subset_data.RData"))

# Save the plot to the images folder
png(filename = file.path("images", "global_active_power_vs_frequency.png"), width = 480, height = 480)

# Create histogram of Global Active Power
hist(subset_data$Global_active_power,
     col = "steelblue",
     main = "Global Active Power",
     xlab = "Kilowatts",
     ylab = "Frequency")

dev.off()
