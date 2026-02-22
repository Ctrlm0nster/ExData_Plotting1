source(file = "Loading_Dataset.R")
head(df, n = 6)

subset_df$Global_active_power <- as.numeric(subset_df$Global_active_power)

# Plotting Global Active power, Histogram
subset_df |>
  filter(!is.na(Global_active_power) & Global_active_power > 0) |>
  ggplot(aes(x = Global_active_power)) +
  geom_histogram(binwidth = 0.5, fill = "red", color = "black") +
  scale_x_continuous(breaks = seq(0, 6, by = 2), limits = c(0.2, 7)) +
  scale_y_continuous(breaks = seq(0, 1200, by = 200)) +
  labs(
    title = "Global Active Power Distribution",
    x = "Global Active Power (kilowatts)",
    y = "Frequency"
  ) +
  theme_classic() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 14, face = "bold"),
    axis.title.x = element_text(size = 12),
    axis.title.y = element_text(size = 12)
  )

# Saving the plot in PNG format
ggsave("Plot1.png", units = "px", width = 1000, height = 1000, dpi = 200)
