source("prepare_data.R")

loaddata()

# Plot part
png(file = "plot3.png", width = 480, height = 480)

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

dev.off()
