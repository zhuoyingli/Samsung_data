The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

1 tBodyAcc-mean()-X: Mean value of the body acceleration time domain in the X direction

2 tBodyAcc-mean()-Y: Mean value of the body acceleration time domain in the Y direction

3 tBodyAcc-mean()-Z: Mean value of the body acceleration time domain in the Z direction

4 tBodyAcc-std()-X: Standard deviation of the body acceleration time domain in the X direction

5 tBodyAcc-std()-Y: Standard deviation of the body acceleration time domain in the Y direction

6 tBodyAcc-std()-Z: Standard deviation of the body acceleration time domain in the Z direction

41 tGravityAcc-mean()-X: Mean value of the gravity acceleration time domain in the X direction

42 tGravityAcc-mean()-Y: Mean value of the gravity acceleration time domain in the Y direction

43 tGravityAcc-mean()-Z: Mean value of the gravity acceleration time domain in the Z direction

44 tGravityAcc-std()-X: Standard deviation of the gravity acceleration time domain in the X direction 

45 tGravityAcc-std()-Y: Standard deviation of the gravity acceleration time domain in the Y direction 

46 tGravityAcc-std()-Z: Standard deviation of the gravity acceleration time domain in the Z direction 

81 tBodyAccJerk-mean()-X: Mean value of the body linear acceleration time domain in the X direction 

82 tBodyAccJerk-mean()-Y: Mean value of the body linear acceleration time domain in the Y direction 

83 tBodyAccJerk-mean()-Z: Mean value of the body linear acceleration time domain in the Z direction 

84 tBodyAccJerk-std()-X: Standard deviation of the body linear acceleration time domain in the X direction

85 tBodyAccJerk-std()-Y: Standard deviation of the body linear acceleration time domain in the Y direction

86 tBodyAccJerk-std()-Z: Standard deviation of the body linear acceleration time domain in the Z direction

121 tBodyGyro-mean()-X: Mean value of the body gyroscope time domain in the X direction

122 tBodyGyro-mean()-Y: Mean value of the body gyroscope time domain in the Y direction

123 tBodyGyro-mean()-Z: Mean value of the body gyroscope time domain in the Z direction

124 tBodyGyro-std()-X: Standard deviation of the body gyroscope time domain in the X direction

125 tBodyGyro-std()-Y: Standard deviation of the body gyroscope time domain in the Y direction

126 tBodyGyro-std()-Z: Standard deviation of the body gyroscope time domain in the Z direction

161 tBodyGyroJerk-mean()-X: Mean value of the angular velocity time domain in the X direction

162 tBodyGyroJerk-mean()-Y: Mean value of the angular velocity time domain in the Y direction

163 tBodyGyroJerk-mean()-Z: Mean value of the angular velocity time domain in the Z direction

164 tBodyGyroJerk-std()-X: Standard deviation of the angular velocity time domain in the X direction

165 tBodyGyroJerk-std()-Y: Standard deviation of the angular velocity time domain in the Y direction

166 tBodyGyroJerk-std()-Z: Standard deviation of the angular velocity time domain in the Z direction

201 tBodyAccMag-mean(): Mean value of the body acceleration magnitude time domain

202 tBodyAccMag-std(): Standard deviation of the body acceleration magnitude time domain 

214 tGravityAccMag-mean(): Mean value of the gravity acceleration magnitude time domain 

215 tGravityAccMag-std(): Standard deviation of the gravity acceleration magnitude time domain

227 tBodyAccJerkMag-mean(): Mean value of the body linear acceleration magnitude time domain

228 tBodyAccJerkMag-std(): Standard deviation of the body linear acceleration magnitude time domain

240 tBodyGyroMag-mean(): Mean value of the body gyroscope  magnitude time domain 

241 tBodyGyroMag-std(): Standard deviation of the body gyroscope  magnitude time domain 

253 tBodyGyroJerkMag-mean(): Mean value of the angular velocity time domain 

254 tBodyGyroJerkMag-std(): Standard deviation of the angular velocity time domain 

266 fBodyAcc-mean()-X: Mean value of the body acceleration frequency domain in the X direction

267 fBodyAcc-mean()-Y: Mean value of the body acceleration frequency domain in the Y direction

268 fBodyAcc-mean()-Z: Mean value of the body acceleration frequency domain in the Z direction

269 fBodyAcc-std()-X: Standard deviation of the body acceleration frequency domain in the X direction

270 fBodyAcc-std()-Y: Standard deviation of the body acceleration frequency domain in the Y direction

271 fBodyAcc-std()-Z: Standard deviation of the body acceleration frequency domain in the Z direction

345 fBodyAccJerk-mean()-X: Mean value of the body linear acceleration frequency domain in the X direction 

346 fBodyAccJerk-mean()-Y: Mean value of the body linear acceleration frequency domain in the Y direction 

347 fBodyAccJerk-mean()-Z: Mean value of the body linear acceleration frequency domain in the Z direction 

348 fBodyAccJerk-std()-X: Standard deviation of the body linear acceleration frequency domain in the X direction 

349 fBodyAccJerk-std()-Y: Standard deviation of the body linear acceleration frequency domain in the Y direction 

350 fBodyAccJerk-std()-Z: Standard deviation of the body linear acceleration frequency domain in the Z direction 

424 fBodyGyro-mean()-X: Mean value of the body gyroscope frequency domain in the X direction

425 fBodyGyro-mean()-Y: Mean value of the body gyroscope frequency domain in the Y direction

426 fBodyGyro-mean()-Z: Mean value of the body gyroscope frequency domain in the Z direction

427 fBodyGyro-std()-X: Standard deviation of the body gyroscope frequency domain in the X direction

428 fBodyGyro-std()-Y: Standard deviation of the body gyroscope frequency domain in the Y direction

429 fBodyGyro-std()-Z: Standard deviation of the body gyroscope frequency domain in the Z direction

503 fBodyAccMag-mean(): Mean value of the body acceleration magnitude frequency domain

504 fBodyAccMag-std(): Standard deviation of the body acceleration magnitude frequency domain

516 fBodyBodyAccJerkMag-mean(): Mean value of the body linear acceleration magnitude frequency domain

517 fBodyBodyAccJerkMag-std(): Standard deviation of the body linear acceleration magnitude frequency domain

529 fBodyBodyGyroMag-mean(): Mean value of the body gyroscope  magnitude frequency domain

530 fBodyBodyGyroMag-std(): Standard deviation of the body gyroscope  magnitude frequency domain

542 fBodyBodyGyroJerkMag-mean(): Mean value of the angular velocity frequency domain 

543 fBodyBodyGyroJerkMag-std(): Standard deviation of the angular velocity frequency domain 

562 Activity: six Activity names

563 Subjects: 30 volunteers, values: 1-30. 

564 Groups: "Train" or "Test".
