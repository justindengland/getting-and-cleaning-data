## Global Data ##
options(stringsAsFactors = FALSE)
# Read the Activity Labels
activityLabels <- read.table(file = "UCI HAR Dataset/activity_labels.txt") # 6 rows x 2 columns
names(activityLabels) <- c("Index", "Label")

# Read the Features
features <- read.table(file = "UCI HAR Dataset/features.txt") # 561 rows x 2 columns
names(features) <- c("Index", "Measurement")
## End Global Data ##

## Training Data ##
# Load the training data set
trainSubjects <- read.table(file = "UCI HAR Dataset/train/subject_train.txt") # 7352 rows x 1 column
names(trainSubjects) <- "Subject"

# Load the training set
trainX <- read.table(file = "UCI HAR Dataset/train/X_train.txt") # 7352 rows x 561 columns

# Label the training set columns with the measurement names
colnames(trainX) <- features[,2]

# Load the training set labels
trainY <- read.table(file = "UCI HAR Dataset/train/y_train.txt") # 7352 rows x 1 column
names(trainY) <- "Activity"
trainActivityLabels <- as.data.frame(activityLabels[trainY[,1], 2])
colnames(trainActivityLabels) <- "Activity"

# Add the subjects and activity labels to the training set
trainX <- cbind(trainSubjects, trainActivityLabels, trainX)

# Load the signal data and label it
trainBodyAccX <- read.table(file = "UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt") # 7352 rows x 128 columns
colnames(trainBodyAccX) <- paste(c("Reading"), 1:128, sep = " ")
trainBodyAccX <- cbind(trainSubjects, trainActivityLabels, trainBodyAccX)

trainBodyAccY <- read.table(file = "UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt") # 7352 rows x 128 columns
colnames(trainBodyAccY) <- paste(c("Reading"), 1:128, sep = " ")
trainBodyAccY <- cbind(trainSubjects, trainActivityLabels, trainBodyAccY)

trainBodyAccZ <- read.table(file = "UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt") # 7352 rows x 128 columns
colnames(trainBodyAccZ) <- paste(c("Reading"), 1:128, sep = " ")
trainBodyAccZ <- cbind(trainSubjects, trainActivityLabels, trainBodyAccZ)

trainBodyGyroX <- read.table(file = "UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt") # 7352 rows x 128 columns
colnames(trainBodyGyroX) <- paste(c("Reading"), 1:128, sep = " ")
trainBodyGyroX <- cbind(trainSubjects, trainActivityLabels, trainBodyGyroX)

trainBodyGyroY <- read.table(file = "UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt") # 7352 rows x 128 columns
colnames(trainBodyGyroY) <- paste(c("Reading"), 1:128, sep = " ")
trainBodyGyroY <- cbind(trainSubjects, trainActivityLabels, trainBodyGyroY)

trainBodyGyroZ <- read.table(file = "UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt") # 7352 rows x 128 columns
colnames(trainBodyGyroZ) <- paste(c("Reading"), 1:128, sep = " ")
trainBodyGyroZ <- cbind(trainSubjects, trainActivityLabels, trainBodyGyroZ)

trainTotalAccX <- read.table(file = "UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt") # 7352 rows x 128 columns
colnames(trainTotalAccX) <- paste(c("Reading"), 1:128, sep = " ")
trainTotalAccX <- cbind(trainSubjects, trainActivityLabels, trainTotalAccX)

trainTotalAccY <- read.table(file = "UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt") # 7352 rows x 128 columns
colnames(trainTotalAccY) <- paste(c("Reading"), 1:128, sep = " ")
trainTotalAccY <- cbind(trainSubjects, trainActivityLabels, trainTotalAccY)

trainTotalAccZ <- read.table(file = "UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt") # 7352 rows x 128 columns
colnames(trainTotalAccZ) <- paste(c("Reading"), 1:128, sep = " ")
trainTotalAccZ <- cbind(trainSubjects, trainActivityLabels, trainTotalAccZ)

## End Training Data ##

## Test Data ##
# Load the test data set
testSubjects <- read.table(file = "UCI HAR Dataset/test/subject_test.txt") # 2947 rows x 1 column
names(testSubjects) <- "Subject"

# Load the test set
testX <- read.table(file = "UCI HAR Dataset/test/X_test.txt") # 2947 rows x 561 columns

# Label the test set columns with the measurement names
colnames(testX) <- features[,2]

# Load the training set labels
testY <- read.table(file = "UCI HAR Dataset/test/y_test.txt") # 2947 rows x 1 column
names(testY) <- "Activity"
testActivityLabels <- as.data.frame(activityLabels[testY[,1], 2])
colnames(testActivityLabels) <- "Activity"

# Add the subjects and activity labels to the test set
testX <- cbind(testSubjects, testActivityLabels, testX)

# Load the signal data and label it
testBodyAccX <- read.table(file = "UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt") # 2947 rows x 128 columns
colnames(testBodyAccX) <- paste(c("Reading"), 1:128, sep = " ")
testBodyAccX <- cbind(testSubjects, testActivityLabels, testBodyAccX)

testBodyAccY <- read.table(file = "UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt") # 2947 rows x 128 columns
colnames(testBodyAccY) <- paste(c("Reading"), 1:128, sep = " ")
testBodyAccY <- cbind(testSubjects, testActivityLabels, testBodyAccY)

testBodyAccZ <- read.table(file = "UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt") # 2947 rows x 128 columns
colnames(testBodyAccZ) <- paste(c("Reading"), 1:128, sep = " ")
testBodyAccZ <- cbind(testSubjects, testActivityLabels, testBodyAccZ)

testBodyGyroX <- read.table(file = "UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt") # 2947 rows x 128 columns
colnames(testBodyGyroX) <- paste(c("Reading"), 1:128, sep = " ")
testBodyGyroX <- cbind(testSubjects, testActivityLabels, testBodyGyroX)

testBodyGyroY <- read.table(file = "UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt") # 2947 rows x 128 columns
colnames(testBodyGyroY) <- paste(c("Reading"), 1:128, sep = " ")
testBodyGyroY <- cbind(testSubjects, testActivityLabels, testBodyGyroY)

testBodyGyroZ <- read.table(file = "UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt") # 2947 rows x 128 columns
colnames(testBodyGyroZ) <- paste(c("Reading"), 1:128, sep = " ")
testBodyGyroZ <- cbind(testSubjects, testActivityLabels, testBodyGyroZ)

testTotalAccX <- read.table(file = "UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt") # 2947 rows x 128 columns
colnames(testTotalAccX) <- paste(c("Reading"), 1:128, sep = " ")
testTotalAccX <- cbind(testSubjects, testActivityLabels, testTotalAccX)

testTotalAccY <- read.table(file = "UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt") # 2947 rows x 128 columns
colnames(testTotalAccY) <- paste(c("Reading"), 1:128, sep = " ")
testTotalAccY <- cbind(testSubjects, testActivityLabels, testTotalAccY)

testTotalAccZ <- read.table(file = "UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt") # 2947 rows x 128 columns
colnames(testTotalAccZ) <- paste(c("Reading"), 1:128, sep = " ")
testTotalAccZ <- cbind(testSubjects, testActivityLabels, testTotalAccZ)
## End Test Data ##

## Combined Data ##
combinedX <- rbind(testX, trainX)
combinedBodyAccX <- rbind(testBodyAccX, trainBodyAccX)
combinedBodyAccY <- rbind(testBodyAccY, trainBodyAccY)
combinedBodyAccZ <- rbind(testBodyAccZ, trainBodyAccZ)
combinedBodyGyroX <- rbind(testBodyGyroX, trainBodyGyroX)
combinedBodyGyroY <- rbind(testBodyGyroY, trainBodyGyroY)
combinedBodyGyroZ <- rbind(testBodyGyroZ, trainBodyGyroZ)
combinedTotalAccX <- rbind(testTotalAccX, trainTotalAccX)
combinedTotalAccY <- rbind(testTotalAccY, trainTotalAccY)
combinedTotalAccZ <- rbind(testTotalAccZ, trainTotalAccZ)
## End Combined Data ##

## Pruned Data Set (only Standard Deviations and Means) ##
prunedX <- combinedX[,c(1:2, grep("(std\\(\\)|mean\\(\\))", names(combinedX)))]
## End Pruned Data Set ##

## Tidy Data Set ##
tidyX <- as.data.frame(matrix(nrow = 0, ncol = ncol(prunedX)))

for (i in 1:30)
{
  for (j in activityLabels[,2])
  {
    dataRow <- c(i, as.character(j), apply(prunedX[(prunedX$Subject == i & prunedX$Activity == j),3:ncol(prunedX)], 2, mean))
    tidyX <- rbind(tidyX, dataRow)
  }
}

# Add the column names
colnames(tidyX) <- colnames(prunedX)

# Write the results file
write.table(tidyX, file = "results.txt", row.name=FALSE)

## End Tidy Data Set ##