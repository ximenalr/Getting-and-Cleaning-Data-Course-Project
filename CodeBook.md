# Code Book
This code book describes the variables, the data, and any transformations performed to clean up the data and arrive at the `tidy.txt` data set.

# Data Description

The data is downloaded through the `run_analysis.R` script. You can also use the link found in the `README.md`. The following files were used to extract the necessary the datasets and create the finaly tidy dataset:

`README.txt`

`features_info.txt`: Shows information about the variables used on the feature vector.

`features.txt`: List of all features.

`activity_labels.txt`: Lists the activity name and corresponding code number.

`train/X_train.txt`: Training set.

`train/y_train.txt`: Training labels.

`test/X_test.txt`: Test set.

`test/y_test.txt`: Test labels.

### The tiday dataset is the average of each variable for each subject and each activity.

Subject column lists integer values from 1 to 30, each number is assigned to one subject.

Activity column include the 6 types listed below:
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

### The tidy data contains 180 observations and 68 variables 
**Note** 66 variables are feature vectors as described in `features_info.txt`) and are all numeric class objects
1. "Subject" - interger class
2. "Activity" - factor class with 6 levels
3. "TimeBodyAccelerometer.mean...X_mean"                
4. "TimeBodyAccelerometer.mean...Y_mean"                
5. "TimeBodyAccelerometer.mean...Z_mean"                
6. "TimeBodyAccelerometer.std...X_mean"                 
7. "TimeBodyAccelerometer.std...Y_mean"                 
8. "TimeBodyAccelerometer.std...Z_mean"                 
9. "TimeGravityAccelerometer.mean...X_mean"             
10. "TimeGravityAccelerometer.mean...Y_mean"             
11. "TimeGravityAccelerometer.mean...Z_mean"             
12. "TimeGravityAccelerometer.std...X_mean"              
13. "TimeGravityAccelerometer.std...Y_mean"              
14. "TimeGravityAccelerometer.std...Z_mean"              
15. "TimeBodyAccelerometerJerk.mean...X_mean"            
16. "TimeBodyAccelerometerJerk.mean...Y_mean"            
18. "TimeBodyAccelerometerJerk.std...X_mean"             
19. "TimeBodyAccelerometerJerk.std...Y_mean"             
20. "TimeBodyAccelerometerJerk.std...Z_mean"             
21. "TimeBodyGyroscope.mean...X_mean"                    
22. "TimeBodyGyroscope.mean...Y_mean"                    
23. "TimeBodyGyroscope.mean...Z_mean"                    
24. "TimeBodyGyroscope.std...X_mean"                     
25. "TimeBodyGyroscope.std...Y_mean"                     
26. "TimeBodyGyroscope.std...Z_mean"                     
27. "TimeBodyGyroscopeJerk.mean...X_mean"                
28. "TimeBodyGyroscopeJerk.mean...Y_mean"                
29. "TimeBodyGyroscopeJerk.mean...Z_mean"                
30. "TimeBodyGyroscopeJerk.std...X_mean"                 
31. "TimeBodyGyroscopeJerk.std...Y_mean"                 
32. "TimeBodyGyroscopeJerk.std...Z_mean"                 
33. "TimeBodyAccelerometerMagnitude.mean.._mean"         
34. "TimeBodyAccelerometerMagnitude.std.._mean"          
35. "TimeGravityAccelerometerMagnitude.mean.._mean"      
36. "TimeGravityAccelerometerMagnitude.std.._mean"       
37. "TimeBodyAccelerometerJerkMagnitude.mean.._mean"     
38. "TimeBodyAccelerometerJerkMagnitude.std.._mean"      
39. "TimeBodyGyroscopeMagnitude.mean.._mean"             
40. "TimeBodyGyroscopeMagnitude.std.._mean"              
41. "TimeBodyGyroscopeJerkMagnitude.mean.._mean"         
42. "TimeBodyGyroscopeJerkMagnitude.std.._mean"          
43. "FrequencyBodyAccelerometer.mean...X_mean"           
44. "FrequencyBodyAccelerometer.mean...Y_mean"           
45. "FrequencyBodyAccelerometer.mean...Z_mean"           
46. "FrequencyBodyAccelerometer.std...X_mean"            
47. "FrequencyBodyAccelerometer.std...Y_mean"            
48. "FrequencyBodyAccelerometer.std...Z_mean"            
49. "FrequencyBodyAccelerometerJerk.mean...X_mean"       
50. "FrequencyBodyAccelerometerJerk.mean...Y_mean"       
51. "FrequencyBodyAccelerometerJerk.mean...Z_mean"       
52. "FrequencyBodyAccelerometerJerk.std...X_mean"        
53. "FrequencyBodyAccelerometerJerk.std...Y_mean"        
54. "FrequencyBodyAccelerometerJerk.std...Z_mean"        
55. "FrequencyBodyGyroscope.mean...X_mean"               
56. "FrequencyBodyGyroscope.mean...Y_mean"               
57. "FrequencyBodyGyroscope.mean...Z_mean"               
58. "FrequencyBodyGyroscope.std...X_mean"                
59. "FrequencyBodyGyroscope.std...Y_mean"                
60. "FrequencyBodyGyroscope.std...Z_mean"                
61. "FrequencyBodyAccelerometerMagnitude.mean.._mean"    
62. "FrequencyBodyAccelerometerMagnitude.std.._mean"     
63. "FrequencyBodyAccelerometerJerkMagnitude.mean.._mean"
64. "FrequencyBodyAccelerometerJerkMagnitude.std.._mean" 
65. "FrequencyBodyGyroscopeMagnitude.mean.._mean"        
66. "FrequencyBodyGyroscopeMagnitude.std.._mean"         
67. "FrequencyBodyGyroscopeJerkMagnitude.mean.._mean"    
68. "FrequencyBodyGyroscopeJerkMagnitude.std.._mean" 

# R Script Description
The script `run_analysis.R` contains the code used to create the tidy data set. It does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set. 
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates second, independent tidy data set with the average of each variable for each activity and each subject. 

The resulting tidy data set is written out in the file `tidy.txt`.

**Note:** dplyr and data.table packages were used.
