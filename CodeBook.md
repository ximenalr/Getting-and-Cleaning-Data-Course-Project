# Code Book
This code book describes the variables, the data, and any transformations performed to clean up the data and arrive at the `tidy.txt` data set.

# Data Description

The data is downloaded through the `run_analysis.R` script. You can also use the link found in the `README.md`. The following files were used to extract the necessary the datasets and create the finaly tidy dataset:

'README.txt'

'features_info.txt': Shows information about the variables used on the feature vector.

'features.txt': List of all features.

'activity_labels.txt': Lists the activity name and corresponding code number.

'train/X_train.txt': Training set.

'train/y_train.txt': Training labels.

'test/X_test.txt': Test set.

'test/y_test.txt': Test labels.

# R Script Description
The script `run_analysis.R` contains the code used to create the tidy data set. It does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set. 
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates second, independent tidy data set with the average of each variable for each activity and each subject. 

The resulting tidy data set is written out in the file `tidy.txt`.

**Note:** dplyr and data.table packages were used.
