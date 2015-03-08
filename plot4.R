# Load script with data
source('Load_Data.R')
	
# Open device
png(filename = 'plot4.png')

# Make plot window for 4 plots: 2 in rows and 2 in columns
par(mfrow = c(2,2))

# Make 4 plots:
plot(A$DateTime, A$Global_active_power, ylab = 'Global Active Power', xlab = '', type = 'l')

plot(A$DateTime, A$Voltage, xlab = 'datetime', ylab = 'Voltage', type = 'l')

plot(A$DateTime, A$Sub_metering_1, type = 'l', xlab = '', ylab = 'Energy sub metering')
lines(A$DateTime, A$Sub_metering_2, col = 'red')
lines(A$DateTime, A$Sub_metering_3, col = 'blue')
legend('topright', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col = c('black', 'red', 'blue'), lty = 'solid', bty = 'n')

plot(A$DateTime, A$Global_reactive_power, xlab = 'datetime', ylab = 'Global_reactive_power', type = 'l')
	
# Turn off device
dev.off()