####################################################################################################


#Load the data
setwd("C:/Users/sowja/Desktop/Data Science/data_analysis")


#read the data
data <- read.csv("household_power_consumption.txt", header=TRUE, sep=';', na.strings="?")

#Subset the data
hpc<- subset(data, Date %in% c("1/2/2007","2/2/2007"))


# Convert the data and time  variables into class
hpc$Date <- as.Date(hpc$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(hpc$Date), hpc$Time)
hpc$Datetime <- as.POSIXct(datetime)

#plotting the graph

with(hpc, {
  plot(Sub_metering_1~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~Datetime,col='Red')
  lines(Sub_metering_3~Datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
