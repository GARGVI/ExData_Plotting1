setwd("C:\\Users\\Gemma\\Documents\\ExploratoryDataAnalysis\\ExData_Plotting1")

source("loadData.R")

png("Plot4.png", width=480, height=480)
par(mfrow=c(2,2))

#Plot1
with(dfFiltered, plot(dateTime, 
                      Global_active_power, 
                      type="l", 
                      xlab="", 
                      ylab="Global Active Power (kilowatts)"))

#Plot2
with(dfFiltered, plot(dateTime,
                      Voltage,
                      type="l"))

#Plot3
with(dfFiltered, plot(dateTime, 
                      Sub_metering_1, 
                      type="l", 
                      xlab="", 
                      ylab="Energy sub metering",
                      col="black"))

with(dfFiltered, lines(dateTime, 
                       Sub_metering_2, 
                       type="l",
                       col="red"))

with(dfFiltered, lines(dateTime, 
                       Sub_metering_3, 
                       type="l", 
                       col="blue"))

legend("topright", 
       lty=1,
       col=c("black","red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#Plot4
with(dfFiltered, plot(dateTime,
                      Global_active_power,
                      type="l"))

dev.off()
