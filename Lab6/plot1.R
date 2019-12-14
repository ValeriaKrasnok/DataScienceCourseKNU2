```{r}
data<-read.table("E:/Lab6RStudio/household_power_consumption.txt", sep = ";", header = T, na.strings = "?")
##Reads in data from file then subsets data for specified dates
lab <-subset(data, Date=="1/2/2007" | Date=="2/2/2007")
##Filter data from 1/2/2007 and 2/2/2007
lab$DateTime<-paste(lab$Date, lab$Time)
lab$DateTime<-strptime(lab$DateTime, "%d/%m/%Y %H:%M:%S")
lab$Date<-as.Date(lab$Date, "%d/%m/%Y")
##Plot 1
png("plot1.png", width=480, height=480)
hist(lab$Global_active_power, col="red", xlab ="Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")
dev.off()
```
