#download the zip file
dirPath<-"./data"
file<-"household_power_consumption.txt"

#download the zip file and unzip
if(!file.exists(file.path(dirPath,file))){
        dir.create(dirPath)
        fileZip<-"HouseHoldPowerConsumption.zip"
        pathFile<-file.path(dirPath,fileZip)
        
        
        fileUrl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        
        download.file(fileUrl, destfile= pathFile, mode="wb")
        
        unzip(pathFile, exdir= dirPath, list = FALSE, overwrite = TRUE)
}

#read  data
df<- read.table(file.path(dirPath, file), 
                sep=";", 
                header=T,
                colClasses = c("character",
                               "character",
                               "numeric",
                               "numeric",
                               "numeric",
                               "numeric",
                               "numeric",
                               "numeric",
                               "numeric"),
                na.strings = "?",
                stringsAsFactors = F)


dfFiltered <- subset(df, between(as.Date(Date, format="%d/%m/%Y" ), 
                                 as.Date("2007-02-01", format="%Y-%m-%d"), 
                                 as.Date("2007-02-02", format="%Y-%m-%d")))

dfFiltered$dateTime<-strptime(paste(dfFiltered$Date, dfFiltered$Time, sep=" "), 
                              format="%d/%m/%Y %H:%M:%S")





