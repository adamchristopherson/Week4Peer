setwd(paste(getwd(),"/UCI HAR Dataset",sep=""))

activity <- read.table(file="activity_labels.txt")
activityValues <- activity[,2]
features <- read.table(file="features.txt")
featuresValues <- features[,2]

## read in activity and features

trainingData <- read.table(file="train/X_train.txt")
colnames(trainingData) <- as.character(featuresValues)
trainingSubject <- read.table(file="train/subject_train.txt")
colnames(trainingSubject) <- "subject"
trainingActivity <- read.table(file="train/y_train.txt")
colnames(trainingActivity) <- "activity"

## read training data, subject and activity, naming columns accordinly

trainingData <- cbind(trainingSubject, trainingActivity, trainingData)

## combine the training data together

testData <- read.table(file="test/X_test.txt")
colnames(testData) <- as.character(featuresValues)
testSubject <- read.table(file="test/subject_test.txt")
colnames(testSubject) <- "subject"
testActivity <- read.table(file="test/y_test.txt")
colnames(testActivity) <- "activity"
testData <- cbind(testSubject, testActivity, testData)

## do the same for the test data

totalData <- rbind(trainingData, testData)

## combine the test and training data sets

required <- c("subject", "activity", "mean\\(\\)", "std\\(\\)")
meanStdData <- totalData[, grepl( paste(required, collapse='|') , names(totalData))]
meanStdData$activity <- factor(meanStdData$activity, levels=activity[,1], labels=activity[,2])
meanStdData$subject <- as.factor(meanStdData$subject)

## subset out the required data, on only means and st.devs; makes subject and 
## activity into factor variables.


library(reshape2)
meanStdDataMelt <- melt(meanStdData, id = c("subject", "activity"))
meanStdDataMean <- dcast(meanStdDataMelt, subject + activity ~ variable, mean)

## takes required mean over subject and activity

setwd("../")
write.table(meanStdDataMean, file="tidy.txt", row.name=FALSE)



