1)Зчитання файлу, який був завантаженний на комп'ютер
```{r}
lab = read.table("E:/Lab6RStudio/household_power_consumption.txt", na.strings="?",  sep = ";", header = T)
```
2)Конвертуємо змінні Date and Time в R клас Date/Time за допомогою функції strptime() та as.Date().
```{r}
lab$DateTime<-paste(lab$Date, lab$Time)
lab$DateTime<-strptime(lab$DateTime, "%d/%m/%Y %H:%M:%S")
lab$Date<-as.Date(lab$Date, "%d/%m/%Y")
```
3)Обираємо дані по датах 2007-02-01 та 2007-02-02.
```{r}
labsix = lab$DateTime[(lab$DateTime  >= "2007-02-01") & (lab$DateTime < "2007-02-02")]
```
4)
