# Samsung_data

##This R script called run_analysis.R does the following:
###1. Merges the training and the test sets to create one data set.

  Load each dataset into R. The training sets contains three different datasets: subject_train(7352 rows, 1 column), X_train(7352 rows, 561 columns), and Y_train(7352 rows, 1 clumn). 
  
  Combining these three dataset by column gives us a single dataset(7352 rows, 563 columns) about the traning measurements of 30 subject's 6 activities. 
  
  Simlarly, combining the three test sets: subject_test(2947 rows, 1 column), X_test(2947 rows, 561 columns), Y_test(2947 rows, 1 column) gives us a single dataset(2947 rows, 563 columns) about the test measurements. 
  
  Then combine these two datasets by row gives one total dataset about these two measurements(10299 rows, 564 columns, one column "Group" added at the end indicated "train", "test").

###2. Extracts only the measurements on the mean and standard deviation for each measurement. 

  According to the feature_info, variables containg "mean()" or "std()" are the estimated mean value and standard deviation of the measurements.  
  
  There is totally 66 variables with "mean()" or "std()" in our dataset from part 1. With 3 other variables of "Subjects", "Activity", and "Group", the subseted dataset has 10299 rows, 69 columns.

###3. Uses descriptive activity names to name the activities in the data set
  
  Replace the value of the variable "Activity" in the dataset from  (1, 2, 3, 4, 5, 6) to ("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

###4. Appropriately labels the data set with descriptive variable names. 

  Rename the variables names, using the value of the feature.txt. For example, change "V1" into "tBodyAcc-mean()-X".
  
###5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

  Using dplyr pacakage, summarize the average of each measurements by activity and by subject. 
  
  Use read.write function to save the final dataset into txt file.
