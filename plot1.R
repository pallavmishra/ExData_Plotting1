#First, Load the subset data

source("B://ExData_Plotting1//Exploratory_proj_1.R")

#Plot histogram (in Red color) and send it to a PNG device
png(file ="B://ExData_Plotting1//plot1.png" )
hist(as.numeric(subsetFile$Global_active_power), col = "red",main = "Global Active Power")
dev.off()

