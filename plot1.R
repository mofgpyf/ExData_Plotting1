
# open device
png(filename='plot1.png',width=480,height=480,units='px')

# plot data
power.consumption$GlobalActivePower<-as.numeric(power.consumption$GlobalActivePower)
hist(power.consumption$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

# Turn off device
x<-dev.off()
