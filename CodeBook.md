# Code Book
This code book describes the variables, the data, and any transformations performed to clean up the data and arrive at the `tidy.txt` data set.

# R Script Description
The script `run_analysis.R` contains the code used to create the tidy data set. It does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set. 
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates second, independent tidy data set with the average of each variable for each activity and each subject. 

The resulting tidy data set is written out in the file `tidy.txt`.

**Note:** dplyr and data.table packages were used.

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
3. "TimeBodyAccelerometer.mean...X"                
4. "TimeBodyAccelerometer.mean...Y"                
5. "TimeBodyAccelerometer.mean...Z"                
6. "TimeBodyAccelerometer.std...X"                 
7. "TimeBodyAccelerometer.std...Y"                 
8. "TimeBodyAccelerometer.std...Z"                 
9. "TimeGravityAccelerometer.mean...X"             
10. "TimeGravityAccelerometer.mean...Y"             
11. "TimeGravityAccelerometer.mean...Z"             
12. "TimeGravityAccelerometer.std...X"              
13. "TimeGravityAccelerometer.std...Y"              
14. "TimeGravityAccelerometer.std...Z"              
15. "TimeBodyAccelerometerJerk.mean...X"            
16. "TimeBodyAccelerometerJerk.mean...Y"            
18. "TimeBodyAccelerometerJerk.std...X"             
19. "TimeBodyAccelerometerJerk.std...Y"             
20. "TimeBodyAccelerometerJerk.std...Z"             
21. "TimeBodyGyroscope.mean...X"                    
22. "TimeBodyGyroscope.mean...Y"                    
23. "TimeBodyGyroscope.mean...Z"                    
24. "TimeBodyGyroscope.std...X"                     
25. "TimeBodyGyroscope.std...Y"                     
26. "TimeBodyGyroscope.std...Z"                     
27. "TimeBodyGyroscopeJerk.mean...X"                
28. "TimeBodyGyroscopeJerk.mean...Y"                
29. "TimeBodyGyroscopeJerk.mean...Z"                
30. "TimeBodyGyroscopeJerk.std...X"                 
31. "TimeBodyGyroscopeJerk.std...Y"                 
32. "TimeBodyGyroscopeJerk.std...Z"                 
33. "TimeBodyAccelerometerMagnitude.mean.."         
34. "TimeBodyAccelerometerMagnitude.std.."          
35. "TimeGravityAccelerometerMagnitude.mean.."      
36. "TimeGravityAccelerometerMagnitude.std.."       
37. "TimeBodyAccelerometerJerkMagnitude.mean.."     
38. "TimeBodyAccelerometerJerkMagnitude.std.."      
39. "TimeBodyGyroscopeMagnitude.mean.."             
40. "TimeBodyGyroscopeMagnitude.std.."              
41. "TimeBodyGyroscopeJerkMagnitude.mean.."         
42. "TimeBodyGyroscopeJerkMagnitude.std.."          
43. "FrequencyBodyAccelerometer.mean...X"           
44. "FrequencyBodyAccelerometer.mean...Y"           
45. "FrequencyBodyAccelerometer.mean...Z"           
46. "FrequencyBodyAccelerometer.std...X"            
47. "FrequencyBodyAccelerometer.std...Y"            
48. "FrequencyBodyAccelerometer.std...Z"            
49. "FrequencyBodyAccelerometerJerk.mean...X"       
50. "FrequencyBodyAccelerometerJerk.mean...Y"       
51. "FrequencyBodyAccelerometerJerk.mean...Z"       
52. "FrequencyBodyAccelerometerJerk.std...X"        
53. "FrequencyBodyAccelerometerJerk.std...Y"        
54. "FrequencyBodyAccelerometerJerk.std...Z"        
55. "FrequencyBodyGyroscope.mean...X"               
56. "FrequencyBodyGyroscope.mean...Y"               
57. "FrequencyBodyGyroscope.mean...Z"               
58. "FrequencyBodyGyroscope.std...X"                
59. "FrequencyBodyGyroscope.std...Y"                
60. "FrequencyBodyGyroscope.std...Z"                
61. "FrequencyBodyAccelerometerMagnitude.mean.."    
62. "FrequencyBodyAccelerometerMagnitude.std.."     
63. "FrequencyBodyAccelerometerJerkMagnitude.mean.."
64. "FrequencyBodyAccelerometerJerkMagnitude.std.." 
65. "FrequencyBodyGyroscopeMagnitude.mean.."        
66. "FrequencyBodyGyroscopeMagnitude.std.."         
67. "FrequencyBodyGyroscopeJerkMagnitude.mean.."    
68. "FrequencyBodyGyroscopeJerkMagnitude.std.." 
