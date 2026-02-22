source(file = "Loading_Dataset.R")
head(df, n = 6)

df$Time <- format(strptime(df$Time, format = "%H:%M:%S"), "%H:%M:%S")

# Plotting the global active power vs time in line graph
subset_df$Global_active_power <- as.numeric(subset_df$Global_active_power)

subset_df |>
  ggplot(aes(x = DateTime, y = Global_active_power)) +
  geom_line() +
  scale_x_datetime(date_breaks = "1 day", date_labels = "%a") +
  labs(
    x = "",
    y = "Global Active Power (kilowatts)"
  ) +
  theme_classic() +
  theme(
    axis.title.y = element_text(size = 12)
  )

# Saving the plot in PNG format
ggsave("Plot2.png", units = "px", width = 1000, height = 1000, dpi = 200)
