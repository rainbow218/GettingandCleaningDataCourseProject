This code book describes the variables, the data and a description of what run_analysis.R script does.

The data used for the this project was taken from this URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip .

The first step in run_analysis.R is to import the data into R as dataframes and name the columns as appropriate variable names.
Subsequently, the dataframes are merged into one dataframe. This merging is done gradually, by firstly merging the test dataframes (12 dataframes) through a column bind and then merging the training dataframes (12 dataframes) also through a column bind and then merging the test and training dataframes into one through a row bind. An additional column to denote the records as test or training was also added to this dataframe.

Next, the columns of the merged dataframe which comtained mean and standard deviation for each measurement was extracted into a seperate dataframe. The column names for this extracted dataframe were preserved from the merged dataframe.

Next, the activity column of the extracted dataframe which was using integers to denote the activities were converted into descriptive activity names.

Next, 
