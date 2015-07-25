#Codebook

##Subject
Identifies the subjects from 1-30

##Activities

- 1 WALKING
- 2 WALKING_UPSTAIRS
- 3 WALKING_DOWNSTAIRS
- 4 SITTING
- 5 STANDING
- 6 LAYING

##Features Description

The features in the resulting tidy dataset correspond to the mean of the measures of the mean and standard deviation from the 
Human Activity Recognition Using Smartphones Dataset, having a measure for each Subject, for each Activity on each axis (x, y, z) for
every feature required by the assignment. From that the name of the features begins with "Activity_Mean-" followed by the name of the measure.

The features can be described as follows (extracted from the "features_info.txt" file from the Human Activity Recognition Using Smartphones Dataset),
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

Then the following indicators specify if the measure is a mean or a standard deviation
- mean(): Mean value
- std(): Standard deviation
	
Note: The angle() features are not taken in consideration as they are not exactly a measure of mean() and std().
