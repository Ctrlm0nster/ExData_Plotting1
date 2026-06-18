# load_data.R
# Helper script to load and preprocess the household power consumption data

# Path to the raw dataset (must be placed in the data folder)
raw_file <- "data/household_power_consumption.txt"

# Define column names
cols <- c("Date","Time","Global_active_power","Global_reactive_power",
          "Voltage","Global_intensity","Sub_metering_1",
          "Sub_metering_2","Sub_metering_3")

# Read data with appropriate NA handling ("?" denotes missing values)
# Using read.table for base R compatibility
power_data <- read.table(raw_file, header = TRUE, sep = ";",
                         na.strings = "?", col.names = cols,
                         stringsAsFactors = FALSE, comment.char = "")

# Combine Date and Time into a POSIXct datetime column
power_data$DateTime <- as.POSIXct(strptime(paste(power_data$Date, power_data$Time),
                                          "%d/%m/%Y %H:%M:%S"))

# Subset to the two days of interest: 2007-02-01 and 2007-02-02
start_dt <- as.POSIXct("2007-02-01")
end_dt   <- as.POSIXct("2007-02-03")  # exclusive upper bound
subset_data <- subset(power_data, DateTime >= start_dt & DateTime < end_dt)

# Remove the original Date and Time columns (optional, to keep data tidy)
subset_data$Date <- NULL
subset_data$Time <- NULL

# Save the processed subset for later scripts to load quickly (in data folder)
save(subset_data, file = "data/subset_data.RData")

