# Load script with data
source('Load_Data.R')
	
# Open png device
png(filename = 'plot1.png')
	
# Make plot
hist(A$Global_active_power, main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)', col = 'red')
	
# Turn off device
dev.off()