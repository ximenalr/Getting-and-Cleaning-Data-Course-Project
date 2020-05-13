# Code Book
This code book describes the variables, the data, and any transformations performed to clean up the data and arrive at the `tidy.txt` data set.

# Data Description

# R Script Description
The script `run_analysis.R` contains the code used to create the tidy data set. It does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set. 
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates second, independent tidy data set with the average of each variable for each activity and each subject. 

The resulting tidy data set is written out in the file `tidy.txt`.
