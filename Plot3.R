#This R Script creates plot 3 using HPC.rds
#Load data from LoadData.R
HPC.df<-readRDS('data/HPC.rds')

#Open png device
png(filename='plots/plot3.png')

#Build plot
plot(HPC.df$date.time, HPC.df$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')
lines(HPC.df$date.time, HPC.df$Sub_metering_2, col='red')
lines(HPC.df$date.time, HPC.df$Sub_metering_3, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid')

#turn device off
dev.off()