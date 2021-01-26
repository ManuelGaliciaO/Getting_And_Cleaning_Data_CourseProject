#//////////////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////

# This script accomplishes the following list provided by the assignment:
 

# 1- Merges the training and the test sets to create one data set.

# 2- Extracts only the measurements on the mean and standard deviation for 
#    each measurement. 

# 3- Uses descriptive activity names to name the activities in the data set

# 4- Appropriately labels the data set with descriptive variable names. 

# 5- From the data set in step 4, creates a second, independent tidy data 
#    set with the average of each variable for each activity and each subject.


#//////////////////////////////////////////////////////////////////////////////
#/////////////////////////// Loading Libraries ////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////

library(dplyr)
library(data.table)

#//////////////////////////////////////////////////////////////////////////////
#//////////////////////////////// Step 0 //////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////

# First we create a temporary file to read the files we need

fileUrl <-  "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
temp <- tempfile()
download.file(fileUrl, temp)

# On this step we load the data into R

features <- read.table(unz(temp, "UCI HAR Dataset/features.txt"))
names(features) <- c("ID", "Features")
dataTest1 <- read.table(unz(temp, "UCI HAR Dataset/test/subject_test.txt"))
names(dataTest1) <- c("Subject")
dataTest2 <- read.table(unz(temp, "UCI HAR Dataset/test/X_test.txt"))
dataTest3 <- read.table(unz(temp, "UCI HAR Dataset/test/y_test.txt"))
names(dataTest3) <- c("Activity")

dataTrain1 <- read.table(unz(temp, "UCI HAR Dataset/train/subject_train.txt"))
names(dataTrain1) <- c("Subject")
dataTrain2 <- read.table(unz(temp, "UCI HAR Dataset/train/X_train.txt"))
dataTrain3 <- read.table(unz(temp, "UCI HAR Dataset/train/y_train.txt"))
names(dataTrain3) <- c("Activity")

# Unlink the temporary file as its no longer necessary

unlink(temp)


#//////////////////////////////////////////////////////////////////////////////
#//////////////////////////////// Step 1 //////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////

# Merging the Train and Test datasets into a single dataset

dataTest <- cbind(dataTest1, dataTest3, dataTest2)

dataTrain <- cbind(dataTrain1, dataTrain3, dataTrain2)

dataSet <- rbind(dataTest, dataTrain)

#//////////////////////////////////////////////////////////////////////////////
#//////////////////////////////// Step 2 //////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////

# Extract only the measurements on the mean and standard deviation for each
# measurement.

featureSet <- grep("mean\\(\\)|std\\(\\)", features$Features)

FinalData <- tbl_df(dataSet[, c(1,2, featureSet + 2)])

#//////////////////////////////////////////////////////////////////////////////
#//////////////////////////////// Step 3 //////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////

# Uses descriptive activity names to name the activities in the data set

FinalData <- transform(FinalData, Activity = as.character(Activity))
a <- data.frame(FinalData$Activity)
names(a) <- c("Activity")
b <- data.frame(sub("1", "Walking", a$Activity))
names(b) <- c("Activity")
b <- data.frame(sub("2", "Walking_Upstairs", b$Activity))
names(b) <- c("Activity")
b <- data.frame(sub("3", "Walking_Downstairs", b$Activity))
names(b) <- c("Activity")
b <- data.frame(sub("4", "Sitting", b$Activity))
names(b) <- c("Activity")
b <- data.frame(sub("5", "Standing", b$Activity))
names(b) <- c("Activity")
b <- data.frame(sub("6", "Laying", b$Activity))
names(b) <- c("Activity")

FinalData$Activity <- b$Activity

#//////////////////////////////////////////////////////////////////////////////
#//////////////////////////////// Step 4 //////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////

# Appropriately labels the data set with descriptive variable names. 

c <- features[featureSet,]
c <- c$Features
names(FinalData) <- c("Subject", "Activity", c)
FinalData <- tbl_df(FinalData)

#//////////////////////////////////////////////////////////////////////////////
#//////////////////////////////// Step 5 //////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////

# From the data set in step 4, creates a second, independent tidy data 
# set with the average of each variable for each activity and each subject.


IndependentTidySet <- FinalData %>% 
  group_by(Subject, Activity) %>% 
  summarise_all(funs(mean))

NewNames <- c(names(IndependentTidySet[c(1,2)]),
            paste0("Average-", names(IndependentTidySet[-c(1, 2)])))

names(IndependentTidySet) <- NewNames

write.table(IndependentTidySet, "tidy_data.txt", row.names = FALSE)
            



