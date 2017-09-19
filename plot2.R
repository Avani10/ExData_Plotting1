raw_data<- "household_power_consumption.txt"
data_1<- read.table(raw_data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data_2 <- data_1[data_1$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(data_2$Date, data_2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(data_2$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()