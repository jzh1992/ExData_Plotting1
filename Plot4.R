#This R Script creates plot 4 using HPC.rds
#Load data from LoadData.R
HPC.df<-readRDS('data/HPC.rds')

#Open png device
png(filename='plots/plot4.png')

##Build plots
par(mfrow=c(2,2))

#Upper Left Quadrant
plot(HPC.df$date.time, HPC.df$Global_active_power,
     ylab='Global Active Power', xlab='', type='l')

#Upper Right Quadrant
plot(HPC.df$date.time, HPC.df$Voltage,
     xlab='datetime', ylab='Voltage', type='l')

#Lower Left Quadrant
plot(HPC.df$date.time, HPC.df$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')
lines(HPC.df$date.time, HPC.df$Sub_metering_2, col='red')
lines(HPC.df$date.time, HPC.df$Sub_metering_3, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid', bty='n')


#Lower Right Quadrant
plot(HPC.df$date.time, HPC.df$Global_reactive_power,
     xlab='datetime', ylab='Global_reactive_power', type='l')


#turn device off
dev.off()