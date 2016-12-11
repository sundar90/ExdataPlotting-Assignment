input <- read.csv.sql("household_power_consumption.txt","select * from file where Date='1/2/2007' or Date='2/2/2007'",sep=";")
x <- strptime(paste(input$Date,input$Time),"%d/%m/%Y %T")
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
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)
dev.copy(png,"plot3.png")
dev.off()
