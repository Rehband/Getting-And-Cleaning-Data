## load the reshape2 package
library(reshape2)

## read data into data frames
trainData <- read.table("UCI HAR Dataset/train/X_train.txt") # 7352*561
trainLabel <- read.table("UCI HAR Dataset/train/y_train.txt") # 7352*1
testData <- read.table("UCI HAR Dataset/test/X_test.txt") # 2947*561
testLabel <- read.table("UCI HAR Dataset/test/y_test.txt") # 2947*1
trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt") # 7352*1
testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt") # 2947*1
activityLabel <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")

## vertically merge Data, Lable and Subject
df <- rbind(testData, trainData) # 10299*561
activity <- rbind(testLabel, trainLabel) # 10299*1
subject <- rbind(testSubject, trainSubject) #10299*1

## extract only the columns containing standard deviation or mean
meanstd <- grep("mean\\(\\)|std\\(\\)", features[,2])  # 66
data <- df[,meanstd] # 10299*66

## use descriptive activity names
activityLabel[,2] <- gsub("_", " ", tolower(activityLabel[,2]))
activity[,1] <- activityLabel[activity[,1],2]

## label with descriptive variable names 
names(activity) <- "Activity"
names(subject) <- "Subject"  
names(data) <- features[meanstd,2]
names(data) <- gsub("^t", "time", names(data))
names(data) <- gsub("^f", "frequency", names(data))
names(data) <- gsub("Acc", "Accelerometer", names(data))
names(data) <- gsub("Gyro", "Gyroscope", names(data))
names(data) <- gsub("Mag", "Magnitude", names(data))
names(data) <- gsub("BodyBody", "Body", names(data))
names(data) <- gsub("\\(\\)", "", names(data)) # remove "()"
names(data) <- gsub("mean", "Mean", names(data)) # capitalize M
names(data) <- gsub("std", "Std", names(data)) # capitalize S
names(data) <- gsub("-", "", names(data)) # remove "-" in column names 

## combine subject, activity, and measured data
data <- cbind(subject, activity, data)

## create the tidy data set
tidydata <- recast(data, Subject+Activity+variable~., fun.aggregate=mean, id.var=1:2)

## set the column names
colnames(tidydata) <- c("Subject", "Activity", "Variable", "Average")

## write the tidy data set to a file
write.table(tidydata, file="TidyData.txt", row.names=FALSE, sep=",")
