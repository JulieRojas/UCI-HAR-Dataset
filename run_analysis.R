# Loading features names 
feature_names <- read.table('features.txt')
# Loading all train data with column names
train_X <- read.table('train/X_train.txt', col.names = feature_names[,2])
#train_y <- read.table('train/y_train.txt', col.names = y_label)
#train_subject <- read.table('train/subject_train.txt', col.names = subject)

# Loading all test data with column names
test_X <- read.table('test/X_test.txt', col.names = feature_names[,2])
#test_y <- read.table('test/y_test.txt', col.names = y_label)
#test_subject <- read.table('test/subject_test.txt', col.names = subject) 

# Combine test set and train set
X <- rbind(train_X, test_X)