data <- read.table("E:/lab5Rstudio/UCI HAR Dataset/features.txt", colClasses = "character")[,2]
##read all tables with text data from the work directory
train_x <- read.table("E:/lab5Rstudio/UCI HAR Dataset/train/X_train.txt", col.names = data, check.names = F)
train_y <- read.table("E:/lab5Rstudio/UCI HAR Dataset/train/y_train.txt", col.names = c('activity'))
subject.train <- read.table("E:/lab5Rstudio/UCI HAR Dataset/train/subject_train.txt", col.names = c('subject'))

test_x <- read.table("E:/lab5Rstudio/UCI HAR Dataset/test/X_test.txt", col.names = data, check.names = F)
test_y <- read.table("E:/lab5Rstudio/UCI HAR Dataset/test/Y_test.txt", col.names = c('activity'))
subject.test <- read.table("E:/lab5Rstudio/UCI HAR Dataset/test/subject_test.txt", col.names = c('subject'))

act_labels <- read.table("E:/lab5Rstudio/UCI HAR Dataset/activity_labels.txt", col.names = c('n','text'))
##joined the table
alldata <- cbind(rbind(train_x, test_x),
              rbind(train_y, test_y), 
              rbind(subject.train, subject.test))

data1 <- alldata[, !duplicated(colnames(alldata))]
data2 <- select(data1,  matches("mean\\(\\)|std\\(\\)|subject|activity"))

data3 <- within(data2, activity <- factor(activity, labels = act_labels[,2]))

data4 <- aggregate(x = data3[, -c(67,68)], 
                   by = list(data3[,'subject'], data3[, 'activity']),
                   FUN = mean)
##saved a file in csv format
write.csv(data4, "tidy_dataset.csv", row.names=F)
setwd("E:/lab5Rstudio")
##in this directory we can find a downloaded file with name "tidy_dataset.csv"
