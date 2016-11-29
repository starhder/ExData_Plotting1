source("prepare_data.R")

loaddata()

# Plot part
png(file = "plot2.png", width = 480, height = 480)

plot(dat$DateTime, dat$Global_active_power, 
     type = "l", 
     xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()
