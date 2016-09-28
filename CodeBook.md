# CodeBook

This is the Codebook for the tidy data set `tidy.txt`

## Variables

* `subject` - the ID for each subject, in the range 1 to 30.
* `activity` - the activity the subject was undertaking:
  * `1 = WALKING`
  * `2 = WALKING_UPSTAIRS`
  * `3 = WALKING_DOWNSTAIRS`
  * `4 = SITTING`
  * `5 = STANDING`
  * `6 = LAYING`


The following feature variables are described more thoroughly in `/UCI HAR Dataset/README.txt` and `/UCI HAR Dataset/features_info.txt`

* `tBodyAcc-mean()-X`
* `tBodyAcc-mean()-Y` 
* `tBodyAcc-mean()-Z` 
* `tBodyAcc-std()-X` 
* `tBodyAcc-std()-Y` 
* `tBodyAcc-std()-Z` 
* `tGravityAcc-mean()-X` 
* `tGravityAcc-mean()-Y` 
* `tGravityAcc-mean()-Z` 
* `tGravityAcc-std()-X` 
* `tGravityAcc-std()-Y` 
* `tGravityAcc-std()-Z` 
* `tBodyAccJerk-mean()-X` 
* `tBodyAccJerk-mean()-Y` 
* `tBodyAccJerk-mean()-Z` 
* `tBodyAccJerk-std()-X` 
* `tBodyAccJerk-std()-Y` 
* `tBodyAccJerk-std()-Z` 
* `tBodyGyro-mean()-X` 
* `tBodyGyro-mean()-Y` 
* `tBodyGyro-mean()-Z` 
* `tBodyGyro-std()-X` 
* `tBodyGyro-std()-Y` 
* `tBodyGyro-std()-Z` 
* `tBodyGyroJerk-mean()-X` 
* `tBodyGyroJerk-mean()-Y` 
* `tBodyGyroJerk-mean()-Z` 
* `tBodyGyroJerk-std()-X` 
* `tBodyGyroJerk-std()-Y` 
* `tBodyGyroJerk-std()-Z` 
* `tBodyAccMag-mean()` 
* `tBodyAccMag-std()` 
* `tGravityAccMag-mean()` 
* `tGravityAccMag-std()` 
* `tBodyAccJerkMag-mean()` 
* `tBodyAccJerkMag-std()` 
* `tBodyGyroMag-mean()` 
* `tBodyGyroMag-std()` 
* `tBodyGyroJerkMag-mean()` 
* `tBodyGyroJerkMag-std()` 
* `fBodyAcc-mean()-X` 
* `fBodyAcc-mean()-Y` 
* `fBodyAcc-mean()-Z` 
* `fBodyAcc-std()-X` 
* `fBodyAcc-std()-Y` 
* `fBodyAcc-std()-Z` 
* `fBodyAccJerk-mean()-X` 
* `fBodyAccJerk-mean()-Y` 
* `fBodyAccJerk-mean()-Z` 
* `fBodyAccJerk-std()-X` 
* `fBodyAccJerk-std()-Y` 
* `fBodyAccJerk-std()-Z` 
* `fBodyGyro-mean()-X` 
* `fBodyGyro-mean()-Y` 
* `fBodyGyro-mean()-Z` 
* `fBodyGyro-std()-X` 
* `fBodyGyro-std()-Y` 
* `fBodyGyro-std()-Z` 
* `fBodyAccMag-mean()` 
* `fBodyAccMag-std()` 
* `fBodyBodyAccJerkMag-mean()` 
* `fBodyBodyAccJerkMag-std()` 
* `fBodyBodyGyroMag-mean()` 
* `fBodyBodyGyroMag-std()` 
* `fBodyBodyGyroJerkMag-mean()` 
* `fBodyBodyGyroJerkMag-std()`

The data in `tidy.txt` is obtained from the provided data by performing the following operations:

1. Training data, subject and activity are read into three tables. The columns names of the data table is extracted from the `features.txt`.
2. The subject and activity are bound onto the data to form a training data set.
3. The same operations are performed for the test data.
4. The training and test data sets are combined into one data frame.
4. The columns in the total data set pertaining to the mean or standard deviation of a measurement are extracted, along with the corresponding activity and subject label. 
5. The activity and subject are converted to factor variables.
6. The data is melted, and then cast into a data frame where the first two columns are subject and activity, respectively, and the remaining columns are the average (mean) of the appropriate measurement for a given subject and given activity.









