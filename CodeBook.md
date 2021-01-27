# CODE BOOK for "tidy_data.txt"

This CodeBook contains a detailed explanation of all the variables involved in this assignment as well as the process I carried out to load it into R, clean it and present it as tidy data set.

## Information on "tidy_data.txt"

This is a summary on the variables that will be found in the tidy data set.

| Index |           Variables          |  Class  |  Range  | Description                                                                                               |
|-------|------------------------------| --------|---------|-----------------------------------------------------------------------------------------------------------|
|    1  | subject                      | integer |  1 - 30 | Identifies the human subject.                                                                             |
|    2  | activity                     | factor  |  1 -  6 | Identifies the activity. Labels: WALKING, WALKING UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING |
|    3  | Average-tBodyAcc-mean()-X       | numeric | [-1, 1] | Time domain, Average of means for body acceleration on X axis.                                            |
|    4  | Average-tBodyAcc-mean()-Y       | numeric | [-1, 1] | Time domain, Average of means for body acceleration on Y axis.                                            |
|    5  | Average-tBodyAcc-mean()-Z       | numeric | [-1, 1] | Time domain, Average of means for body acceleration on Z axis.                                            |
|    6  | Average-tBodyAcc-std()-X        | numeric | [-1, 1] | Time domain, Average of standard deviations for body acceleration on X axis.                              |
|    7  | Average-tBodyAcc-std()-Y        | numeric | [-1, 1] | Time domain, Average of standard deviations for body acceleration on Y axis.                              |
|    8  | Average-tBodyAcc-std()-Z        | numeric | [-1, 1] | Time domain, Average of standard deviations for body acceleration on Z axis.                              |
|    9  | Average-tGravityAcc-mean()-X    | numeric | [-1, 1] | Time domain, Average of means for gravity acceleration on X axis.                                         |
|   10  | Average-tGravityAcc-mean()-Y    | numeric | [-1, 1] | Time domain, Average of means for gravity acceleration on Y axis.                                         |
|   11  | Average-tGravityAcc-mean()-Z    | numeric | [-1, 1] | Time domain, Average of means for gravity acceleration on Z axis.                                         |
|   12  | Average-tGravityAcc-std()-X     | numeric | [-1, 1] | Time domain, Average of standard deviations for gravity acceleration on X axis.                           |
|   13  | Average-tGravityAcc-std()-Y     | numeric | [-1, 1] | Time domain, Average of standard deviations for gravity acceleration on Y axis.                           |
|   14  | Average-tGravityAcc-std()-Z     | numeric | [-1, 1] | Time domain, Average of standard deviations for gravity acceleration on Z axis.                           |
|   15  | Average-tBodyAccJerk-mean()-X   | numeric | [-1, 1] | Time domain, Average of means for the jerk of body acceleration on X axis.                                |
|   16  | Average-tBodyAccJerk-mean()-Y   | numeric | [-1, 1] | Time domain, Average of means for the jerk of body acceleration on Y axis.                                |
|   17  | Average-tBodyAccJerk-mean()-Z   | numeric | [-1, 1] | Time domain, Average of means for the jerk of body acceleration on Z axis.                                |
|   18  | Average-tBodyAccJerk-std()-X    | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of body acceleration on X axis.                  |
|   19  | Average-tBodyAccJerk-std()-Y    | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of body acceleration on Y axis.                  |
|   20  | Average-tBodyAccJerk-std()-Z    | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of body acceleration on Z axis.                  |
|   21  | Average-tBodyGyro-mean()-X      | numeric | [-1, 1] | Time domain, Average of means for angular velocity on X axis.                                             |
|   22  | Average-tBodyGyro-mean()-Y      | numeric | [-1, 1] | Time domain, Average of means for angular velocity on Y axis.                                             |
|   23  | Average-tBodyGyro-mean()-Z      | numeric | [-1, 1] | Time domain, Average of means for angular velocity on Z axis.                                             |
|   24  | Average-tBodyGyro-std()-X       | numeric | [-1, 1] | Time domain, Average of standard deviations for angular velocity on X axis.                               |
|   25  | Average-tBodyGyro-std()-Y       | numeric | [-1, 1] | Time domain, Average of standard deviations for angular velocity on Y axis.                               |
|   26  | Average-tBodyGyro-std()-Z       | numeric | [-1, 1] | Time domain, Average of standard deviations for angular velocity on Z axis.                               |
|   27  | Average-tBodyGyroJerk-mean()-X  | numeric | [-1, 1] | Time domain, Average of means for the jerk of angular velocity on X axis.                                 |
|   28  | Average-tBodyGyroJerk-mean()-Y  | numeric | [-1, 1] | Time domain, Average of means for the jerk of angular velocity on Y axis.                                 |
|   29  | Average-tBodyGyroJerk-mean()-Z  | numeric | [-1, 1] | Time domain, Average of means for the jerk of angular velocity on Z axis.                                 |
|   30  | Average-tBodyGyroJerk-std()-X   | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of angular velocity on X axis.                   |
|   31  | Average-tBodyGyroJerk-std()-Y   | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of angular velocity on Y axis.                   |
|   32  | Average-tBodyGyroJerk-std()-Z   | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of angular velocity on Z axis.                   |
|   33  | Average-tBodyAccMag-mean()      | numeric | [-1, 1] | Time domain, Average of means for the magnitude of body acceleration.                                     |
|   34  | Average-tBodyAccMag-std()       | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of body acceleration.                       |
|   35  | Average-tGravityAccMag-mean()   | numeric | [-1, 1] | Time domain, Average of means for the magnitude of gravity acceleration.                                  |
|   36  | Average-tGravityAccMag-std()    | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of gravity acceleration.                    |
|   38  | Average-tBodyAccJerkMag-mean()  | numeric | [-1, 1] | Time domain, Average of means for the magnitude of jerk, of body accelaration.                            |
|   38  | Average-tBodyAccJerkMag-std()   | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of jerk, of body accelaration.              |
|   39  | Average-tBodyGyroMag-mean()     | numeric | [-1, 1] | Time domain, Average of means for the magnitude of angular velocity.                                      |
|   40  | Average-tBodyGyroMag-std()      | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of angular velocity.                        |
|   41  | Average-tBodyGyroJerkMag-mean() | numeric | [-1, 1] | Time domain, Average of means for the magnitude of jerk, of the angular velocity.                         |
|   42  | Average-tBodyGyroJerkMag-std()  | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of jerk, of the angular velocity.           |
|   43  | Average-fBodyAcc-mean()-X       | numeric | [-1, 1] | Frequency domain, Average of means for body acceleration on X axis.                                       |
|   44  | Average-fBodyAcc-mean()-Y       | numeric | [-1, 1] | Frequency domain, Average of means for body acceleration on Y axis.                                       |
|   45  | Average-fBodyAcc-mean()-Z       | numeric | [-1, 1] | Frequency domain, Average of means for body acceleration on Z axis.                                       |
|   46  | Average-fBodyAcc-std()-X        | numeric | [-1, 1] | Frequency domain, Average of standard deviations for body acceleration on X axis.                         |
|   47  | Average-fBodyAcc-std()-Y        | numeric | [-1, 1] | Frequency domain, Average of standard deviations for body acceleration on Y axis.                         |
|   48  | Average-fBodyAcc-std()-Z        | numeric | [-1, 1] | Frequency domain, Average of standard deviations for body acceleration on Z axis.                         |
|   49  | Average-fBodyAccJerk-mean()-X   | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of the body acceleration on X axis.                       |
|   50  | Average-fBodyAccJerk-mean()-Y   | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of the body acceleration on Y axis.                       |
|   51  | Average-fBodyAccJerk-mean()-Z   | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of the body acceleration on Z axis.                       |
|   52  | Average-fBodyAccJerk-std()-X    | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of the body acceleration on X axis.         |
|   53  | Average-fBodyAccJerk-std()-Y    | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of the body acceleration on Y axis.         |
|   54  | Average-fBodyAccJerk-std()-Z    | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of the body acceleration on Z axis.         |
|   55  | Average-fBodyGyro-mean()-X      | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of angular velocity on X axis.                            |
|   56  | Average-fBodyGyro-mean()-Y      | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of angular velocity on Y axis.                            |
|   57  | Average-fBodyGyro-mean()-Z      | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of angular velocity on Z axis.                            |
|   58  | Average-fBodyGyro-std()-X       | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of angular velocity on X axis.              |
|   59  | Average-fBodyGyro-std()-Y       | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of angular velocity on Y axis.              |
|   60  | Average-fBodyGyro-std()-Z       | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of angular velocity on Z axis.              |
|   61  | Average-fBodyAccMag-mean()      | numeric | [-1, 1] | Frequency domain, Average of means for the magnitude of body acceleration.                                |
|   62  | Average-fBodyAccMag-std()       | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the magnitude of body acceleration.                  |
|   63  | Average-fBodyAccJerkMag-mean()  | numeric | [-1, 1] | Frequency domain, Average of means for the magnitude of jerk, of body acceleration.                       |
|   64  | Average-fBodyAccJerkMag-std()   | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the magnitude of jerk, of body acceleration.         |
|   65  | Average-fBodyGyroMag-mean()     | numeric | [-1, 1] | Frequency domain, Average of means for the magnitude of angular velocity.                                 |
|   66  | Average-fBodyGyroMag-std()      | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the magnitude of angular velocity.                   |
|   67  | Average-fBodyGyroJerkMag-mean() | numeric | [-1, 1] | Frequency domain, Average of means for the magnitude of jerk, of angular velocity.                        |
|   68  | Average-fBodyGyroJerkMag-std()  | numeric | [-1, 1] | Frequency domain, Average of standard deviation for the magnitude of jerk, of angular velocity.           |
 
 ## How was the data loaded into R?
 
 The data was directly downloaded from the web, then it was loaded into a temporary file while I sourced only the files that I really needed for this assignment, then unlinked() the temporary file to avoid wasting memory space.
 
    fileUrl <-"https://d396qusza40orc.cloudfront.net/
    getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
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
    
 ## How to load "tidy_data.txt"?
 
 As long as the file tidy_data.txt is loaded within your working directory, the following
 instruction should work. 
 
     tidyData <- read.table(file = "tidy_data.txt",
                                header = TRUE, check.names = FALSE, dec = ".") 
                                
 ## About "tidy_data.txt" table
 
 ## How was "tidy_data.txt" table created?
 
   1- Merges the training and the test sets to create one data set.
    
   UCI HAR Dataset/train/subject_train.txt
   
   UCI HAR Dataset/train/X_train.txt
   
   UCI HAR Dataset/train/y_train.txt
        
   UCI HAR Dataset/test/subject_test.txt
   
   UCI HAR Dataset/test/X_test.txt
   
   UCI HAR Dataset/test/y_test.txt
        
   First I merged both this datasets into a single dataset called dataSet
              
    dataTest <- cbind(dataTest1, dataTest3, dataTest2)

    dataTrain <- cbind(dataTrain1, dataTrain3, dataTrain2)

    dataSet <- rbind(dataTest, dataTrain)

        
   2- Extracts only the measurements on the mean and standard deviation for 
        each measurement. 
        
   Found the features required for the assignment, which were the mean and Standard Deviation.
   
    featureSet <- grep("mean\\(\\)|std\\(\\)", features$Features)

    FinalData <- tbl_df(dataSet[, c(1,2, featureSet + 2)])

   3- Uses descriptive activity names to name the activities in the data set
     
    Used the sub() functions to alter the numbers to the name of its respective activity.
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
   

   4- Appropriately labels the data set with descriptive variable names. 
     
   Used the features extracted from step 2, in order to index tha names of all the measurments. 
   Then used that vector to rename the variable names within the main dataSet.
   
    c <- features[featureSet,]
    c <- c$Features
    names(FinalData) <- c("Subject", "Activity", c)
    FinalData <- tbl_df(FinalData)

   5- From the data set in step 4, creates a second, independent tidy data 
        set with the average of each variable for each activity and each subject.
        
   Using the piping operator I selected the dataset from the previous step, then
   I proceeded to use the group_by() function to group by subject and activity
   and assigned a function (mean). 
              
   Once the new tidy data table was complete I decided to add the "Average" string to 
   each measurement just ot be clear about the function I just appplied.
   
    IndependentTidySet <- FinalData %>% 
    group_by(Subject, Activity) %>% 
    summarise_all(funs(mean))

    NewNames <- c(names(IndependentTidySet[c(1,2)]),
            paste0("Average-", names(IndependentTidySet[-c(1, 2)])))

    names(IndependentTidySet) <- NewNames

    write.table(IndependentTidySet, "tidy_data.txt", row.names = FALSE)
 
 ## Information on the collected data
 
 As it was stated in the UCI webpage from where the data was obtained, this is how the data was collected in its raw form.
 
    The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS,       WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial       linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has       been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

    The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap         (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body           acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each           window, a vector of features was obtained by calculating variables from the time and frequency domain.
