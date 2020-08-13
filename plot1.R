data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', 
                      na.strings="?", stringsAsFactors=F, )

data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
hist(data1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.copy(png, file = "plot1.png")
dev.off()