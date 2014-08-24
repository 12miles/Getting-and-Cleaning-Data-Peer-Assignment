Peer Assignment Codebook
================
Generate one R script called run_analysis.R that does the following. 

    Merges the training and the test sets to create one data set.
    Extracts only the measurements on the mean and standard deviation for each measurement. 
    Uses descriptive activity names to name the activities in the data set
    Appropriately labels the data set with descriptive variable names. 
    Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Original Study Information
==============
Human Activity Recognition Using Smartphones Dataset 
    Version 1.0 
    ======================================================================== 
    Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
    Smartlab - Non Linear Complex Systems Laboratory 
    DITEN - Università degli Studi di Genova.
    Via Opera Pia 11A, I-16145, Genoa, Italy.
    activityrecognition@smartlab.ws 
    www.smartlab.ws 
    ======================================================================== 
    
    The experiments have been carried out with a group of 30 volunteers 
    within an age bracket of 19-48 years. Each person performed six activities 
    (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
    wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded 
    accelerometer and gyroscope, we captured 3-axial linear acceleration and 
    3-axial angular velocity at a constant rate of 50Hz. The experiments have 
    been video-recorded to label the data manually. The obtained dataset has 
    been aggregated into a dataset with means of data only.

Files to Merged
===========
- X_train.txt   - 7352 x 561    - Feature Measurements
- X_test.txt    - 2947 x 561    - Feature Measurements
- Y_train.txt   - 7352 x 1      - Activity
- Y_test.txt           |2947 x 1       |Activity
- subject_train.txt    |7352 x 1       |Subject ID
- subject_test.txt     |2947 x 1       |Subject ID


Feature Selection  (see original features_info.txt file)
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ,
tGravityAcc-XYZ,
tBodyAccJerk-XYZ,
tBodyGyro-XYZ,
tBodyGyroJerk-XYZ,
tBodyAccMag,
tGravityAccMag,
tBodyAccJerkMag,
tBodyGyroMag,
tBodyGyroJerkMag,
fBodyAcc-XYZ,
fBodyAccJerk-XYZ,
fBodyGyro-XYZ,
fBodyAccMag,
fBodyAccJerkMag,
fBodyGyroMag,
fBodyGyroJerkMag.

The set of variables that were estimated from these signals are (originally 561 features): 

mean(): Mean value &
std(): Standard deviation.
(total of 66 features averaged of each variable for each activity and each subject)

====================================================================================================

Subject

----------------------------------------------------------------------------------------------------

   Storage mode: integer
   Measurement: interval

            Min:   1.000
            Max:  30.000


====================================================================================================

   datalapply.Activity

----------------------------------------------------------------------------------------------------

   Storage mode: character
   Measurement: nominal

   Values and labels     N     Percent  
                                        
        (unlab.vld.)   180   100.0 100.0

====================================================================================================

   datalapply.tBodyAccMeanX

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:   0.222
            Max:   0.301


====================================================================================================

   datalapply.tBodyAccMeanY

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.041
            Max:  -0.001


====================================================================================================

   datalapply.tBodyAccMeanZ

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.153
            Max:  -0.075


====================================================================================================

   datalapply.tBodyAccStdX

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.996
            Max:   0.627


====================================================================================================

   datalapply.tBodyAccStdY

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.990
            Max:   0.617


====================================================================================================

   datalapply.tBodyAccStdZ

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.988
            Max:   0.609


====================================================================================================

   datalapply.tGravityAccMeanX

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.680
            Max:   0.975


====================================================================================================

   datalapply.tGravityAccMeanY

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.480
            Max:   0.957


====================================================================================================

   datalapply.tGravityAccMeanZ

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.495
            Max:   0.958


====================================================================================================

   datalapply.tGravityAccStdX

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.997
            Max:  -0.830


====================================================================================================

   datalapply.tGravityAccStdY

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:  -0.644


====================================================================================================

   datalapply.tGravityAccStdZ

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.991
            Max:  -0.610


====================================================================================================

   datalapply.tBodyAccJerkMeanX

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  0.043
            Max:  0.130


====================================================================================================

   datalapply.tBodyAccJerkMeanY

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.039
            Max:   0.057


====================================================================================================

   datalapply.tBodyAccJerkMeanZ

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.067
            Max:   0.038


====================================================================================================

   datalapply.tBodyAccJerkStdX

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.544


====================================================================================================

   datalapply.tBodyAccJerkStdY

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.990
            Max:   0.355


====================================================================================================

   datalapply.tBodyAccJerkStdZ

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.993
            Max:   0.031


====================================================================================================

   datalapply.tBodyGyroMeanX

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.206
            Max:   0.193


====================================================================================================

   datalapply.tBodyGyroMeanY

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.204
            Max:   0.027


====================================================================================================

   datalapply.tBodyGyroMeanZ

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.072
            Max:   0.179


====================================================================================================

   datalapply.tBodyGyroStdX

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.268


====================================================================================================

   datalapply.tBodyGyroStdY

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.477


====================================================================================================

   datalapply.tBodyGyroStdZ

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.565


====================================================================================================

   datalapply.tBodyGyroJerkMeanX

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.157
            Max:  -0.022


====================================================================================================

   datalapply.tBodyGyroJerkMeanY

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.077
            Max:  -0.013


====================================================================================================

   datalapply.tBodyGyroJerkMeanZ

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.092
            Max:  -0.007


====================================================================================================

   datalapply.tBodyGyroJerkStdX

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.997
            Max:   0.179


====================================================================================================

   datalapply.tBodyGyroJerkStdY

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.997
            Max:   0.296


====================================================================================================

   datalapply.tBodyGyroJerkStdZ

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.193


====================================================================================================

   datalapply.tBodyAccMagMean

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.645


====================================================================================================

   datalapply.tBodyAccMagStd

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.428


====================================================================================================

   datalapply.tGravityAccMagMean

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.645


====================================================================================================

   datalapply.tGravityAccMagStd

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.428


====================================================================================================

   datalapply.tBodyAccJerkMagMean

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.993
            Max:   0.434


====================================================================================================

   datalapply.tBodyAccJerkMagStd

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.451


====================================================================================================

   datalapply.tBodyGyroMagMean

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.981
            Max:   0.418


====================================================================================================

   datalapply.tBodyGyroMagStd

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.981
            Max:   0.300


====================================================================================================

   datalapply.tBodyGyroJerkMagMean

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.997
            Max:   0.088


====================================================================================================

   datalapply.tBodyGyroJerkMagStd

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.998
            Max:   0.250


====================================================================================================

   datalapply.fBodyAccMeanX

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.537


====================================================================================================

   datalapply.fBodyAccMeanY

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.989
            Max:   0.524


====================================================================================================

   datalapply.fBodyAccMeanZ

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.989
            Max:   0.281


====================================================================================================

   datalapply.fBodyAccStdX

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.997
            Max:   0.659


====================================================================================================

   datalapply.fBodyAccStdY

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.991
            Max:   0.560


====================================================================================================

   datalapply.fBodyAccStdZ

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.987
            Max:   0.687


====================================================================================================

   datalapply.fBodyAccJerkMeanX

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.474


====================================================================================================

   datalapply.fBodyAccJerkMeanY

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.989
            Max:   0.277


====================================================================================================

   datalapply.fBodyAccJerkMeanZ

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.992
            Max:   0.158


====================================================================================================

   datalapply.fBodyAccJerkStdX

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.477


====================================================================================================

   datalapply.fBodyAccJerkStdY

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.990
            Max:   0.350


====================================================================================================

   datalapply.fBodyAccJerkStdZ

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.993
            Max:  -0.006


====================================================================================================

   datalapply.fBodyGyroMeanX

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.993
            Max:   0.475


====================================================================================================

   datalapply.fBodyGyroMeanY

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.329


====================================================================================================

   datalapply.fBodyGyroMeanZ

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.492


====================================================================================================

   datalapply.fBodyGyroStdX

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.197
           Mean:  -0.711
       Std.Dev.:   0.272
       Skewness:   0.401
       Kurtosis:  -1.052

====================================================================================================

   datalapply.fBodyGyroStdY

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.646
           Mean:  -0.645
       Std.Dev.:   0.362
       Skewness:   0.830
       Kurtosis:  -0.090

====================================================================================================

   datalapply.fBodyGyroStdZ

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.987
            Max:   0.522
           Mean:  -0.658
       Std.Dev.:   0.335
       Skewness:   0.631
       Kurtosis:  -0.449

====================================================================================================

   datalapply.fBodyAccMagMean

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.987
            Max:   0.587
           Mean:  -0.537
       Std.Dev.:   0.450
       Skewness:   0.464
       Kurtosis:  -1.197

====================================================================================================

   datalapply.fBodyAccMagStd

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.988
            Max:   0.179
           Mean:  -0.621
       Std.Dev.:   0.352
       Skewness:   0.493
       Kurtosis:  -1.134

====================================================================================================

   datalapply.fBodyBodyAccJerkMagMean

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.538
           Mean:  -0.576
       Std.Dev.:   0.430
       Skewness:   0.424
       Kurtosis:  -1.293

====================================================================================================

   datalapply.fBodyBodyAccJerkMagStd

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.316
           Mean:  -0.599
       Std.Dev.:   0.408
       Skewness:   0.453
       Kurtosis:  -1.301

====================================================================================================

   datalapply.fBodyBodyGyroMagMean

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.987
            Max:   0.204
           Mean:  -0.667
       Std.Dev.:   0.317
       Skewness:   0.582
       Kurtosis:  -0.793

====================================================================================================

   datalapply.fBodyBodyGyroMagStd

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.981
            Max:   0.237
           Mean:  -0.672
       Std.Dev.:   0.292
       Skewness:   0.493
       Kurtosis:  -0.955

====================================================================================================

   datalapply.fBodyBodyGyroJerkMagMean

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.998
            Max:   0.147
           Mean:  -0.756
       Std.Dev.:   0.262
       Skewness:   0.957
       Kurtosis:   0.276

====================================================================================================

   datalapply.fBodyBodyGyroJerkMagStd

----------------------------------------------------------------------------------------------------

   Storage mode: double
   Measurement: interval

            Min:  -0.998
            Max:   0.288
           Mean:  -0.772
       Std.Dev.:   0.250
       Skewness:   1.137
       Kurtosis:   1.122

