## Code Book

This code book describes the data used in this project, 
as well as the processing required to create the resulting tidy data set.

### The Input Data (Raw Data)
The raw data in this project was collected from the accelerometers and gyroscopes in Samsung Galaxy S smartphones 
while test subjects performed six activities (standing, sitting, walking, etc.)

**We combined the multiple raw files into single data set following these steps:**

1. Vertically merge the training and test data, subject data and activity data
2. Select a subset of the measurement columns. 
3. Replace  the activity ID with descriptive names from the activity\_labels.txt file
4. Construct descriptive column names for the data set
5. Combine subject, activity, and measured data
6. Create the tidy data set, with average measurement for each activity a test subject did.
7. Write the tidy data set to [TidyData.txt](TidyData.txt).

### The Output Data (Tidy Data)
The output data of this project is a single .txt file that follows the principles of a tidy data set.


### DATA DICTIONARY - TidyData.txt

(11,880 observations of 4 variables)


**Subject**     INTEGER

                Identifies the subjects in this experiment.
                Range from 1 to 30.
               
**Activity**    CHARACTER

                Represents descriptive name for one of the six activities performed by subjects.
                
                Walking
                Walking Upstairs 
                Walking Downstairs 
                Sitting 
                Standing 
                Laying
                
**Variable**    CHARACTER

                Represents descriptive name for one of the sixty six variables selected for the tidy data set 
                (Mean and Standard Deviation measurements from the original data set).
                They are similar to:
                
                timeBodyAccelerometerMeanX
                timeBodyAccelerometerStdY
                timeGravityAccelerometerMeanZ
                timeBodyGyroscopeMeanX
                timeBodyGyroscopeMagnitudeMean
                timeBodyGyroscopeMagnitudeStd
                
**Average**     NUMERIC

                Represents the average value of each measurement for each activity and each subject.
                Range from -1 to 1.
                UNIT OF MEASURE: N/A (the variables were previously normalized).


REFERENCE
---------

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
