# plot2.R
# This script creates Plot 2: Voltage over time.

# Load the preprocessed data
source("./scripts/load_data.R")
load("data/subset_data.RData")

# Open PNG device
png(filename = "images/Voltage_vs_datetime.png", width = 480, height = 480)

# Plot Voltage vs DateTime
plot(subset_data$DateTime, subset_data$Voltage, type = "l",
     xlab = "",
     ylab = "Voltage (volts)")

dev.off()
