downloaddata <- function () {
  if (file.exists("household_power_consumption.zip")) {
    return()
  }
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "household_power_consumption.zip")
  unzip("household_power_consumption.zip")
}

loaddata <- function() {
  if (exists("dataready") && dataready) {
    message(paste("Data is already previously loaded and cached",
            " to reload, set dataready<-F and re-run"))
    return()
  }
  downloaddata()
  dat <- read.table("household_power_consumption.txt", as.is = T, sep = ";", header = T)
  dat$Date <- as.Date(dat$Date, format = "%d/%m/%Y")
  dat<-dat[dat$Date %in% as.Date(c("2007-02-01", "2007-02-02")),]
  dat$DateTime <- strptime(paste(dat$Date, dat$Time), format = "%Y-%m-%d %H:%M:%S")
  
  # Convert the variables to numeric.
  for (i in 3:9) {
    dat[,i] <- as.numeric(dat[,i])
  }

  dataready <<- T
}
