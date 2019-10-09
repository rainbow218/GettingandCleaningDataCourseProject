#You should create one R script called run_analysis.R that does the following.

#Merges the training and the test sets to create one data set.
#Appropriately labels the data set with descriptive variable names.

#read the files after setting the correct path containing the data as the working directory
setwd("/home/gbpvb/R/input/coursera/UCI HAR Dataset/test/Inertial Signals")
test_file1 <- read.table("body_acc_x_test.txt")
#add column names to dataframe
for (i in 1:128){
  col_name <- "body_acc_x"
  col_name <-  paste (col_name,i,sep="_")
  names(test_file1)[i] <- col_name
}

test_file2 <- read.table("body_acc_y_test.txt")
#add column names to dataframe
for (i in 1:128){
  col_name <- "body_acc_y"
  col_name <-  paste (col_name,i,sep="_")
  names(test_file2)[i] <- col_name
}

test_file3 <- read.table("body_acc_z_test.txt")
#add column names to dataframe
for (i in 1:128){
  col_name <- "body_acc_z"
  col_name <-  paste (col_name,i,sep="_")
  names(test_file3)[i] <- col_name
}

test_file4 <- read.table("body_gyro_x_test.txt")
#add column names to dataframe
for (i in 1:128){
  col_name <- "body_gyro_x"
  col_name <-  paste (col_name,i,sep="_")
  names(test_file4)[i] <- col_name
}

test_file5 <- read.table("body_gyro_y_test.txt")
#add column names to dataframe
for (i in 1:128){
  col_name <- "body_gyro_y"
  col_name <-  paste (col_name,i,sep="_")
  names(test_file5)[i] <- col_name
}

test_file6 <- read.table("body_gyro_z_test.txt")
#add column names to dataframe
for (i in 1:128){
  col_name <- "body_gyro_z"
  col_name <-  paste (col_name,i,sep="_")
  names(test_file6)[i] <- col_name
}

test_file7 <- read.table("total_acc_x_test.txt")
#add column names to dataframe
for (i in 1:128){
  col_name <- "total_acc_x"
  col_name <-  paste (col_name,i,sep="_")
  names(test_file7)[i] <- col_name
}

test_file8 <- read.table("total_acc_y_test.txt")
#add column names to dataframe
for (i in 1:128){
  col_name <- "total_acc_y"
  col_name <-  paste (col_name,i,sep="_")
  names(test_file8)[i] <- col_name
}

test_file9 <- read.table("total_acc_z_test.txt")
#add column names to dataframe
for (i in 1:128){
  col_name <- "total_acc_z"
  col_name <-  paste (col_name,i,sep="_")
  names(test_file9)[i] <- col_name
}

setwd("/home/gbpvb/R/input/coursera/UCI HAR Dataset/test/")
test_set <- read.table("X_test.txt")
setwd("/home/gbpvb/R/input/coursera/UCI HAR Dataset/")
features <- read.table("features.txt",stringsAsFactors = FALSE)
#add column names to dataframe
for (i in 1:561){
  col_name <- features$V2[i]
  names(test_set)[i] <- col_name
}
setwd("/home/gbpvb/R/input/coursera/UCI HAR Dataset/test/")
test_labels <-read.table("y_test.txt")
#add column name to dataframe
names(test_labels) <- "ACTIVITY"

test_subject_identifier <- read.table("subject_test.txt")
#add column name to dataframe
names(test_subject_identifier) <- "subject_ID"

setwd("/home/gbpvb/R/input/coursera/UCI HAR Dataset/train/Inertial Signals/")
train_file1 <- read.table("body_acc_x_train.txt")
#add column names to dataframe
for (i in 1:128){
  col_name <- "body_acc_x"
  col_name <-  paste (col_name,i,sep="_")
  names(train_file1)[i] <- col_name
}

train_file2 <- read.table("body_acc_y_train.txt")
#add column names to dataframe
for (i in 1:128){
  col_name <- "body_acc_y"
  col_name <-  paste (col_name,i,sep="_")
  names(train_file2)[i] <- col_name
}

train_file3 <- read.table("body_acc_z_train.txt")
#add column names to dataframe
for (i in 1:128){
  col_name <- "body_acc_z"
  col_name <-  paste (col_name,i,sep="_")
  names(train_file3)[i] <- col_name
}

train_file4 <- read.table("body_gyro_x_train.txt")
#add column names to dataframe
for (i in 1:128){
  col_name <- "body_gyro_x"
  col_name <-  paste (col_name,i,sep="_")
  names(train_file4)[i] <- col_name
}

train_file5 <- read.table("body_gyro_y_train.txt")
#add column names to dataframe
for (i in 1:128){
  col_name <- "body_gyro_y"
  col_name <-  paste (col_name,i,sep="_")
  names(train_file5)[i] <- col_name
}

train_file6 <- read.table("body_gyro_z_train.txt")
#add column names to dataframe
for (i in 1:128){
  col_name <- "body_gyro_z"
  col_name <-  paste (col_name,i,sep="_")
  names(train_file6)[i] <- col_name
}

train_file7 <- read.table("total_acc_x_train.txt")
#add column names to dataframe
for (i in 1:128){
  col_name <- "total_acc_x"
  col_name <-  paste (col_name,i,sep="_")
  names(train_file7)[i] <- col_name
}

train_file8 <- read.table("total_acc_y_train.txt")
#add column names to dataframe
for (i in 1:128){
  col_name <- "total_acc_y"
  col_name <-  paste (col_name,i,sep="_")
  names(train_file8)[i] <- col_name
}

train_file9 <- read.table("total_acc_z_train.txt")
#add column names to dataframe
for (i in 1:128){
  col_name <- "total_acc_z"
  col_name <-  paste (col_name,i,sep="_")
  names(train_file9)[i] <- col_name
}

setwd("/home/gbpvb/R/input/coursera/UCI HAR Dataset/train/")
training_set <- read.table("X_train.txt")
#add column names to dataframe
for (i in 1:561){
  col_name <- features$V2[i]
  names(training_set)[i] <- col_name
}

training_labels <- read.table("y_train.txt")
#add column name to dataframe
names(training_labels) <- "ACTIVITY"

training_subject_identifier <- read.table("subject_train.txt")
#add column name to dataframe
names(training_subject_identifier) <- "subject_ID"

#merge files
#merge test files
merged_test <- cbind(test_file1,test_file2,test_file3,test_file4,test_file5,test_file6,test_file7,test_file8,test_file9,test_set,test_labels,test_subject_identifier)
#add column named category to denote record is test or training
merged_test$category="test"

#merge training files
merged_train <- cbind(train_file1,train_file2,train_file3,train_file4,train_file5,train_file6,train_file7,train_file8,train_file9,training_set,training_labels,training_subject_identifier)
#add column named category to denote record is test or training
merged_train$category="training"

#merge test and training files
merged_all <- rbind(merged_test,merged_train)

#Extracts only the measurements on the mean and standard deviation for each measurement.
col_name_index_extract <- c(1153:1158,1193:1198,1233:1238,1273:1278,1313:1318,1353:1354,1366:1367,1379:1380,1392:1393,1405:1406,1497:1502,1525:1527,1576:1581,1655:1656,1668:1669,1681:1682,1691,1694:1695,1704,1707:1713,1714:1716)
col_names_extract <- names(merged_all[col_name_index_extract])
extracted_measurements <- merged_all[,col_names_extract]

#Uses descriptive activity names to name the activities in the data set
for (i in 1:10299) {
  if (extracted_measurements$ACTIVITY[[i]]== 1) {
    extracted_measurements$ACTIVITY[[i]] <- "WALKING"
  } else if (extracted_measurements$ACTIVITY[[i]]== 2){
    extracted_measurements$ACTIVITY[[i]] <- "WALKING_UPSTAIRS"
  } else if (extracted_measurements$ACTIVITY[[i]]== 3){
    extracted_measurements$ACTIVITY[[i]] <- "WALKING_DOWNSTAIRS"
  } else if (extracted_measurements$ACTIVITY[[i]]== 4){
    extracted_measurements$ACTIVITY[[i]] <- "SITTING"
  } else if (extracted_measurements$ACTIVITY[[i]]== 5){
    extracted_measurements$ACTIVITY[[i]] <- "STANDING"
  } else if (extracted_measurements$ACTIVITY[[i]]== 6){
    extracted_measurements$ACTIVITY[[i]] <- "LAYING"
  }
}


#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.




activity <- c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
empty_list <- vector(mode="list", length=6)
avg_df <- data.frame(matrix(ncol = 72, nrow = 0))
colnames(avg_df) <- names(extracted_measurements)[1:72]

for (i in 1:6) { #splitting the dataframe according to the six different activities
  filtered_temp <- extracted_measurements[which(extracted_measurements$ACTIVITY == activity[i]),names(extracted_measurements)]
  empty_list[[i]] <- data.frame(filtered_temp,stringsAsFactors = FALSE)
  u <- unique(empty_list[[i]]$subject_ID)
  for (j in 1:30){ #splitting the six dataframes according to the thirty different subjects
    filtered_temp <- empty_list[[i]][which(empty_list[[i]]$subject_ID == u[j]),names(empty_list[[i]])]
    filtered_temp <- filtered_temp[,1:72]
    #calculate averages for the columns
    averages <- colMeans(filtered_temp)
    averages <- c(averages,ACTIVITY=activity[i],subject_ID=u[j])
    #transpose the averages vector to enable it to be append to the df as a row
    avg_df <- rbind(avg_df,as.data.frame(t(averages)))
  }
}

write.table(avg_df,file="averages.txt",row.names = FALSE)

