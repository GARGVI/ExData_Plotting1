setwd("C:\\Users\\Gemma\\Documents\\ExploratoryDataAnalysis\\ExData_Plotting1")

source("loadData.R")

png("Plot1.png", width=480, height=480)

hist(dfFiltered$Global_active_power, 
     col="red", 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")


dev.off()

