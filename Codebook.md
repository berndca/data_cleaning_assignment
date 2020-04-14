# Human Activity Recognition Using Smartphones Dataset

This dataset is based on the "UCI HAR Dataset"<sup>[1](#IWAAL2012)</sup>. The following overview is taken from 
the file "features_info.txt" of the original dataset:

> "The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
>
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
>
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
>
- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag
>
The set of variables that were estimated from these signals are: 
>
- mean(): Mean value
- std(): Standard deviation
- ...
- angle(): Angle between to vectors.
>
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
>
- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean"

## List of Data Elements

| Field Name | Description | Columns |
| --- | --- | --- |
| Time domain variables |
| tBodyAcc.mean.X | Body acceleration in X direction: mean | 1 |
| tBodyAcc.mean.Y | Body acceleration in Y direction: mean | 2 |
| tBodyAcc.mean.Z | Body acceleration in Z direction: mean | 3 |
| tBodyAcc.std.X | Body acceleration in X direction: standard deviation | 4 |
| tBodyAcc.std.Y | Body acceleration in Y direction: standard deviation | 5 |
| tBodyAcc.std.Z | Body acceleration in Z direction: standard deviation | 6 |
| tGravityAcc.mean.X | Gravity acceleration in X direction: mean | 7 |
| tGravityAcc.mean.Y | Gravity acceleration in Y direction: mean | 8 |
| tGravityAcc.mean.Z | Gravity acceleration in Z direction: mean | 9 |
| tGravityAcc.std.X | Gravity acceleration in X direction: standard deviation | 10 |
| tGravityAcc.std.Y | Gravity acceleration in Y direction: standard deviation | 11 |
| tGravityAcc.std.Z | Gravity acceleration in Z direction: standard deviation | 12 |
| tBodyAccJerk.mean.X | BodyAccJerk acceleration in X direction: mean | 13 |
| tBodyAccJerk.mean.Y | BodyAccJerk acceleration in Y direction: mean | 14 |
| tBodyAccJerk.mean.Z | BodyAccJerk acceleration in Z direction: mean | 15 |
| tBodyAccJerk.std.X | BodyAccJerk acceleration in X direction: standard deviation | 16 |
| tBodyAccJerk.std.Y | BodyAccJerk acceleration in Y direction: standard deviation | 17 |
| tBodyAccJerk.std.Z | BodyAccJerk acceleration in Z direction: standard deviation | 18 |
| tBodyGyro.mean.X | BodyGyro gyro in X direction: mean | 19 |
| tBodyGyro.mean.Y | BodyGyro gyro in Y direction: mean | 20 |
| tBodyGyro.mean.Z | BodyGyro gyro in Z direction: mean | 21 |
| tBodyGyro.std.X | BodyGyro gyro in X direction: standard deviation | 22 |
| tBodyGyro.std.Y | BodyGyro gyro in Y direction: standard deviation | 23 |
| tBodyGyro.std.Z | BodyGyro gyro in Z direction: standard deviation | 24 |
| tBodyGyroJerk.mean.X | BodyGyroJerk gyro jerk in X direction: mean | 25 |
| tBodyGyroJerk.mean.Y | BodyGyroJerk gyro jerk in Y direction: mean | 26 |
| tBodyGyroJerk.mean.Z | BodyGyroJerk gyro jerk in Z direction: mean | 27 |
| tBodyGyroJerk.std.X | BodyGyroJerk gyro jerk in X direction: standard deviation | 28 |
| tBodyGyroJerk.std.Y | BodyGyroJerk gyro jerk in Y direction: standard deviation | 29 |
| tBodyGyroJerk.std.Z | BodyGyroJerk gyro jerk in Z direction: standard deviation | 30 |
| tBodyAccMag.mean | BodyAccMag acceleration magnitude: mean | 31 |
| tBodyAccMag.std | BodyAccMag acceleration magnitude: standard deviation | 32 |
| tGravityAccMag.mean | GravityAccMag acceleration magnitude: mean | 33 |
| tGravityAccMag.std | GravityAccMag acceleration magnitude: standard deviation | 34 |
| tBodyAccJerkMag.mean | BodyAccJerkMag acceleration magnitude: mean | 35 |
| tBodyAccJerkMag.std | BodyAccJerkMag acceleration magnitude: standard deviation | 36 |
| tBodyGyroMag.mean | BodyGyroMag gyro magnitude: mean | 37 |
| tBodyGyroMag.std | BodyGyroMag gyro magnitude: standard deviation | 38 |
| tBodyGyroJerkMag.mean | BodyGyroJerkMag gyro jerk magnitude: mean | 39 |
| tBodyGyroJerkMag.std | BodyGyroJerkMag gyro jerk magnitude: standard deviation | 40 |
| Frequency domain variables |
| fBodyAcc.mean.X | Body acceleration in X direction: mean | 41 |
| tBodyAcc.mean.Y | Body acceleration in Y direction: mean | 42 |
| tBodyAcc.mean.Z | Body acceleration in Z direction: mean | 43 |
| fBodyAcc.std.X | Body acceleration in X direction: standard deviation | 44 |
| fBodyAcc.std.Y | Body acceleration in Y direction: standard deviation | 45 |
| fBodyAcc.std.Z | Body acceleration in Z direction: standard deviation | 46 |
| fBodyAcc.meanFreq.X | Body acceleration in X direction: mean frequency | 47 |
| fBodyAcc.meanFreq.Y | Body acceleration in Y direction: mean frequency | 48 |
| fBodyAcc.meanFreq.Z | Body acceleration in Z direction: mean frequency | 49 |
| fBodyAccJerk.mean.X | BodyAccJerk acceleration in X direction: mean | 50 |
| fBodyAccJerk.mean.Y | BodyAccJerk acceleration in Y direction: mean | 51 |
| fBodyAccJerk.mean.Z | BodyAccJerk acceleration in Z direction: mean | 52 |
| fBodyAccJerk.std.X | BodyAccJerk acceleration in X direction: standard deviation | 53 |
| fBodyAccJerk.std.Y | BodyAccJerk acceleration in Y direction: standard deviation | 54 |
| fBodyAccJerk.std.Z | BodyAccJerk acceleration in Z direction: standard deviation | 55 |
| fBodyAccJerk.meanFreq.X | BodyAccJerk acceleration in X direction: mean frequency | 56 |
| fBodyAccJerk.meanFreq.Y | BodyAccJerk acceleration in Y direction: mean frequency | 57 |
| fBodyAccJerk.meanFreq.Z | BodyAccJerk acceleration in Z direction: mean frequency | 58 |
| fGravityAcc.std.X | Gravity acceleration in X direction: standard deviation | 50 |
| fGravityAcc.std.Y | Gravity acceleration in Y direction: standard deviation | 51 |
| fGravityAcc.std.Z | Gravity acceleration in Z direction: standard deviation | 52 |
| fBodyGyro.mean.X | BodyGyro gyro in X direction: mean | 59 |
| fBodyGyro.mean.Y | BodyGyro gyro in Y direction: mean | 60 |
| fBodyGyro.mean.Z | BodyGyro gyro in Z direction: mean | 61 |
| fBodyGyro.std.X | BodyGyro gyro in X direction: standard deviation | 62 |
| fBodyGyro.std.Y | BodyGyro gyro in Y direction: standard deviation | 63 |
| fBodyGyro.std.Z | BodyGyro gyro in Z direction: standard deviation | 64 |
| fBodyGyro.meanFreq.X | BodyGyro gyro in X direction: mean frequency | 65 |
| fBodyGyro.meanFreq.Y | BodyGyro gyro in Y direction: mean frequency | 66 |
| fBodyGyro.meanFreq.Z | BodyGyro gyro in Z direction: mean frequency | 67 |
| fBodyAccMag.mean | BodyAccMag acceleration magnitude: mean | 68 |
| fBodyAccMag.std | BodyAccMag acceleration magnitude: standard deviation | 69 |
| fBodyAccMag.meanFreq | BodyAccMag acceleration magnitude: mean frequency | 70 |
| fBodyBodyAccJerkMag.mean | Acceleration jerk magnitude: mean | 71 |
| fBodyBodyAccJerkMag.std | Acceleration jerk magnitude: standard deviation | 72 |
| fBodyBodyAccJerkMag.meanFreq | Acceleration jerk magnitude: mean frequency | 73 |
| fBodyBodyGyroMag.mean | Gyro magnitude: mean | 74 |
| fBodyBodyGyroMag.std | Gyro magnitude: standard deviation | 75 |
| fBodyBodyGyroMag.meanFreq | Gyro magnitude: mean frequency | 76 |
| fBodyBodyGyroJerkMag.mean | Gyro jerk magnitude: mean | 77 |
| fBodyBodyGyroJerkMag.std | Gyro jerk magnitude: standard deviation | 78 |
| fBodyBodyGyroJerkMag.meanFreq | Gyro jerk magnitude: mean frequency | 79 |
| angle.tBodyAccMean.gravity | Angle betweeen mean body acceleration and gravity | 80 |
| angle.tBodyAccJerkMean.gravityMean | Angle between acceleration jerk mean and gravity mean | 81 |
| angle.tBodyGyroMean.gravityMean | Angle between gyro mean and gravity mean |82 |
| angle.tBodyGyroJerkMean.gravityMean  | Angle between gyro jerk mean and gravity mean |83 |
| angle.X.gravityMean | Angle of X gravity mean | 84 |
| angle.Y.gravityMean | Angle of Y gravity mean | 85 |
| angle.Z.gravityMean | Angle of Z gravity mean | 86 |
| subjects | Id of subject 1-30 | 87 |
| activity | Activity one of: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING | 88 |

## Generated Data Structures

- selectedData: 10,299 observations of 88 variables, data.frame, merged test and training data mean and std columns only
- groupedMeans: 180 observations of 88 variables, data.frame, grouped means by subject and activity.

<a name="IWAAL2012">1</a>: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012