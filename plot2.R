setwd("C:/Users/sowja/Desktop/Data Science/data_analysis")

# Read the data

data <- read.csv("household_power_consumption.txt", header=TRUE, sep=';', na.strings="?")

# subset the data
hpc <- subset(data, Date %in% c("1/2/2007","2/2/2007"))

#covert dates and times into class
hpc$Date <- as.Date(hpc$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(hpc$Date), hpc$Time)
hpc$Datetime <- as.POSIXct(datetime)

## Plotting the graph
with(hpc, {
  plot(Global_active_power~Datetime, type="l",ylab="Global Active Power (kilowatts)", xlab="")
})

# save the .png file
png("plot2.png", width=480, height=480)
dev.off()