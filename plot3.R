source("prepare_data.R")

loaddata()

# Plot part
png(file = "plot3.png", width = 480, height = 480)

plot(dat$DateTime, dat$Sub_metering_1, 
     type = "n", 
     xlab = "", ylab = "Global Active Power (kilowatts)")
lines(dat$DateTime, dat$Sub_metering_1, col = "black")
lines(dat$DateTime, dat$Sub_metering_2, col = "blue")
lines(dat$DateTime, dat$Sub_metering_3, col = "red")

legend("topright", 
       col = c("black", "blue", "red"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = c(1,1,1))

dev.off()