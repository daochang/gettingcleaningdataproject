
    
    #Read in all the necessary files, make sure all files are in working directory
    xtest <- read.table("X_test.txt")
    
    xtrain <- read.table("X_train.txt")
    
    features <- read.table("features.txt")
    
    subtest <- read.table("subject_test.txt")
    
    subtrain <- read.table("subject_train.txt")
    
    ytest <- read.table("y_test.txt")
    
    ytrain <- read.table("y_train.txt")
    
    activ_labels <- read.table("activity_labels.txt")
    
    #Merge training data with training subject identifiers and training labels
    
    training_data <- cbind(subtrain, ytrain, xtrain)
    
    #Merge test data with test subject identifiers and training labels
    
    test_data <- cbind(subtest, ytest, xtest)
    
    #Combine test and training data sets
    df <- rbind(training_data,test_data)
    
    #Rename the columns in the new dataset to reflect feature names
    names1 <- c("subject","activity")
    names2<- c(as.character(features$V2))
    colnames<-c(names1,names2)
    names(df) <- colnames
    
    #Create a vector using the activity labels
    activity<-c("walking","walking_upstairs",
                "walking_downstairs","sitting","standing","laying")
    
    #Replace the numbers for the activity labels in the dataset 
    #with the appropriate description from activity_labels.txt
    
    df[,2]<-factor(df[,2],labels=activity)
    
    #Load the dplyr package
    library(dplyr)
    
    #Create a new data frame with only the columns containing mean and standard
    #deviation data for the features. 
    
    df2<-df[grep("((mean|std){1}(freq){0,}[(][)])",names(df))]
    
    #Add back first 2 columns with subject and activity in df to df2
    df2<-cbind(df[,1:2],df2)
    
    #Create  a second, independent tidy data set with the average of 
    #each variable for each activity and each subject.
    
    df_tidy <- group_by(df2, subject, activity) %>% summarise_each(funs(mean))
    
    
    
    
    
 