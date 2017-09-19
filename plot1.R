raw_data<- "household_power_consumption.txt"
data_1 <- read.table(raw_data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data_2 <- data_1[data_1$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(data_2$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()