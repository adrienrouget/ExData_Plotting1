data<-read.csv('household_power_consumption1.csv')
data$date_time<-with(data,paste(Date,Time,sep=" "))
data$date_time<- strptime(data$date_time, format="%d/%m/%Y %H:%M:%S")
plot(data$date_time,data$Global_active_power, col="white", ylab="Global Active Power (Kilowatts)", xlab = " ")
lines(data$date_time,data$Global_active_power)
dev.copy(png,file="plot2.png")
dev.off()
