setwd("C:\\Users\\Gemma\\Documents\\ExploratoryDataAnalysis\\ExData_Plotting1")

source("loadData.R")

png("Plot3.png", width=480, height=480)

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

dev.off()
