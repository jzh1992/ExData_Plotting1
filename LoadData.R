#This script will Load, Transform, Merge, Filter, and Save Household Power Consumption Data as HPC.rds
#set working directory to local git repo
setwd("C:/Users/David/SkyDrive/Projects/GitHub/ExData_Plotting1")
#Reference library for easy date converter 
library(lubridate)

#read data into data frame called "HPC", and abbreviation of "Household Power Consumption". 
#setting classes to "character" and "numeric" respectively.
HPC.df<-read.table('data/household_power_consumption.txt',header=TRUE,
                   sep=';', na.strings='?',colClasses=c(rep('character',2),
                                                        rep('numeric',7)))
#convert dates and times using lubridate.
HPC.df$Date<-dmy(HPC.df$Date)
HPC.df$Time<-hms(HPC.df$Time)


#filter data frame for dates betwen February 1st, 2007 and February 2nd, 2007
start<-ymd('2007-02-01')
end<-ymd('2007-02-02')
HPC.df<-subset(HPC.df, year(Date)==2007 &
                 month(Date)==2 &
                 (day(Date)==1 | day(Date)==2))
#merge date and time together
HPC.df$date.time<-HHPC<-HPC.df$Date + HPC.df$Time

#save .Rds file
saveRDS(HPC.df,file='data/HPC.rds')