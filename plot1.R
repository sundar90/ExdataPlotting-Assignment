input <- read.csv.sql("household_power_consumption.txt","select * from file where Date='1/2/2007' or Date='2/2/2007'",sep=";")
hist(input$Global_active_power,main="Global Active Power",xlab="Global Active Power(kilowatts)",ylab="Frequency",col="red")
dev.copy(png,file="plot1.png")
dev.off()