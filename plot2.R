download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile = "Fhousehold_power_consumption.zip")

unzip("Fhousehold_power_consumption.zip")

data <- read.table("household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";", stringsAsFactors = FALSE)

dateddata <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

dt <- strptime(paste(dateddata$Date, dateddata$Time), "%d/%m/%Y %H:%M:%S")

png("plot2.png", width = 480, height = 480)

plot(dt, dateddata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()