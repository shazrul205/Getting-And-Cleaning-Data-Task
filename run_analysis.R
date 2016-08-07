## This script processes all the data provided and make them tidy

run_analysis <- function(){
  
  library(dplyr)
  
  ###################################################################
  ##             Read all the required text files into R           ##
  ###################################################################
                                                                   
  ##This contains the types of human activities that were performed##
  ##and their respective ids                                       ##
  activityLabel <- read.table("activity_labels.txt",               
                    col.names = c("id","activity"))                
                                                                   
  ##This contains the ids of the activities that were performed    ##
  ##by the training subjects                                       ##      
  trainActivity <- read.table("train/y_train.txt",                 
                              col.names = "id")                    
  
  ##This contains the ids of the activities that were performed    ##
  ##by the test subjects                                           ##      
  testActivity <- read.table("test/y_test.txt",                 
                              col.names = "id")                                                                                     
  
  ##This contains the ids of the training subjects e.g. id=1 is    ##
  ##subject number 1                                               ##
  trainSubject <- read.table("train/subject_train.txt",
                             col.names = "subject")
  
  ##This contains the ids of the test subjects e.g. id=1 is        ##
  ##subject number 1                                               ##
  testSubject <- read.table("test/subject_test.txt",
                             col.names = "subject")
  
  ##This contains all the features i.e. variables that were being  ##
  ##measured/calculated and their respective ids                   ##
  allFeatures <- read.table("features.txt",
                         col.names = c("id","features"))
  
  ##This contains all the variables for each of the features       ##
  ##derived from the sensors on the training subjects              ##
  trainMeasurement <- read.table("train/X_train.txt")
  
  ##This contains all the variables for each of the features       ##
  ##derived from the sensors on the test subjects                  ##
  testMeasurement <- read.table("test/X_test.txt")
  ##---------------------------------------------------------------##
  
  ###################################################################
  ##  Replace all ids of the activities performed with appropriate ##
  ##           labels. Both training and test activities           ##
  ###################################################################
  
  ##merge the two variables by the column "id"
  trainActivity <- left_join(trainActivity,activityLabel,
                        by="id")
  
  ##get rid of id column as we only want the activities to be named##
  ##by the labels
  trainActivity <- select(trainActivity, -id)
    
  ##repeat with test data
  testActivity <- left_join(testActivity,activityLabel,
                               by="id")
  
  testActivity <- select(testActivity, -id)
  ##---------------------------------------------------------------##
  
  ###################################################################
  ##     Extract desired features, properly renaming them and      ##
  ##         assign them as column names in the datasets           ##
  ###################################################################
  
  ##Extract only the features that we want i.e. mean() and std()   ##
  desiredFeatures <- allFeatures[grep("[Mm]ean\\(\\)|[Ss]td\\(\\)",
                                    allFeatures$features),]
  
  ##Get rid of all parentheses and dash symbols in the features
  desiredFeatures$features <- gsub("\\(\\)|\\-","",
                                   desiredFeatures$features)
  
  ##Capitalize Mean
  desiredFeatures$features <- gsub("mean","Mean",desiredFeatures$features)
  
  ##Capitalize Std
  desiredFeatures$features <- gsub("std","Std",desiredFeatures$features)
  
  ##Use the ids of the extracted features as index to subset only  ##
  ##the training data that we want i.e. mean and std               ##
  trainMeasurement <- trainMeasurement[, desiredFeatures$id]
  
  ##Use the ids of the extracted features as index to subset only  ##
  ##the test data that we want i.e. mean and std                   ##
  testMeasurement <- testMeasurement[, desiredFeatures$id]
  
  names(trainMeasurement) <- desiredFeatures$features
  names(testMeasurement) <- desiredFeatures$features
  ##---------------------------------------------------------------##
  
  ###################################################################
  ##  Combining all processed data and rearranging according to    ##
  ##                         subject id                            ##
  ###################################################################
  
  ##Column binding the subjects, activities and training datasets
  train_data <- bind_cols(trainSubject, trainActivity, trainMeasurement)
  
  ##Column binding the subjects, activities and test datasets
  test_data <- bind_cols(testSubject, testActivity, testMeasurement)
  
  ##Combining the two datasets i.e. test and train by row
  combined_data <- bind_rows("train" = train_data, 
                             "test" = test_data, .id = "datasets")
  
  ##Re-arrange the data according to subject ids
  combined_data <- arrange(combined_data, subject, activity)
  ##---------------------------------------------------------------##
  
  ###################################################################
  ## Summarizing the data and storing it as an independent dataset ##
  ###################################################################
  
  averaged_data <- combined_data %>% 
                   group_by(datasets, subject, activity) %>%
                   summarize_at(-(1:3), mean) %>%
                   arrange(subject, activity)
  ##---------------------------------------------------------------##
  
  ##write tidy data onto a text file
  write.table(averaged_data, "wearable.txt", row.names = FALSE, quote = FALSE)
  
  ##End of script##
                  
}
