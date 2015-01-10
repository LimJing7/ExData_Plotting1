
data=read.table('household_power_consumption.txt',header=T,sep=';',na.strings='?', colClasses= c("character", "character", "numeric","numeric","numeric","numeric","numeric","numeric","numeric") )
lala=data$Date=="2/2/2007"|data$Date=="1/2/2007"
data2=data[lala,]


png(file='plot1.png')
hist(data2$Global_active_power,col='red',xlab='Global Active Power(kilowatts)',main="Global Active Power")
dev.off()
