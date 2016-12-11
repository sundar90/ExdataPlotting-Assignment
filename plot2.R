input <- read.csv.sql("household_power_consumption.txt","select * from file where Date='1/2/2007' or Date='2/2/2007'",sep=";")
x <- strptime(paste(input$Date,input$Time),"%d/%m/%Y %T")
y <- input$Global_active_power
plot(x,y,pch=".",xlab=" ",ylab = "Global Active Power(kilowatts)")
lines(x[order(x)],y[order(x)],pch=16)
dev.copy(png,file="plot2.png")
dev.off()