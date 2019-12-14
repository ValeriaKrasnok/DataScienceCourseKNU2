1)Зчитання файлу, який був завантаженний на комп'ютер
```{r}
lab = read.table("E:/Lab6RStudio/household_power_consumption.txt", na.strings="?",  sep = ";", header = T)
```
2)Обираємо дані по датах 2007-02-01 та 2007-02-02.
```{r}
data<-subset(lab, Date=="2007-02-01" | Date=="2007-02-02")
```
3)Конвертуємо змінні Date and Time в R клас Date/Time за допомогою функції strptime() та as.Date().
```{r}
data$DateTime<-paste(data$Date, data$Time)
data$DateTime<-strptime(data$DateTime, "%d/%m/%Y %H:%M:%S")
 data$Date<-as.Date(data$Date, "%d/%m/%Y")
```
4)Будуємо графіки
```{r}
png("plot1.png", width=480, height=480)
hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")
dev.off()
plot(x = data$dateTime, y = data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

plot(data$dateTime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(data$dateTime, data$Sub_metering_2,col="red")
lines(data$dateTime, data$Sub_metering_3,col="blue")
legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))
dev.off()
plot(data$dateTime, data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()
```

