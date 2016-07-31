setwd("C:\\Users\\Gemma\\Documents\\ExploratoryDataAnalysis\\ExData_Plotting1")

source("loadData.R")

png("Plot2.png", width=480, height=480)
with(dfFiltered, plot(dateTime, 
                      Global_active_power, 
                      type="l", 
                      xlab="", 
                      ylab="Global Active Power (kilowatts)"))
dev.off()
