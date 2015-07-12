#This R Script creates plot 1 using HPC.rds
#Load data from LoadData.R
HPC.df<-readRDS('data/HPC.rds')

#Open png device
png(filename='plots/plot1.png')

#Build plot
hist(HPC.df$Global_active_power, main='Global Active Power',
     xlab='Global Active Power (kilowatts', col='red')

#turn device off
dev.off()