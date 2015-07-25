
#Course Project for Getting and Cleaning Data Course on Coursera by Jhons Hopkins University
Solution by: Francisco Alonso, 
Caracas - Venezuela, 
francisco.a.alonso.s@gmail.com

Using the Human Activity Recognition Using Smartphones Dataset Version 1.0 [1]

The assigment consists on one R script called run_analysis.R that does the following:
	1. Merges the training and the test sets to create one data set.
	2. Extracts only the measurements on the mean and standard deviation for each measurement. 
	3. Uses descriptive activity names to name the activities in the data set.
	4. Appropriately labels the data set with descriptive variable names.
	5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The files generated for this solution include:

- README.md
- Codebook.md
- ReuiredFeatures.md
- run_analysis.R
- tidyDataSet.txt

The run_analysis.R script first reads and labels the data from the train and test data set files. 
It then merges the data into a single data.frame (1) to extract only the measures of the mean and standard deviation (2). 
After that, the columns are renamed to express clearly their content(4) and the mean of each measurement required is extracted for
each Subject/Activity pair (5). Finally the Activity numbers are converted to their corresponding strings (3) and the tidy data is returned
n the file "tidyDataSet.txt".

=============================================================
The original files on the dataset that were used in the assignment include:
- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
