# Load script with data
source('Load_Data.R')

# Open png device
png(filename = 'plot2.png')

# Make plot
plot(A$DateTime, A$Global_active_power, ylab = 'Global Active Power (kilowatts)', xlab = '', type = 'l')

# Turn off device
dev.off()