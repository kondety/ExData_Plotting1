#################################################################################

setwd("C:/Users/sowja/Desktop/Data Science/data_analysis")

# Read the data
data <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")


# subset the data
hpc <- subset(data, Date %in% c("1/2/2007","2/2/2007"))


#convert the data variable to the date class
hpc$Date <- as.Date(hpc$Date, format="%d/%m/%Y")

#plotting the graph

hist(hpc$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

