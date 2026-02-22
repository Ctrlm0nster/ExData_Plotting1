source(file = "Loading_Dataset.R")
head(df, n = 6)

# Plotting


# Saving the plot in PNG format
ggsave("Plot1.png", units = "px", width = 1000, height = 1000, dpi = 200)
