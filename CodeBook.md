# CodeBook.md
## run_analysis.R Code Book

This code book describes the variables, the data, and any transformations or work that 
were performed to clean up the data.

## Variables

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The initial raw data set when test and train were merged consisted of a 10299 rows by 561 column variables in the raw dataset.  From the 561 column variables, 86 column variables representing and mean and standard deviation were extracted.

The 10299 rows represented the multiple datapoints of the six activites performed by 30 subjects.  The mean of the data points were calculated for each of the six activities by each of the 30 subjects resulting in the final "tidydata" data set consisting of 180 rows by 86 columns.  The first two columns represents the Subject and Activity, respectively.

The accelerometer data were measured in hertz (Hz).

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
