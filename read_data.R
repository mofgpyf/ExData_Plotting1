library(data.table)
library(lubridate)

# read data in.
household_power_consumption <- read.csv("C:/GPYF/Training/Coursera - Data Science/04 - Exploratory data analysis/Week 1/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)

# select required data of the 2 days, 1/2/2007 and 2/2/2007.
variable.class<-c(rep('character',2),rep('numeric',7))
power.consumption<-household_power_consumption[household_power_consumption$Date=='1/2/2007' | household_power_consumption$Date=='2/2/2007',]
  
# touch up variable names, convert date and time.
cols<-c('Date','Time','GlobalActivePower','GlobalReactivePower','Voltage','GlobalIntensity',
        'SubMetering1','SubMetering2','SubMetering3')
colnames(power.consumption)<-cols
power.consumption$DateTime<-dmy(power.consumption$Date)+hms(power.consumption$Time)
power.consumption<-power.consumption[,c(10,3:9)]
  
