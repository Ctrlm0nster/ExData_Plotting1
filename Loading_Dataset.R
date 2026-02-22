library(tidyverse)

# Load the dataset

url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
data_dir <- "data"
zip_file <- file.path(data_dir, basename(url))

# ---- Create data directory if needed ----
if (!dir.exists(data_dir)) {
  dir.create(data_dir, recursive = TRUE)
}

# ---- Download ZIP if not already present ----
if (!file.exists(zip_file)) {
  message("Downloading file...")
  download.file(url, zip_file, mode = "wb")
  message("Download complete.")
} else {
  message("ZIP file already exists. Skipping download.")
}

# ---- Unzip if not already extracted ----
# Check if contents already exist by listing zip contents
zip_contents <- unzip(zip_file, list = TRUE)$Name
extracted_paths <- file.path(data_dir, zip_contents)

if (!all(file.exists(extracted_paths))) {
  message("Unzipping file...")
  unzip(zip_file, exdir = data_dir)
  message("Unzip complete.")
} else {
  message("Files already extracted. Skipping unzip.")
}

# Load the data set
file_path <- "data/household_power_consumption.txt"

df <- read.csv2(file_path,
  header = TRUE,
  stringsAsFactors = FALSE,
  na.strings = "?"
)

# Formating date & time
df$Date <- as.Date(df$Date, format = "%d/%m/%Y")
df$Time <- format(strptime(df$Time, format = "%H:%M:%S"), "%H:%M:%S")
message("Data Loaded and Formatted Successfully")
# View(df)


# Subsetting the data to 2007-02-01 and 2007-02-02

subset_df <- df |>
  filter(Date == as.Date("2007-02-01") | Date == as.Date("2007-02-02"))
message("Data Subsetted Successfully")
