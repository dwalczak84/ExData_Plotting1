# Load script with data
source('Load_Data.R')
	
# Open png device
png(filename = 'plot3.png')
 
# Make plot
plot(A$DateTime, A$Sub_metering_1, type = 'l', xlab = '', ylab = 'Energy sub metering')
lines(A$DateTime, A$Sub_metering_2, col = 'red')
lines(A$DateTime, A$Sub_metering_3, col = 'blue')
legend('topright', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col = c('black', 'red', 'blue'), lty = 'solid')
	
# Turn off device
dev.off()