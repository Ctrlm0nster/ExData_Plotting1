# plot3.R
# Plot 3 – Energy sub‑metering comparison (Sub_metering_1, Sub_metering_2, Sub_metering_3)

# Load preprocessed subset data
source("scripts/load_data.R")
load("data/subset_data.RData")

# Open PNG device
png(filename = "images/engery_sub_metering.png", width = 480, height = 480)

# Plot the first sub‑metering
plot(subset_data$DateTime, subset_data$Sub_metering_1, type = "l",
     col = "black", xlab = "", ylab = "Energy sub metering")
# Add the other two sub‑meterings
lines(subset_data$DateTime, subset_data$Sub_metering_2, col = "red")
lines(subset_data$DateTime, subset_data$Sub_metering_3, col = "blue")
# Add legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = 1, bty = "n")

dev.off()
