data=read.table('household_power_consumption.txt',header=T,sep=';',na.strings='?', colClasses= c("character", "character", "numeric","numeric","numeric","numeric","numeric","numeric","numeric") )
lala=data$Date=="2/2/2007"|data$Date=="1/2/2007"
data=data[lala,]
data$DateTime=paste(data$Date,data$Time)
data$DateTime=strptime(data$DateTime, format="%d/%m/%Y %H:%M:%S")

png(file='plot2.png')
plot(data$DateTime,data$Global_active_power,type="l",ylab='Global Active Power(kilowatts)')
dev.off()