# Getting and Cleaning Data Course Project
## Microsoft Windows 10 Home OS used

library(data.table)
library(dplyr)

# Download and unzip file with original data set

filename <- "getdata_projectfiles_UCI HAR Dataset.zip"

if (!file.exists(filename)) {
        fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileURL, destfile = filename)
}

if (!file.exists("UCI HAR Dataset")) {
        unzip(filename, list = TRUE)        
}

dateDownloaded <- date()

# Reading text files and assign names to all data frames

features <- read.table("UCI HAr Dataset/features.txt", col.names = c("n", "function"))
activity <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))

# Reading and assiging all test datasets

x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features[,2])
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")

# Reading and assiging all train datasets

x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features[,2])
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")

# 1. Merge training and test sets to create one dataset

x_total <- rbind(x_test, x_train)
y_total <- rbind(y_test, y_train)
subject_total <- rbind(subject_test, subject_train)
merged_data <- cbind(subject_total, y_total, x_total)

# 2. Extract only measurements on the mean and standard deviation for each measurement.
# Make sure to exclude meanFreq() measurement with the regular expression [^meanFreq]

tidy_data <- merged_data %>% select(subject, code, grep("(std|mean)[^meanFreq]", colnames(merged_data), value=TRUE))

# 3. Use descriptive activity names to name the activities in the tidy data set.

tidy_data$code <- activity[tidy_data$code, 2]

# 4. Appropriately label the data set with descriptive variable names.

names(tidy_data)[2] = "Activity"
names(tidy_data)[1] = "Subject"
names(tidy_data)<-gsub("Acc", "Accelerometer", names(tidy_data))
names(tidy_data)<-gsub("Gyro", "Gyroscope", names(tidy_data))
names(tidy_data)<-gsub("BodyBody", "Body", names(tidy_data))
names(tidy_data)<-gsub("Mag", "Magnitude", names(tidy_data))
names(tidy_data)<-gsub("^t", "Time", names(tidy_data))
names(tidy_data)<-gsub("^f", "Frequency", names(tidy_data))
names(tidy_data)<-gsub("tBody", "TimeBody", names(tidy_data))
names(tidy_data)<-gsub("-mean()", "Mean", names(tidy_data), ignore.case = TRUE)
names(tidy_data)<-gsub("-std()", "STD", names(tidy_data), ignore.case = TRUE)
names(tidy_data)<-gsub("-freq()", "Frequency", names(tidy_data), ignore.case = TRUE)
names(tidy_data)<-gsub("angle", "Angle", names(tidy_data))
names(tidy_data)<-gsub("gravity", "Gravity", names(tidy_data))
names(tidy_data)<- gsub('[-()]', '', names(tidy_data))

# 5. From the dataset in step 4, create second, independent tidy data set with the average of each variable for each activity and each subject.

tidydata_final <- tidy_data %>%
        group_by(Subject, Activity) %>%
        summarise_all(list(mean = mean))
View(tidydata_final)
write.table(tidydata_final, "tidy.txt", row.name=FALSE)