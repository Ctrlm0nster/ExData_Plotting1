# plot4.R
# Plot 4 – 2×2 panel of four base‑R plots:
#   1. Global Active Power vs DateTime
#   2. Voltage vs DateTime
#   3. Energy sub‑metering (1,2,3) vs DateTime
#   4. Global Reactive Power vs DateTime

# Load the preprocessed subset data
source("scripts/load_data.R")
load("data/subset_data.RData")

png(filename = "images/combination_graph.png", width = 480, height = 480)

# Set up a 2×2 layout
par(mfrow = c(2, 2))

# 1. Global Active Power
plot(subset_data$DateTime, subset_data$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power")

# 2. Voltage
plot(subset_data$DateTime, subset_data$Voltage, type = "l",
     xlab = "datetime", ylab = "Voltage")

# 3. Energy sub‑metering
plot(subset_data$DateTime, subset_data$Sub_metering_1, type = "l",
     col = "black", xlab = "", ylab = "Energy sub metering")
lines(subset_data$DateTime, subset_data$Sub_metering_2, col = "red")
lines(subset_data$DateTime, subset_data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = 1, bty = "n", cex = 0.8)

# 4. Global Reactive Power
plot(subset_data$DateTime, subset_data$Global_reactive_power, type = "l",
     xlab = "datetime", ylab = "Global Reactive Power")

dev.off()
