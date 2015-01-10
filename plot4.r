data=read.table('household_power_consumption.txt',header=T,sep=';',na.strings='?', colClasses= c("character", "character", "numeric","numeric","numeric","numeric","numeric","numeric","numeric") )
lala=data$Date=="2/2/2007"|data$Date=="1/2/2007"
data=data[lala,]
data$DateTime=paste(data$Date,data$Time)
data$DateTime=strptime(data$DateTime, format="%d/%m/%Y %H:%M:%S")

png(file='plot4.png')
par(mfrow=c(2,2))
plot(data$DateTime,data$Global_active_power,type="l",ylab='Global Active Power(kilowatts)',xlab="")

plot(data$DateTime,data$Voltage,type="l",ylab='Voltage',xlab="datetime")

plot(data$DateTime,data$Sub_metering_1,type="l",ylab='Energy sub metering',xlab="")
lines(data$DateTime,data$Sub_metering_2,col='Red')
lines(data$DateTime,data$Sub_metering_3,col='Blue')
legend("topright", col=c('black','red', 'blue'), lty=1, bty='n', legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

plot(data$DateTime,data$Global_reactive_power,type="l",ylab='Global_reactive_power',xlab="datetime")

dev.off()