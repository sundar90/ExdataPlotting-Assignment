par(mfcol=c(2,2))
input <- read.csv.sql("household_power_consumption.txt","select * from file where Date='1/2/2007' or Date='2/2/2007'",sep=";")
x <- strptime(paste(input$Date,input$Time),"%d/%m/%Y %T")
y <- input$Global_active_power
plot(x,y,pch=".",xlab=" ",ylab = "Global Active Power(kilowatts)")
lines(x[order(x)],y[order(x)],pch=16)

y <- input$Sub_metering_1
plot(x,y,type="n",xlab = "",ylab="Energy Sub metering")
points(x,y,pch=".")
lines(x,y)
par(col="red")
y <- input$Sub_metering_2
points(x,y,pch=".")
lines(x,y)
par(col="blue")
y <- input$Sub_metering_3
points(x,y,pch=".")
lines(x,y)
par(col="black")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1,bty = "n",pt.cex = 1,cex=0.75)

y <- input$Voltage
plot(x,y,pch=".",xlab = "datetime",ylab = "Voltage")
lines(x,y)

y <- input$Global_reactive_power
plot(x,y,pch=".",xlab = "datetime",ylab = "Global Reactive power")
lines(x,y)

dev.copy(png,file="plot4.png")
dev.off()
