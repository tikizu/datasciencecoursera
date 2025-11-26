# Code book

## Introduction
This code book gives the variable info for Project assignment for Getting and Cleaning Data course by Johns Hopkins University via Coursera

## variables in the data
There are 4 variables in the submitted data called submitted.txt. It is formatted in long tidy format, where each row represents a mean of a given parameter by subject and activity

**subjid**: gives the subject id for each 1:30 volunteers

**activity**: gives the activity types where the measurements are done

```         
[1] LAYING            
[2] SITTING           
[3] STANDING          
[4] WALKING           
[5] WALKING_DOWNSTAIRS
[6] WALKING_UPSTAIRS  
6 Levels: LAYING ... WALKING_UPSTAIRS
```

**parameter**: gives the parameters measured for which the mean are calculated

```         
 [1] "fBodyAcc-mean()-X"          
 [2] "fBodyAcc-mean()-Y"          
 [3] "fBodyAcc-mean()-Z"          
 [4] "fBodyAcc-std()-X"           
 [5] "fBodyAcc-std()-Y"           
 [6] "fBodyAcc-std()-Z"           
 [7] "fBodyAccJerk-mean()-X"      
 [8] "fBodyAccJerk-mean()-Y"      
 [9] "fBodyAccJerk-mean()-Z"      
[10] "fBodyAccJerk-std()-X"       
[11] "fBodyAccJerk-std()-Y"       
[12] "fBodyAccJerk-std()-Z"       
[13] "fBodyAccMag-mean()"         
[14] "fBodyAccMag-std()"          
[15] "fBodyBodyAccJerkMag-mean()" 
[16] "fBodyBodyAccJerkMag-std()"  
[17] "fBodyBodyGyroJerkMag-mean()"
[18] "fBodyBodyGyroJerkMag-std()" 
[19] "fBodyBodyGyroMag-mean()"    
[20] "fBodyBodyGyroMag-std()"     
[21] "fBodyGyro-mean()-X"         
[22] "fBodyGyro-mean()-Y"         
[23] "fBodyGyro-mean()-Z"         
[24] "fBodyGyro-std()-X"          
[25] "fBodyGyro-std()-Y"          
[26] "fBodyGyro-std()-Z"          
[27] "tBodyAcc-mean()-X"          
[28] "tBodyAcc-mean()-Y"          
[29] "tBodyAcc-mean()-Z"          
[30] "tBodyAcc-std()-X"           
[31] "tBodyAcc-std()-Y"           
[32] "tBodyAcc-std()-Z"           
[33] "tBodyAccJerk-mean()-X"      
[34] "tBodyAccJerk-mean()-Y"      
[35] "tBodyAccJerk-mean()-Z"      
[36] "tBodyAccJerk-std()-X"       
[37] "tBodyAccJerk-std()-Y"       
[38] "tBodyAccJerk-std()-Z"       
[39] "tBodyAccJerkMag-mean()"     
[40] "tBodyAccJerkMag-std()"      
[41] "tBodyAccMag-mean()"         
[42] "tBodyAccMag-std()"          
[43] "tBodyGyro-mean()-X"         
[44] "tBodyGyro-mean()-Y"         
[45] "tBodyGyro-mean()-Z"         
[46] "tBodyGyro-std()-X"          
[47] "tBodyGyro-std()-Y"          
[48] "tBodyGyro-std()-Z"          
[49] "tBodyGyroJerk-mean()-X"     
[50] "tBodyGyroJerk-mean()-Y"     
[51] "tBodyGyroJerk-mean()-Z"     
[52] "tBodyGyroJerk-std()-X"      
[53] "tBodyGyroJerk-std()-Y"      
[54] "tBodyGyroJerk-std()-Z"      
[55] "tBodyGyroJerkMag-mean()"    
[56] "tBodyGyroJerkMag-std()"     
[57] "tBodyGyroMag-mean()"        
[58] "tBodyGyroMag-std()"         
[59] "tGravityAcc-mean()-X"       
[60] "tGravityAcc-mean()-Y"       
[61] "tGravityAcc-mean()-Z"       
[62] "tGravityAcc-std()-X"        
[63] "tGravityAcc-std()-Y"        
[64] "tGravityAcc-std()-Z"        
[65] "tGravityAccMag-mean()"      
[66] "tGravityAccMag-std()" 
```

**mean**: gives the numerical means that are calculated as per the assignment

# Original Feature Selection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:\
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ tGravityAcc-XYZ tBodyAccJerk-XYZ tBodyGyro-XYZ tBodyGyroJerk-XYZ tBodyAccMag tGravityAccMag tBodyAccJerkMag tBodyGyroMag tBodyGyroJerkMag fBodyAcc-XYZ fBodyAccJerk-XYZ fBodyGyro-XYZ fBodyAccMag fBodyAccJerkMag fBodyGyroMag fBodyGyroJerkMag

The set of variables that were estimated from these signals *and kept in this analysis* are:

mean(): Mean value std(): Standard deviation

