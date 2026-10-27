
# Plot 4: Four Time Series Plots

png("plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2), mar = c(4, 4, 2, 1))

plot(
  selected$DateTime,
  selected$Global_active_power,
  type = "l",
  xlab = "",
  ylab = "Global Active Power"
)

plot(
  selected$DateTime,
  selected$Voltage,
  type = "l",
  xlab = "datetime",
  ylab = "Voltage"
)

plot(
  selected$DateTime,
  selected$Sub_metering_1,
  type = "l",
  xlab = "",
  ylab = "Energy sub metering"
)

lines(selected$DateTime, selected$Sub_metering_2, col = "red")
lines(selected$DateTime, selected$Sub_metering_3, col = "blue")

plot(
  selected$DateTime,
  selected$Global_reactive_power,
  type = "l",
  xlab = "datetime",
  ylab = "Global_reactive_power"
)

dev.off()
