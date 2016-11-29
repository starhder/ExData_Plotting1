source("prepare_data.R")

loaddata()

# Plot part
png(file = "plot4.png", width = 480, height = 480)

par(mfrow=c(2,2))

# Plot 1
plot(dat$DateTime, dat$Global_active_power, 
     type = "l", 
     xlab = "", ylab = "Global Active Power (kilowatts)")

# Plot 2
plot(dat$DateTime, dat$Voltage, 
     type = "l", 
     xlab = "datetime", 
     ylab = "voltage")

# Plot 3
plot(dat$DateTime, dat$Sub_metering_1, 
     type = "n", 
     xlab = "", ylab = "Energy sub metering")
lines(dat$DateTime, dat$Sub_metering_1, col = "black")
lines(dat$DateTime, dat$Sub_metering_2, col = "red")
lines(dat$DateTime, dat$Sub_metering_3, col = "blue")

legend("topright", 
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = c(1,1,1))

# Plot 4
plot(dat$DateTime, dat$Global_reactive_power, 
     type = "l", 
     xlab = "", ylab = "Global_reactive_power")

dev.off()
