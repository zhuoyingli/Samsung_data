##1.Merges the training and the test sets to create one data set.

##Training sets.##
#Load the subject_train set.
file_subjecttrain <- file.path(getwd(), "train/subject_train.txt")
subject_train <- read.table(file_subjecttrain)

#Load the X_train set.
file_xtrain <- file.path(getwd(), "train/X_train.txt")
x_train <- read.table(file_xtrain)

#Load the Y_train set.
file_ytrain <- file.path(getwd(), "train/Y_train.txt")
y_train <- read.table(file_ytrain)

#Merge the X_train, Y_train, and subject_train sets.
groups <- rep("train", 7352)
train_yx <- cbind(x_train, y_train, subject_train, groups)

##Test sets.##
#Load the subject_test set.
file_subjecttest <- file.path(getwd(), "test/subject_test.txt")
subject_test <- read.table(file_subjecttest)

#Load the X_test set.
file_xtest <- file.path(getwd(), "test/X_test.txt")
x_test <- read.table(file_xtest)

#Load the Y_test set.
file_ytest <- file.path(getwd(), "test/Y_test.txt")
y_test <- read.table(file_ytest)

#Merge the X_test, Y_test, and subject_test sets.
groups <- rep("test", 2947)
test_yx <- cbind(x_test, y_test, subject_test, groups)

##Merge the Training and Test sets together to one data set.
train_test <- rbind(train_yx, test_yx)

##2.Extracts only the measurements on the mean and standard deviation for each measurement. 
sub_df <- train_test[,c(1:6, 41:46, 81:86, 121:126, 161:166, 201, 202, 214, 215, 227, 228, 240, 241, 253, 254, 266:271, 345:350, 424:429, 503, 504, 516, 517, 529, 530, 542, 543, 562:564)]

##3.Uses descriptive activity names to name the activities in the data set.
library(plyr)
activity <- mapvalues(sub_df$V1.1, c(1, 2, 3, 4, 5, 6), c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))
sub_df$V1.1 <- activity

##4.Appropriately labels the data set with descriptive variable names.
feature <- read.table("features.txt")
feature_name <- feature[c(1:6, 41:46, 81:86, 121:126, 161:166, 201, 202, 214, 215, 227, 228, 240, 241, 253, 254, 266:271, 345:350, 424:429, 503, 504, 516, 517, 529, 530, 542, 543, 562:564),2]
var_name <- as.character(feature_name)
names(sub_df)[1:69] <- var_name
names(sub_df)[67:69] <- c("Activity", "Subjects", "Groups")

##5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(dplyr)
tds <- sub_df %>% group_by(Activity, Subjects) %>% summarise_each(funs(mean))
write.table(tds, "tidy_ds.txt", row.name=FALSE) 
