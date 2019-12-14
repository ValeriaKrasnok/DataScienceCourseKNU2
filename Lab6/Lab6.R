1)Зчитання файлу, який був завантаженний на комп'ютер
```{r}
data<-read.table("E:/Lab6RStudio/household_power_consumption.txt", sep = ";", header = T, na.strings = "?")```
2)Обираємо дані по датах 2007-02-01 та 2007-02-02.
```{r}
lab <-subset(data, Date=="1/2/2007" | Date=="2/2/2007")
```
3)Конвертуємо змінні Date and Time в R клас Date/Time за допомогою функції strptime() та as.Date()
```{r}
lab$DateTime<-paste(lab$Date, lab$Time)
lab$DateTime<-strptime(lab$DateTime, "%d/%m/%Y %H:%M:%S")
lab$Date<-as.Date(lab$Date, "%d/%m/%Y")
```
4)Будуємо графіки
```{r}
png("plot1.png", width=480, height=480)
hist(lab$Global_active_power, col="red", xlab ="Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")
dev.off()
png("plot2.png", width=480, height=480)
plot(lab$DateTime, lab$Global_active_power, type = "l", xlab = "",  ylab = "Global Active Power (kilowatts)")
dev.off()
png("plot3.png", width=480, height=480)
plot(lab$DateTime, lab$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(lab$DateTime, lab$Sub_metering_2, type = "l", col = "red")
lines(lab$DateTime, lab$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = c(1, 1, 1), col = c("black", "red", "blue"), legend = c("Sub_metering_1 ", "Sub_metering_2 ", "Sub_metering_3 "))
dev.off()
png("plot4.png", width=480, height=480)
plot(lab$DateTime, lab$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(lab$DateTime, lab$Sub_metering_2, type = "l", col = "red")
lines(lab$DateTime, lab$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = c(1, 1, 1), col = c("black", "red", "blue"), legend = c("Sub_metering_1 ", "Sub_metering_2 ", "Sub_metering_3 "), bty = "n")
plot(lab$DateTime, lab$Global_reactive_power, type = "l", xlab = "datetime",  ylab = "Global_reactive_power")
dev.off()