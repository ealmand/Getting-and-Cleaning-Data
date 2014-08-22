# CodeBook.md
## run_analysis.R code book code book describes the variables, the data, and any transformations or work that 
were performed to clean up the data.

##Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

## Variables
The initial raw data set when test and train were merged consisted of a 10299 rows by 561 column variables in the raw dataset.  From the 561 column variables, 86 column variables representing and mean and standard deviation were extracted.
The 10299 rows represented the multiple datapoints of the six activites performed by 30 subjects.  The mean of the data points were calculated for each of the six activities by each of the 30 subjects resulting in the final "tidydata" data set consisting of 180 rows by 86 columns.  The first two columns represents the Subject and Activity, respectively.

The accelerometer data were measured in hertz (Hz).  The following table provides a description of each variable in the final submitted, "tidydata" data set:

No | Variable | Description
------------ | -------------
1 | Subject | Content from cell 2
2 | Activity | Content in the second column
3 | tBodyAcc-mean()-X, Y, Z | all mean accelerometer measurements as a body acceleration signal along the X axis recorded within the time domain, averaged for each subject-activity permutation
4 | tBodyAcc-std()-X, Y, Z | all standard deviation accelerometer measurements as a body acceleration signal along the X, Y, and Z axis recorded within the time domain, averaged for each subject-activity permutation
5 | tGravityAcc-mean()-X, Y, Z | all mean accelerometer measurements as a gravity acceleration signal along the X axis recorded within the time domain, averaged for each subject-activity permutation
6 | tGravityAcc-std()-X, Y, Z | all standard deviation accelerometer measurements as a gravity acceleration signal along the X axis recorded within the time domain, averaged for each subject-activity permutation
7 | tBodyAccJerk-mean()-X, Y, Z | all mean accelerometer measurements as a body acceleration signal along the X axis recorded within the time domain, averaged for each subject-activity permutation
8 | tBodyAccJerk-std()-X, Y, Z | all standard deviation accelerometer measurements as a body acceleration signal along the X axis recorded within the time domain, averaged for each subject-activity permutation
9 | tBodyGyro-mean()-X, Y, Z | all mean gyroscope measurements as a body acceleration signal along the X axis recorded within the time domain, averaged for each subject-activity permutation
10 | tBodyGyro-std()-X, Y, Z | all standard deviation gyroscope measurements as a body acceleration signal along the X axis recorded within the time domain, averaged for each subject-activity permutation
11 | tBodyGyroJerk-mean()-X, Y, Z | all mean gyroscope measurements as a body acceleration signal along the X axis recorded within the time domain, averaged for each subject-activity permutation
12 | tBodyGyroJerk-std()-X, Y, Z | all standard deviation gyroscope measurements as a body acceleration signal along the X axis recorded within the time domain, averaged for each subject-activity permutation
13 | tBodyAccMag-mean() | all mean accelerometer magnitude calculations as a body acceleration signal recorded within the time domain, averaged for each subject-activity permutation
14 | tBodyAccMag-std() | all standard deviation accelerometer magnitude calculations as a body acceleration signal recorded within the time domain, averaged for each subject-activity permutation
15 | tGravityAccMag-mean() | all mean accelerometer magnitude calculations as a gravity acceleration signal recorded within the time domain, averaged for each subject-activity permutation
16 | tGravityAccMag-std() | all standard deviation accelerometer magnitude calculations as a gravity acceleration signal recorded within the time domain, averaged for each subject-activity permutation
17 | tBodyAccJerkMag-mean() | all mean accelerometer magnitude calculations as a body acceleration signal recorded within the time domain, averaged for each subject-activity permutation
18 | tBodyAccJerkMag-std() | all standard deviation accelerometer magnitude calculations as a body acceleration signal recorded within the time domain, averaged for each subject-activity permutation
19 | tBodyGyroMag-mean() | all mean gyroscope magnitude calculations as a body acceleration signal recorded within the time domain, averaged for each subject-activity permutation
20 | tBodyGyroMag-std()	| all standard deviation gyroscope magnitude calculations as a body acceleration signal recorded within the time domain, averaged for each subject-activity permutation
21 | tBodyGyroJerkMag-mean() | all mean gyroscope magnitude calculations as a body acceleration signal recorded within the time domain, averaged for each subject-activity permutation
22 | tBodyGyroJerkMag-std()	| all standard deviation gyroscope magnitude calculations as a body acceleration signal recorded within the time domain, averaged for each subject-activity permutation
23 | fBodyAcc-mean()-X, Y, Z	| all mean accelerometer measurements as a body acceleration signal along the X axis recorded within the frequency domain, averaged for each subject-activity permutation
24 | fBodyAcc-std()-X, Y, Z	| all standard deviation accelerometer measurements as a body acceleration signal along the X axis recorded within the frequency domain, averaged for each subject-activity permutation
25 | fBodyAcc-meanFreq()-X, Y, Z	| all mean accelerometer measurements as a body acceleration signal along the X axis recorded within the frequency domain, averaged for each subject-activity permutation
26 | fBodyAccJerk-mean()-X, Y, Z	| 
27 | fBodyAccJerk-std()-X, Y, Z	| all standard deviation accelerometer measurements as a body acceleration signal along the X axis recorded within the frequency domain, averaged for each subject-activity permutation
28 | fBodyAccJerk-meanFreq()-X, Y, Z	| 
29 | fBodyGyro-mean()-X, Y, Z	| all mean gyroscope measurements as a body acceleration signal along the X axis recorded within the frequency domain, averaged for each subject-activity permutation
30 | fBodyGyro-std()-X, Y, Z	
31 | fBodyGyro-meanFreq()-X, Y, Z	| all standard deviation gyroscope measurements as a body acceleration signal along the X, Y, and Z axis recorded within the frequency domain, averaged for each subject-activity permutation
32 | fBodyAccMag-mean()	| all mean accelerometer magnitude calculations as a body acceleration signal recorded within the frequency domain, averaged for each subject-activity permutation
33 | fBodyAccMag-std()	| all standard deviation accelerometer magnitude calculations as a body acceleration signal recorded within the frequency domain, averaged for each subject-activity permutation
34 | fBodyAccMag-meanFreq()	
35 | fBodyBodyAccJerkMag-mean()	| all mean accelerometer magnitude calculations as a body acceleration signal recorded within the frequency domain, averaged for each subject-activity permutation
36 | fBodyBodyAccJerkMag-std()	| all standard deviation accelerometer magnitude calculations as a body acceleration signal recorded within the frequency domain, averaged for each subject-activity permutation
37 | fBodyBodyAccJerkMag-meanFreq()	
38 | fBodyBodyGyroMag-mean()	| all mean gyroscope magnitude calculations as a body acceleration signal recorded within the frequency domain, averaged for each subject-activity permutation
39 | fBodyBodyGyroMag-std()	| all standard deviation gyroscope magnitude calculations as a body acceleration signal recorded within the frequency domain, averaged for each subject-activity permutation
40 | fBodyBodyGyroMag-meanFreq()	
41 | fBodyBodyGyroJerkMag-mean()	| all mean gyroscope magnitude calculations as a body acceleration signal recorded within the frequency domain, averaged for each subject-activity permutation
42 | fBodyBodyGyroJerkMag-std()	| all standard deviation gyroscope magnitude calculations as a body acceleration signal recorded within the frequency domain, averaged for each subject-activity permutation
43 | fBodyBodyGyroJerkMag-meanFreq()	
44 | angle(tBodyAccMean,gravity)	
45 | angle(tBodyAccJerkMean),gravityMean)	
46 | angle(tBodyGyroMean,gravityMean)	
47 | angle(tBodyGyroJerkMean,gravityMean)	
48 | angle(X,gravityMean)

## Data
The data linked to from the course website represent data collected from the accelerometers from 
the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data for the project can be obtained from the URL below.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### run_anlaysis.R Script Description

* The script utilizes both the reshape2 and plyr packages.  Both packages must be installed prior to running the script
* Downloads and reads the data from a zip file (URL provided above).
* Merges both the test and train data sets.
* Adds the features list as a header to the data set containing the accelerometer data (X).
* Creates the Subject data set. 
* Adds the activity name to the 'y' data set.
* Extracts only the mean and standard deviation column from the 'X' data set.
* Merges the 'Subject', 'y' (containing the activity), and 'extract' (containing the mean and standard deviation) data sets using column bind.
* Adds the activity names to the rows in the Activity column.
* Melts the data set to caluclate the mean for each subject's activity.
* Casts the data set displaying Subject then Activity by the Accelerometer variable.
* Writes the 'tidy data' to .csv and .txt formats.
