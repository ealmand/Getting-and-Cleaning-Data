## Coursera
## Getting and Cleaning Data Course
## Course Project - run_analysis.R

## load packages reshape2 and plyr
## install.packages("reshape2")
## library(reshape2)
## install.packages("plyr")
## library(plyr)

## set working directory
setwd("~/Data Science/Assignments/runanalysis")
        
        ## creating a data directory
        if (!file.exists("data")) {
                dir.create("data")
        }
        
        ## download a file and place in "data" directory
        if (!file.exists("data/UCI HAR dataset")) {
                fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
                zipfile="data/projdata.zip"
                download.file(fileUrl, destfile=zipfile)
                unzip(zipfile, exdir="data")
        }
        
        ## Read data
        train_sub <- read.table(file = "./data/UCI HAR Dataset/train/subject_train.txt", header=F)
        test_sub <- read.table(file = "./data/UCI HAR Dataset/test/subject_test.txt", header=F)
        train_X <- read.table(file = "./data/UCI HAR Dataset/train/X_train.txt", header=F)
        test_X <- read.table(file = "./data/UCI HAR Dataset/test/X_test.txt", header=F)
        train_y <- read.table(file = "./data/UCI HAR Dataset/train/y_train.txt", header=F)
        test_y <- read.table(file = "./data/UCI HAR Dataset/test/y_test.txt", header=F)
        
        ## 1) Merge the training and the test sets to create one data set.
        subject <- rbind(test_sub, train_sub)
        X <- rbind(test_X, train_X)
        y <- rbind(test_y, train_y)
        
        ## Read features and extract the feature names from second column
        features <- read.table("./data/UCI HAR Dataset/features.txt")
        headers <- features[,2]
        
        ## 4) Appropriately labels the data set with descriptive variable names. 
        names(X) <- headers
        names(subject)[1] <- "Subject"
        names(y) <- "Activity"
        
        ## 2) Extracts only the measurements on the mean and standard deviation for each measurement. 
        extract <- X[, grep("mean|std", x=colnames(X), ignore.case=TRUE)]
        
        ## merge the dataset
        merged <- cbind(subject, y, extract)
        

        
        ## 3) Uses descriptive activity names to name the activities in the data set
        ## Read activity labels
        activity <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
        merged$Activity <- factor(merged$Activity, levels = c(1,2,3,4,5,6), labels = activity$V2)
                
        ## 5) Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

        
        ## melt the dataset with the descriptive activity names and calculate mean
        meltmerged <- melt(merged,id=c("Subject", "Activity"),measure.vars=c(3:86))

        tidyData<-aggregate(. ~ Subject + Activity + variable, meltmerged, FUN=mean)
        ## cast the melted dataset according to the average of each variable for each subjects' activity
        casttidydata <- dcast(tidyData, Subject + Activity ~ variable, mean)
        ## Create a files with the new tidy dataset
        write.csv(casttidydata, file = 'tidydata.csv')
        write.table(casttidydata, file = 'tidydata.txt', row.names=F)
## end run_analysis.R