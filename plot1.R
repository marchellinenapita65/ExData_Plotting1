
# Course Project 1: Exploratory Data Analysis
# Plot 1: Global Active Power
# Author: Marchelline Napita Hutapea
#
# This script reads the household electric power consumption dataset,
# selects observations from February 1 and 2, 2007, and creates a
# histogram of global active power.
#
# The output is saved as plot1.png with dimensions of 480 x 480 pixels.

# Read the household power consumption dataset.
# Missing values are represented by "?" in the original dataset.
data <- read.table(
  "household_power_consumption.txt",
  header = TRUE,
  sep = ";",
  na.strings = "?",
  stringsAsFactors = FALSE
)

# Convert the Date column to Date format.
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

# Select observations for February 1 and 2, 2007.
selected <- subset(
  data,
  Date >= as.Date("2007-02-01") &
    Date <= as.Date("2007-02-02")
)

# Open a PNG graphics device to save the plot.
png("plot1.png", width = 480, height = 480)

# Create a histogram of global active power.
hist(
  selected$Global_active_power,
  col = "red",
  main = "Global Active Power",
  xlab = "Global Active Power (kilowatts)"
)

# Close the graphics device and save the PNG file.
dev.off()