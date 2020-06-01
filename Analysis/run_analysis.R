  library(dplyr)  
  # Loading features names 
  feature_names <- read.table('features.txt')
  # Loading test and train X with column names from feature names
  train_X <- read.table('train/X_train.txt', col.names = feature_names[,2])
  test_X <- read.table('test/X_test.txt', col.names = feature_names[,2])
  # Combine test set and train set
  X <- rbind(train_X, test_X)
  # Get all the column names to lower case.
  colnames(X)<- tolower(colnames(X))
  # Finding the column for mean and standard deviation
  m <- grep("mean", colnames(X))
  s <- grep("std", colnames(X))
  col <- sort(append(m, s))
  # Select columns for mean ans standard deviation 
  Xmean_std <- X[, col]
  # removing meanfreq because it's different from mean
  f <- grep("meanfreq", colnames(Xmean_std))
  Xmean_std <- Xmean_std[,-f]
  
  # 4) Formatting column names.
  colnames(Xmean_std)<- gsub("\\.", "", colnames(Xmean_std))
  colnames(Xmean_std)<- gsub("bodybody", "body", colnames(Xmean_std))
  
  # 3) labels data formatting
  labels_train <- read.table('train/y_train.txt', col.names = c("activity"))
  labels_test <- read.table('test/y_test.txt', col.names = c("activity"))
  # merge
  labels <- rbind(labels_train, labels_test)
  # getting the labels info
  labels_info <- read.table('activity_labels.txt', col.names = c("number", "activity"))
  labels$activity <- as.character(labels$activity)
  for(num in labels_info$number){
    labels[labels == as.character(num)] <- tolower(as.character(labels_info[num, 2]))
  }
  
  # Join activity labels to X dataset 
  # (it was not asked, but I think it makes sense)
  Dataset <- cbind(Xmean_std, labels)
  # Save that dataset
  write.table(Dataset, row.name=FALSE, "Dataset_formatted.txt")
  
  # 5) createsdata set with the average of each variable for each activity and each subject.
  # load subject data 
  train_subject <- read.table('train/subject_train.txt', col.names = c("subject"))
  test_subject <- read.table('test/subject_test.txt', col.names = c("subject"))
  # Combine subjects test set and train set
  subject <- rbind(train_subject, test_subject)
  # Combine subject to Dataset
  Dataset <- cbind(Dataset, subject)
  # Now group by activity and subject
  D <- tbl_df(Dataset)
  grouped<-group_by(D, activity, subject)
  # then, mean of each activity/subject for all column that are not activity and subject.
  mean_dataset <- summarise_at(grouped, c(1:73), mean)
  # Finally, save the dataset as a text file
  write.table(mean_dataset, row.name=FALSE, "Mean_dataset.txt")
