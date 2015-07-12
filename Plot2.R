#This R Script creates plot 2 using HPC.rds
#Load data from LoadData.R
HPC.df<-readRDS('data/HPC.rds')

#Open png device
png(filename='plots/plot2.png')

#Build plot
plot(HPC.df$date.time, HPC.df$Global_active_power,
     ylab='Global Active Power (kilowatts)', xlab='', type='l')

#turn device off
dev.off()