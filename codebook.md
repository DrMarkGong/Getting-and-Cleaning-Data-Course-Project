#Codebook
This is a summary of the variables in tidy_data.txt


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.   

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).    

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).    

These signals were used to estimate variables of the feature vector for each pattern:   
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.    


## ID
Subject: The number of the tested subject
Activity: The type of activity the subject is doing when the data is collected

## Measurements
tBodyAcc-Mean-X  
tBodyAcc-Mean-Y  
tBodyAcc-Mean-Z  
tBodyAcc-SD-X  
tBodyAcc-SD-Y  
tBodyAcc-SD-Z  
tGravityAcc-Mean-X  
tGravityAcc-Mean-Y  
tGravityAcc-Mean-Z  
tGravityAcc-SD-X  
tGravityAcc-SD-Y  
tGravityAcc-SD-Z  
tBodyAccJerk-Mean-X  
tBodyAccJerk-Mean-Y  
tBodyAccJerk-Mean-Z  
tBodyAccJerk-SD-X  
tBodyAccJerk-SD-Y  
tBodyAccJerk-SD-Z  
tBodyGyro-Mean-X  
tBodyGyro-Mean-Y  
tBodyGyro-Mean-Z  
tBodyGyro-SD-X  
tBodyGyro-SD-Y  
tBodyGyro-SD-Z  
tBodyGyroJerk-Mean-X  
tBodyGyroJerk-Mean-Y  
tBodyGyroJerk-Mean-Z  
tBodyGyroJerk-SD-X  
tBodyGyroJerk-SD-Y  
tBodyGyroJerk-SD-Z  
tBodyAccMag-Mean  
tBodyAccMag-SD  
tGravityAccMag-Mean  
tGravityAccMag-SD  
tBodyAccJerkMag-Mean  
tBodyAccJerkMag-SD  
tBodyGyroMag-Mean  
tBodyGyroMag-SD  
tBodyGyroJerkMag-Mean  
tBodyGyroJerkMag-SD  
fBodyAcc-Mean-X  
fBodyAcc-Mean-Y  
fBodyAcc-Mean-Z  
fBodyAcc-SD-X  
fBodyAcc-SD-Y  
fBodyAcc-SD-Z  
fBodyAcc-MeanFreq-X  
fBodyAcc-MeanFreq-Y  
fBodyAcc-MeanFreq-Z  
fBodyAccJerk-Mean-X  
fBodyAccJerk-Mean-Y  
fBodyAccJerk-Mean-Z  
fBodyAccJerk-SD-X  
fBodyAccJerk-SD-Y  
fBodyAccJerk-SD-Z  
fBodyAccJerk-MeanFreq-X  
fBodyAccJerk-MeanFreq-Y  
fBodyAccJerk-MeanFreq-Z  
fBodyGyro-Mean-X  
fBodyGyro-Mean-Y  
fBodyGyro-Mean-Z  
fBodyGyro-SD-X  
fBodyGyro-SD-Y  
fBodyGyro-SD-Z  
fBodyGyro-MeanFreq-X  
fBodyGyro-MeanFreq-Y  
fBodyGyro-MeanFreq-Z  
fBodyAccMag-Mean  
fBodyAccMag-SD  
fBodyAccMag-MeanFreq  
fBodyBodyAccJerkMag-Mean  
fBodyBodyAccJerkMag-SD  
fBodyBodyAccJerkMag-MeanFreq  
fBodyBodyGyroMag-Mean  
fBodyBodyGyroMag-SD  
fBodyBodyGyroMag-MeanFreq  
fBodyBodyGyroJerkMag-Mean  
fBodyBodyGyroJerkMag-SD  
fBodyBodyGyroJerkMag-MeanFreq  

## Activity labels
1  WALKING  
2  WALKING_UPSTAIRS  
3  WALKING_DOWNSTAIRS  
4  SITTING  
5  STANDING  
6  LAYING  
