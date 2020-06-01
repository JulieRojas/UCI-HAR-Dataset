---
title: "CodeBook.md"
author: "Ju"
date: "6/1/2020"
output: html_document
---
### Packages

run_analysis.R requires the dplyr library.

### Code Description 

The script first load the fatures names from the features.txt text files to be used as column names. Then it loads the the train set and test set X_train.txt and X_test.txt as tables and merge them.

The columns names and all changes to lower cases and the features mean and standard deviation are selected to create a new Dataset, X_mean_std.
The columns names are further formatted by removing the dots and a typo mistake were body is repeated two times.

The labels from the test and train sets are loaded into tables and merged.
labels are represented as a code number from 1 to 6 corresponding to one activity. We change this code number to a string naming the activity using the activity_labels. txt correspondance table. The resulting activity column is then added to the previously formatted dataset, Xmean_std and saved as a text file.

Subjects information was loaded from the subject_train.txt and subject_test.txt. It indicates which individuals was performing the activity. The sets were merged and added to the Xmean_std dataset with the column name <subject>.

Finally we create a dataset containing the average of each variable for each activity and each subject by grouping by activity and subjects using group_by and and using the summarise_at funtion together with the mean function for all the features columns.

The new dataset was saved as <Mean_dataset.txt>.
