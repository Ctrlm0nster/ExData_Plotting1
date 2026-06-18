## plot1.R - Global Active Power over Time

# Load required packages (none required for base plotting)

# Read the data (assumes the dataset file 'household_power_consumption.txt' is in the working directory)
# Use ';' as separator, header=TRUE, and treat '?' as NA

data <- read.table("data/household_power_consumption.txt",
                   header = TRUE,
                   sep = ';',
                   na.strings = '?',
                   stringsAsFactors = FALSE)

# Convert Date and Time to POSIXct datetime

data$DateTime <- as.POSIXct(strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S'))

# Subset data for the dates 2007-02-01 and 2007-02-02

target_dates <- as.Date(c('2007-02-01', '2007-02-02'))
subset_data <- data[as.Date(data$DateTime) %in% target_dates, ]

# Open PNG device
png('images/Global_active_power.png', width = 480, height = 480)

# Plot Global Active Power vs datetime
plot(subset_data$DateTime, subset_data$Global_active_power,
     type='l',
     xlab='',
     ylab='Global Active Power (kilowatts)')

# Close device
dev.off()
