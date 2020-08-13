data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', 
                      na.strings="?", stringsAsFactors=F, )

data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
datetime <- paste(data1$Date, data1$Time)
data1$Datetime <- as.POSIXct(datetime)

## Plot 2 #the type l es para que sea una linea y no puntos
with(data1, {
        plot(Global_active_power~Datetime, type="l",
             ylab="Global Active Power (kilowatts)", xlab="")
})

dev.copy(png, file = "plot2.png")
dev.off()