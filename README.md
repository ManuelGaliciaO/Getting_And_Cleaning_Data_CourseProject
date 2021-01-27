# Getting_And_Cleaning_Data_CourseProject


ABOUT

This repository was created for the peer-graded assignment of the "Getting and Cleaning Data" course. The purpose of the asignment was to demonstrate my ability to collect, work with and clean a data set. Preparing a tidy data set that could be used for analysis. 

FILES

This is a summary on the files that are found within this repository:

1- run_analysis.R: This is the R script that was used to source, clean and organize the original datasets into a single tidy data set. 

     1- Merges the training and the test sets to create one data set.
     
              UCI HAR Dataset/train/subject_train.txt
              UCI HAR Dataset/train/X_train.txt
              UCI HAR Dataset/train/y_train.txt
        
              UCI HAR Dataset/test/subject_test.txt
              UCI HAR Dataset/test/X_test.txt
              UCI HAR Dataset/test/y_test.txt
        
              First I merged both this datasets into a single dataset called dataSet
        
     2- Extracts only the measurements on the mean and standard deviation for 
        each measurement. 
        
              Found the features required for the assignment, which were the mean 
              and Standard Deviation.

     3- Uses descriptive activity names to name the activities in the data set
     
              Used the sub() functions to alter the numbers to the name of its respective
              activity.

     4- Appropriately labels the data set with descriptive variable names. 
     
              Used the features extracted from step 2, in order to index tha names
              of all the measurments. Then used that vector to rename the variable names
              within the main dataSet

     5- From the data set in step 4, creates a second, independent tidy data 
        set with the average of each variable for each activity and each subject.
        
              Using the piping operator I selected the dataset from the previous step, then
              I proceeded to use the group_by() function to group by subject and activity
              and assigned a function (mean). 
              
              Once the new tidy data table was complete I decided to add the "Average" string to 
              each measurement just ot be clear about the function I just appplied.

2- tidy_data.txt: This txt file is the tidy data set that resulted from running the run_analysis.R script.

  As required by the assignment, at the end of the script that can be found in run_analysis.R, a tidy   dataset was created with the following instruction.

    write.table(IndependentTidySet, "tidy_data.txt", row.names = FALSE)

3- CodeBook.md: This is a document that details everything about the variables being sourced for the tidy data set. 

  This CodeBook will show all information on the original dataset, where to source it from 
  and variable descriptions. There will also be a description on the process used to get the 
  resulting dataset as well as some information on the original raw dataset.
