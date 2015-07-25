run_analysis <- function()
{
  features <- read.table("features.txt")
  names(features) <- c("Feature_ID", "Feature_Name")
  activity_labels <- read.table("activity_labels.txt")
  names(activity_labels) <- c("Activity_ID", "Activity_Label")

  # reading and labeling test set
  subject_test <- read.table("test/subject_test.txt")
  names(subject_test) <- ("Subject")
  X_test <- read.table("test/X_test.txt")
  names(X_test) <- features$Feature_Name
  Y_test <- read.table("test/Y_test.txt")
  names(Y_test) <- ("Activity")
  
  test <- cbind(subject_test, Y_test, X_test)
  
  # reading and labeling training set
  subject_train <- read.table("train/subject_train.txt")
  names(subject_train) <- ("Subject")
  X_train <- read.table("train/X_train.txt")
  names(X_train) <- features$Feature_Name
  Y_train <- read.table("train/Y_train.txt")
  names(Y_train) <- ("Activity")
  
  train <- cbind(subject_train, Y_train, X_train)
  
  #merging two sets into one
  allData <- rbind(test, train)
  
  allData <- allData[with(allData, order(Subject, Activity)), ]

  #filtering for the "mean" and "standard deviation" ("std") measures
  f <- names(allData)
  f2 <- grepl("Subject|Activity|std|mean",f)
  all_Mean_STD <- allData[f[f2]]
  
  #renaming columns
  f <- f[f2]
  for(i in 3:length(f))
  {
    f[i] = paste("Activity_Mean-",f[i], sep = "")
  }
  result <- read.table(text = "", col.names = f)
  
  write.table(f, "myfeatures.txt")
  
  #extracting the mean for every activity from every subject
  for(i in min(all_Mean_STD$Subject):max(all_Mean_STD$Subject))
  {
    helper <- all_Mean_STD[all_Mean_STD$Subject == i,]
    for(j in min(helper$Activity):max(helper$Activity))
    {
      helper2 <- helper[helper$Activity == j,]

      means <- colMeans(helper2)

      result <- rbind(result, means)
    }
  }
  
  names(result) <- f
  
  #Renaming the Activity as its corresponding string for improved legibility
  result$Activity <- as.character(result$Activity)
  for(i in 1:length(result$Activity))
  {
    switch(as.character(result$Activity[i])
           ,"1" = result$Activity[i] <- "WALKING"
           ,"2" = result$Activity[i] <- "WALKING_UPSTAIRS"
           ,"3" = result$Activity[i] <- "WALKING_DOWNSTAIRS"
           ,"4" = result$Activity[i] <- "SITTING"
           ,"5" = result$Activity[i] <- "STANDING"
           ,"6" = result$Activity[i] <- "LAYING")
  }
  
  View(result)
  write.table(result, "tidyDataSet.txt", row.names = F)
  #finaltest <- read.table("tidyDataSet.txt", header=TRUE)
  #View(finaltest)
}






