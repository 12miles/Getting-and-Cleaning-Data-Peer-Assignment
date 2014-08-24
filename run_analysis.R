# You should create one R script called run_analysis.R that does the following. 
# 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation 
#    for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. Creates a second, independent tidy data set with the average of each 
#    variable for each activity and each subject. 


library(data.table)
library(memisc)

# Step One - Merges the training and the test sets to create one data set.

setwd("~/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")
trainX <- read.table("./train/X_train.txt")
trainY <- read.table("./train/Y_train.txt")
testX <- read.table("./test/X_test.txt")
testY <- read.table("./test/Y_test.txt")
trainSubject <- read.table("./train/subject_train.txt")
testSubject <- read.table("./test/subject_test.txt")
xBind <- rbind(trainX,testX)
yBind <- rbind(trainY,testY)
subjectBind <- rbind(trainSubject, testSubject)
mergedData <- cbind(subjectBind,yBind,xBind)

# Step Two - Extracts only the measurements on the mean and 
# standard deviation for each measurement.

features <- read.table("features.txt")    # list the names associated with the
                                          # measurements in xBind
grepMeanStd <- grep("mean\\()|std()", features$V2)    # w/o "\\" you pick up  
                                                      # meanFreq() too
xBind <- xBind[, grepMeanStd]
names(xBind) <- features[grepMeanStd, "V2"]
mergedData <- cbind(subjectBind,yBind,xBind)    #remerge with mean and std features

# Step Three - Uses descriptive activity names to name the activities in 
# the data set

activity <- read.table("activity_labels.txt")
activity[, "V2"] <- tolower(activity[,"V2"])          # all lowercase Tidy style
activity[, "V2"] <- gsub("_", "", activity[,"V2"])    # no space
activityNames <- activity[mergedData[,2], "V2"]       # activities are yBind
mergedData[,2] <-activityNames 


# Step Four - Appropriately labels the data set with descriptive variable names.

names(mergedData)[1] <- "Subject"
names(mergedData)[2] <- "Activity"
names(mergedData) <- gsub("-","",names(mergedData))
names(mergedData) <- gsub("\\()", "", names(mergedData))
names(mergedData) <- gsub("mean", "Mean", names(mergedData))
names(mergedData) <- gsub("std", "Std", names(mergedData))


# Step Five - Creates a second, independent tidy data set with the average of each 
# variable for each activity and each subject.

merged<- as.data.table(mergedData) #so i can use data.table functions
datalapply <- merged[,lapply(.SD, mean), by=list(Activity,Subject)] #http://stackoverflow.com/questions/24151602/calculating-multiple-aggregations-with-lapply-sd-in-data-table-r-package
datalapply <- datalapply[order(Subject, Activity),]
datalapply<-datalapply[, c(2,1, 3:ncol(datalapply)), with=F] #http://stackoverflow.com/questions/16133678/how-do-i-reorder-data-table-columns?rq=1
write.table(datalapply, file ="Tidy_Data.txt", row.name=FALSE)


# generate codebook using memisc package
t <- data.set(datalapply)
capture.output(codebook(t), file = "codebook.txt") #http://stackoverflow.com/questions/20573478/writing-codebook-object-to-a-pdf-file-with-r

