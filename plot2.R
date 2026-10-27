
# Plot 2: Global Active Power over Time

selected$DateTime <- strptime(
  paste(selected$Date, selected$Time),
  format = "%Y-%m-%d %H:%M:%S"
)

png("plot2.png", width = 480, height = 480)

plot(
  selected$DateTime,
  selected$Global_active_power,
  type = "l",
  xlab = "",
  ylab = "Global Active Power (kilowatts)"
)

dev.off()
