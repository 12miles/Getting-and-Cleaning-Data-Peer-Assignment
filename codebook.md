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
Human Activity Recognition Using Smartphones Dataset Version 1.0 
    
    
    Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
    Smartlab - Non Linear Complex Systems Laboratory 
    DITEN - Università degli Studi di Genova.
    Via Opera Pia 11A, I-16145, Genoa, Italy.
    activityrecognition@smartlab.ws 
    www.smartlab.ws 

    
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
- Y_test.txt           - 2947 x 1       -Activity
- subject_train.txt    - 7352 x 1       -Subject ID
- subject_test.txt      - 2947 x 1       -Subject ID


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

Extracts only the measurements on the mean and standard deviation for each measurement. 
mean(): Mean value &
std(): Standard deviation.

(total of 66 features averaged of each variable for each activity and each subject)

Uses descriptive activity names to name the activities (originally assigned values 1-6) in the data set (walking, walkingupstairs, walkingdownstairs, sitting, standing, laying)

Appropriately labels the data set with descriptive variable names, such as TimeBodyAccMeanX instead of V2 or V3.


Position #1 Subject
----------------------------------------------------------------------------------------------------
   Storage mode: integer
   Measurement: interval

            Min:   1.000
            Max:  30.000

Position #2 Activity    Position #2 
----------------------------------------------------------------------------------------------------
   Storage mode: character
   Measurement: nominal

   Values and labels     N     Percent  
                                        
        (unlab.vld.)   180   100.0 100.0

Position # 3 TimeBodyAccMeanX  
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:   0.222
            Max:   0.301

Position # 4 TiimeBodyAccMeanY 
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.041
            Max:  -0.001

Positin #5. TimeBodyAccMeanZ
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.153
            Max:  -0.075


Position #6. TimeBodyAccStdX
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.996
            Max:   0.627


Position #7. TimeBodyAccStdY
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.990
            Max:   0.617

Position #8. TimeBodyAccStdZ
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.988
            Max:   0.609

Postion #9. TimeGravityAccMeanX
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.680
            Max:   0.975

Position #10. TimeGravityAccMeanY
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.480
            Max:   0.957

Position #11. TimeGravityAccMeanZ
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.495
            Max:   0.958

Position #12. TimeGravityAccStdX
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.997
            Max:  -0.830

Position #13. TimeGravityAccStdY
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:  -0.644

Position #14. TimeGravityAccStdZ
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.991
            Max:  -0.610

Position #15. TimeBodyAccJerkMeanX
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  0.043
            Max:  0.130

Position #16. TimeBodyAccJerkMeanY
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.039
            Max:   0.057

Position #17. TimeBodyAccJerkMeanZ
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.067
            Max:   0.038

Position #18. TimeBodyAccJerkStdX
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.544

Postion # 19. TimeBodyAccJerkStdY
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.990
            Max:   0.355

Position #20. TimeBodyAccJerkStdZ
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.993
            Max:   0.031

Position #21. TimeBodyGyroMeanX
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.206
            Max:   0.193

Position #22. TimeBodyGyroMeanY
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.204
            Max:   0.027

Position #23. TimeBodyGyroMeanZ
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.072
            Max:   0.179

Position #24. TimeBodyGyroStdX
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.268

Position #25. TimeBodyGyroStdY
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.477

Position #26. TimeBodyGyroStdZ
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.565

Position #27. TimeBodyGyroJerkMeanX
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.157
            Max:  -0.022

Position #28. TimeBodyGyroJerkMeanY
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.077
            Max:  -0.013

Position #29. TimeBodyGyroJerkMeanZ
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.092
            Max:  -0.007

Position #30. TimeBodyGyroJerkStdX
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.997
            Max:   0.179

Position #31. TimeBodyGyroJerkStdY
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.997
            Max:   0.296

Position #32 TimeBodyGyroJerkStdZ
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.193

Position #33 TimeBodyAccMagMean
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.645

Position #34. TimeBodyAccMagStd
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.428

Positioin #35. TimeGravityAccMagMean
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.645

Position #36. TimeGravityAccMagStd
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.428

Position #37. TimeBodyAccJerkMagMean
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.993
            Max:   0.434

Position #38. TimeBodyAccJerkMagStd
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.451

Position #39. TimeBodyGyroMagMean
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.981
            Max:   0.418

Position #40. TimeBodyGyroMagStd
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.981
            Max:   0.300

Position #41. TimeBodyGyroJerkMagMean
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.997
            Max:   0.088

Position #42. TimeBodyGyroJerkMagStd
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.998
            Max:   0.250

Position #43. FrequencyBodyAccMeanX
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.537

Position #44. FrequencyBodyAccMeanY
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.989
            Max:   0.524

Position #45. FrequencyBodyAccMeanZ
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.989
            Max:   0.281

Position #46. FrequencyBodyAccStdX
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.997
            Max:   0.659

Position #47. FrequencyBodyAccStdY
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.991
            Max:   0.560

Position #48. FrequencyBodyAccStdZ
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.987
            Max:   0.687

Position #49. FrequencyBodyAccJerkMeanX
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.474

Position #50. FrequencyBodyAccJerkMeanY
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.989
            Max:   0.277

Position #51. FrequencyBodyAccJerkMeanZ
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.992
            Max:   0.158

Position #52. FrequencyBodyAccJerkStdX
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.477

Position #53. FrequencyBodyAccJerkStdY
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.990
            Max:   0.350

Positon #54. FrequencyBodyAccJerkStdZ
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.993
            Max:  -0.006

Position #55. FrequencyBodyGyroMeanX
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.993
            Max:   0.475

Position #56. FrequencyBodyGyroMeanY
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.329

Position #57. FrequencyBodyGyroMeanZ
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.986
            Max:   0.492

Position #58. FrequencyBodyGyroStdX
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.995
            Max:   0.197

Positon #59. FrequencyBodyGyroStdY
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.646

Position #60. FrequencyBodyGyroStdZ
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.987
            Max:   0.522

Position #61. FrequencyBodyAccMagMean
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.987
            Max:   0.587

Position #62. FrequencyBodyAccMagStd
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.988
            Max:   0.179

Position #63. FrequencyBodyBodyAccJerkMagMean
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.538

Position #64. FrequencyBodyBodyAccJerkMagStd
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.994
            Max:   0.316


Position #65. FrequencyBodyBodyGyroMagMean
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.987
            Max:   0.204

Position #66. FrequencyBodyBodyGyroMagStd
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.981
            Max:   0.237

Position #67. FrequencyBodyBodyGyroJerkMagMean
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.998
            Max:   0.147

Position #68. FrequencyBodyBodyGyroJerkMagStd
----------------------------------------------------------------------------------------------------
   Storage mode: double
   Measurement: interval

            Min:  -0.998
            Max:   0.288


