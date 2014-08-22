Getting-and-Cleaning-Data
=========================

Getting and Cleaning Data

## Course Project
README.md: explains how all of the scripts work and how they are connected. 

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis. 
submission for this course includes: 
1) a tidy data set as described below, 
2) a link to a Github repository with your script for performing the analysis, and 
3) a code book that describes the variables, the data, and any transformations or work that 
were performed to clean up the data called CodeBook.md. 

## Associated Repository Files
1. CodeBook.md: Contains variable descriptions, the data, and transformations and work that was performed 
to clean up the data.
2. run_analysis.R: Contains the code that will produce the tidy data set required for the course project

## Assignment
### Create one R script called run_analysis.R that does the following: 

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set.
* Appropriately labels the data set with descriptive variable names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### run_anlaysis.R Script Description

* The script utilizes both the reshape2 and plyr packages.  Both packages must be installed prior to running the script
* Downloads and reads the data from a zip file (URL provided in the CodeBook.md).
* Merges both the test and train data sets.
* Adds the features list as a header to the data set containing the accelerometer data (X).
* Creates the Subject data set. 
* Adds the activity name to the 'y' data set.
* Extracts only the mean and standard deviation column from the 'X' data set.
* Merges the 'Subject', 'y' (containing the activity), and 'extract' (containing the mean and standard deviation) data sets using column bind.
* Adds the activity names to the rows in the Activity column.
* Melts the data set to caluclate the mean for each subject's activity.
* Casts the data set displaying Subject then Activity by the Accelerometer variable.
* Writes the 'tidy data' to .csv and .txt formats
