library(dplyr)
library(readr)
library(stringr)


activityLabels <- c(
  "WALKING",
  "WALKING_UPSTAIRS",
  "WALKING_DOWNSTAIRS",
  "SITTING",
  "STANDING",
  "LAYING")

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fn <- "dataset.zip"
# download into the placeholder file
if (!file.exists(fn)) {
  success <- download.file(fileUrl, fn)
}

# unzip the file to the temporary directory
unzip(fn, exdir=".", overwrite=TRUE)

# Reading training data
print("Reading training data...")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
subjets_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
train_lables_ids <- read.table("UCI HAR Dataset/train/y_train.txt")
train_lables <- factor(train_lables_ids$V1, levels = 1:6, labels = activityLabels)

# Combining training data
X_train_full <- cbind(X_train, subjects=subjets_train$V1, labels=train_lables)

# Reading test data
print("Reading test data...")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
subjets_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
test_lables_ids <- read.table("UCI HAR Dataset/test/y_test.txt")
test_lables <- factor(test_lables_ids$V1, levels = 1:6, labels = activityLabels)

# Combining test data
print("Processing")
X_test_full <- cbind(X_test, subjects=subjets_test$V1, labels=test_lables)

# Combining training and test data
X_all <- rbind(X_train_full, X_test_full)
colnames(X_all)[562:563] <- c("subjects", "labels")

# Extracting column names with mean and std
features <- readLines("UCI HAR Dataset/features.txt")
features <- gsub("\\(\\)|\\)", "", features)
features <- gsub("(\\-|\\,|\\()", ".", features)

meansNames <- grep("mean", features, ignore.case = TRUE, value = TRUE)
stdNames <- grep("std", features, ignore.case = TRUE, value = TRUE)

columnNamesList <- list(stdNames, meansNames, list("562 subjects", "563 activity"))
columnNamesVector <- unique(unlist(columnNamesList))
colNumsNamesChar <- str_split_fixed(columnNamesVector, " ", 2)
columnNumbers <- parse_integer(colNumsNamesChar[,1])
colNames <- colNumsNamesChar[,2]
columns <- data.frame(index = columnNumbers, names = colNames)
sortedColumns <- arrange(columns, index)
selectedData <- select(X_all, sortedColumns[,1])
colnames(selectedData) <- sortedColumns[,2]

grouped_by <- selectedData %>% group_by(subjects, activity)
groupedMeans <- summarise_all(grouped_by, mean)

save(selectedData, groupedMeans, file = "results.rda")
print("Saved results in results.rda")
