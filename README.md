#Getting and Cleaning Data - Task
##Introduction
The purpose of this task is to analyze the Human Activity Recognition datasets obtained from UC Irvine Machine Learning Repository:
 
  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
  
As a brief introduction, the experiment was conducted to recognize human activities e.g. walking, standing etc by measuring the linear acceleration and angular velocity of the body in the X, Y and Z directions relative to the body. These measurement are obtained from sensors attached to the subject's body. The following are among the signals obtained from the sensors to name a few:

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ

For each of these signals or so called features, a list of variables have been derived. For the purpose of this task, only two variables are of interest which are mean() and std(). All the data provided are analyzed and processed to create a clean and tidy dataset for further ease of analysis. The final objective is to obtain a tidy dataset that contains the average of all the mean() and std() variables for each subject and for each "human activity". An R script named "run_analysis.R" has been written to achieve this.
##The R script
Please download all the datasets from the following link:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

In order to ensure smooth execution of the code, the following should exist in the working directory:

* The script "run_analysis.R"
* "activity_labels.txt"
* "features.txt"
* "test" folder
* "train" folder

Run the script by calling the funtion run_analysis(). The tidy data will then be created and written on a text file named "wearable.txt"

##Comments on the method used
1. The original dataset uses ids to refer to specific human activity e.g. 1 is the id for Walking. The tidy data created will use the descriptive names instead e.g. Walking, Standing, Laying etc
2. From the list of features in the "features.txt" file, only the variables mean() and std() are extracted and these will then be used to subset the measurement dataset e.g. "train/X_train.txt"
3. It was decided to not heavily alter the name of the variables or decompose them into differebt variables as they are mutually exclusive and that by doing so would introduce NA values into the dataset(https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/). The most that was done was removing "-" and "()" symbols as well as capitalizing the first letter of each word

##Final dataset
Since there were 30 subjects and each performed 6 activites with a number of repetitions, averaging all the variables consequently results in a dataset of 180 observations. Extracting only mean() and std() variables results in 66 variables
