# dowdnload and extract the data	
 download.file(paste0('https://d396qusza40orc.cloudfront.net/', 'exdata%2Fdata%2Fhousehold_power_consumption.zip'), method='curl', destfile='exdata-data-household_power_consumption.zip') 
 unzip('exdata-data-household_power_consumption.zip')

library(lubridate)
	    
# Read data, reduce it to the dates boundaries
A <- read.table('household_power_consumption.txt', header = TRUE, sep=';', na.strings='?', colClasses = c(rep('character', 2), rep('numeric', 7)))
start_time_ind = min(which(A[, ] == "1/2/2007"))
stop_time_ind = max(which(A[, ] == "2/2/2007"))
A <- A[start_time_ind:stop_time_ind, ]

# Convert dates and times
A$Date <- dmy(A$Date)
A$Time <- hms(A$Time)

# Add additional column: date & time
A$DateTime <- A$Date + A$Time

# Save reduced data for plots
saveRDS(A, file = 'Data_Power.rds')

# Final data frame for further plotting
A <- readRDS('Data_Power.rds')