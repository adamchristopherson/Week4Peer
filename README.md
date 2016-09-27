# Getting and Cleaning Data - Week 4 Peer Assignment

This is the assignment for week 4 of the Coursera class "Getting and Cleaning Data"

The script `run_analysis.R` acts on the data and creates the required tidy data set. It assumes that:

1. The data has been downloaded from the source <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>
2. The data has been downloaded and unpacked in a folder called `UCI HAR Dataset` 

1. Reads in the activity and features
2. Reads the training data, training subject and activity, and names the variables accordingly.
3. Combines the training data, subject and activity in one data frame.
4. Does the same for the test data.
5. Combines the test and training data sets.
6. Subsets out only the columns pertaining to the mean and standard deviation of the variables.
7. Takes the mean per subject and activity.
8. Saves the resulting data frame in the file `tidy.txt`.
