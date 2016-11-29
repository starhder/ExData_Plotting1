source("prepare_data.R")

loaddata()

png(file = "plot1.png", width = 480, height = 480)

hist(dat$Global_active_power, 
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power",
     col = "red")

dev.off()
