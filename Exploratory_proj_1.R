#The following function estimates the object size
filemem <- object.size(read.table("household_power_consumption.txt"))

#The following estimates the size using given data (2,075,259 rows and 9 columns)
# and assuming 8 bytes/numeric

rowcount <-2075259
colcount <- 9
estmem <-rowcount*colcount*8

## The below code extracts data for a date range using fast file reader
install.packages("data.table")
library("data.table")
dataFile <- fread("B://Coursera Data Analysis//household_power_consumption.txt", na.strings = "?")
dataFile[,DateTime := as.Date(paste(Date,Time),format = "%d/%m/%Y %H:%M:%S")]
install.packages("dplyr")
library("dplyr")
subsetFile <-filter(dataFile, DateTime >= as.Date("2007-02-01 00:00:00"), DateTime < as.Date("2007-02-02 00:00:00"))
