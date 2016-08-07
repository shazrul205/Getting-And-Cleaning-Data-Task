#Codebook
This file describes all the variables in the tidy dataset stored in the "wearable.txt" file
##Variables
There are 69 number of variables in the dataset. Three of them are identifiers to certain data for example the subjects and the activities. The other 66 variables are all measurement from the experiment. These values have been normalized therefore they have no units. The following describe all the variables in the tidy dataset:

* 'datasets' 
    - specifies which data belongs to a test subject and which belongs to a training subject
    - Values: "test", "train"
* 'subject'
    - contains the ids of each subject e.g. 1 refers to subject number 1
    - values: 1,2,3,4,5...30
* 'activity'
   - contains the activities performed by each subject
   - values: "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"
* `tBodyAccMeanX`
   - mean of linear body acceleration in the x direction as a function of time
* `tBodyAccMeanY`
   - mean of linear body acceleration in the y direction as a function of time
* `tBodyAccMeanZ`
   - mean of linear body acceleration in the z direction as a function of time
* `tBodyAccStdX`
   - standard deviation of linear body acceleration in the x direction as a function of time
* `tBodyAccStdY`
   - standard deviation of linear body acceleration in the y direction as a function of time
* `tBodyAccStdZ`
   - standard deviation of linear body acceleration in the z direction as a function of time
* `tGravityAccMeanX`
   - mean of gravitational acceleration in the x direction as a function of time
* `tGravityAccMeanY`
   - mean of gravitational acceleration in the y direction as a function of time
* `tGravityAccMeanZ`
   - mean of gravitational acceleration in the z direction as a function of time
* `tGravityAccStdX`
   - standard deviation of gravitational acceleration in the x direction as a function of time
* `tGravityAccStdY`
   - standard deviation of gravitational acceleration in the y direction as a function of time
* `tGravityAccStdZ`
   - standard deviation of gravitational acceleration in the z direction as a function of time
* `tBodyAccJerkMeanX`
   - mean of linear jerk in the x direction as a function of time
* `tBodyAccJerkMeanY`
   - mean of linear jerk in the y direction as a function of time
* `tBodyAccJerkMeanZ`
   - mean of linear jerk in the z direction as a function of time
* `tBodyAccJerkStdX`
   - standard deviation of linear jerk in the x direction as a function of time
* `tBodyAccJerkStdY`
   - standard deviation of linear jerk in the y direction as a function of time
* `tBodyAccJerkStdZ`
   - standard deviation of linear jerk in the z direction as a function of time
* `tBodyGyroMeanX`
   - mean of body angular velocity in the x direction as a function of time
* `tBodyGyroMeanY`
   - mean of body angular velocity in the y direction as a function of time
* `tBodyGyroMeanZ`
   - mean of body angular velocity in the z direction as a function of time
* `tBodyGyroStdX`
   - standard deviation of body angular velocity in the x direction as a function of time
* `tBodyGyroStdY`
   - standard deviation of body angular velocity in the y direction as a function of time
* `tBodyGyroStdZ`
   - standard deviation of body angular velocity in the z direction as a function of time
* `tBodyGyroJerkMeanX`
   - mean of angular jerk in the x direction as a function of time
* `tBodyGyroJerkMeanY`
   - mean of angular jerk in the y direction as a function of time
* `tBodyGyroJerkMeanZ`
   - mean of angular jerk in the z direction as a function of time
* `tBodyGyroJerkStdX`
   - standard deviation of angular jerk in the x direction as a function of time
* `tBodyGyroJerkStdY`
   - standard deviation of angular jerk in the y direction as a function of time
* `tBodyGyroJerkStdZ`
   - standard deviation of angular jerk in the z direction as a function of time
* `tBodyAccMagMean`
   - mean of the linear body acceleration magnitude as a function of time
* `tBodyAccMagStd`
   - standard deviation of the linear body acceleration magnitude as a function of time
* `tGravityAccMagMean`
   - mean of the gravitational acceleration magnitude as a function of time
* `tGravityAccMagStd`
   - standard deviation of the gravitational acceleration magnitude as a function of time
* `tBodyAccJerkMagMean`
   - mean of the linear jerk magnitude as a function of time
* `tBodyAccJerkMagStd`
   - standard deviation of the linear jerk magnitude as a function of time
* `tBodyGyroMagMean`
   - mean of the body angular velocity magnitude as a function of time
* `tBodyGyroMagStd`
   - standard deviation of the body angular velocity magnitude as a function of time
* `tBodyGyroJerkMagMean`
   - mean of the body angular jerk magnitude as a function of time
* `tBodyGyroJerkMagStd`
   - standard deviation of the body angular jerk magnitude as a function of time
* `fBodyAccMeanX`
   - mean of linear body acceleration in the x direction as a function of frequency
* `fBodyAccMeanY`
   - mean of linear body acceleration in the y direction as a function of frequency
* `fBodyAccMeanZ`
   - mean of linear body acceleration in the z direction as a function of frequency
* `fBodyAccStdX`
   - standard deviation of linear body acceleration in the x direction as a function of frequency
* `fBodyAccStdY`
   - standard deviation of linear body acceleration in the y direction as a function of frequency
* `fBodyAccStdZ`
   - standard deviation of linear body acceleration in the z direction as a function of frequency
* `fBodyAccJerkMeanX`
   - mean of linear jerk in the x direction as a function of frequency
* `fBodyAccJerkMeanY`
   - mean of linear jerk in the y direction as a function of frequency
* `fBodyAccJerkMeanZ`
   - mean of linear jerk in the z direction as a function of frequency
* `fBodyAccJerkStdX`
   - standard deviation of linear jerk in the x direction as a function of frequency
* `fBodyAccJerkStdY`
   - standard deviation of linear jerk in the y direction as a function of frequency
* `fBodyAccJerkStdZ`
   - standard deviation of linear jerk in the z direction as a function of frequency
* `fBodyGyroMeanX`
   - mean of body angular velocity in the x direction as a function of frequency
* `fBodyGyroMeanY`
   - mean of body angular velocity in the y direction as a function of frequency
* `fBodyGyroMeanZ`
   - mean of body angular velocity in the z direction as a function of frequency
* `fBodyGyroStdX`
   - standard deviation of body angular velocity in the x direction as a function of frequency
* `fBodyGyroStdY`
   - standard deviation of body angular velocity in the y direction as a function of frequency
* `fBodyGyroStdZ`
   - standard deviation of body angular velocity in the z direction as a function of frequency
* `fBodyAccMagMean`
   - mean of the linear body acceleration magnitude as a function of frequency
* `fBodyAccMagStd`
   - standard deviation of the linear body acceleration magnitude as a function of frequency
* `fBodyBodyAccJerkMagMean`
   - mean of the linear jerk magnitude as a function of frequency
* `fBodyBodyAccJerkMagStd`
   - standard deviation of the linear jerk magnitude as a function of frequency
* `fBodyBodyGyroMagMean`
   - mean of the body angular velocity magnitude as a function of frequency
* `fBodyBodyGyroMagStd`
   - standard deviation of the body angular velocity magnitude as a function of frequency
* `fBodyBodyGyroJerkMagMean`
   - mean of the body angular jerk magnitude as a function of frequency
* `fBodyBodyGyroJerkMagStd`
   - standard deviation of the body angular jerk magnitude as a function of frequency
 
