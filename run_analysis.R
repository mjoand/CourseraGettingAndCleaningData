#####Step 1: Merge the training and test data sets

#Retriving the names of the train/test directories and files 
dir<-"UCI HAR Dataset"
testDir<-"test"
trainDir<-"train"
testSubjectFile<-"subject_test.txt"
trainSubjectFile<-"subject_train.txt"
testActivityFile<-"y_test.txt"
trainActivityFile<-"y_train.txt"
testDataFile<-"X_test.txt"
trainDataFile<-"X_train.txt"

# Merging the train/test Subject columns
trainSubject<-read.table(file.path(dir,trainDir,trainSubjectFile),header=FALSE)
testSubject<-read.table(file.path(dir,testDir,testSubjectFile),header=FALSE)
subject<-rbind(trainSubject,testSubject)

#Merging the train/test Activiy Columns
trainActivity<-read.table(file.path(dir,trainDir,trainActivityFile),header=FALSE)
testActivity<-read.table(file.path(dir,testDir,testActivityFile),header=FALSE)
activity<-rbind(trainActivity,testActivity)

#Merging the train/test Data Sets
trainData<-read.table(file.path(dir,trainDir,trainDataFile),header=FALSE)
testData<-read.table(file.path(dir,testDir,testDataFile),header=FALSE)
data<-rbind(trainData,testData)

#Creating an "untidy" Data Set by binding Subject, Activity and Data
untidy<-data.frame(subject,activity,data)


#####Step 2: Extract the measurements on the mean and standard deviation for each
#            measurement

featuresFile<-"features.txt"
features<-read.table(file.path(dir,featuresFile),header=FALSE)

# Identifying the measurements on mean and standard deviation
meanStdCols<-sort(c(grep("-mean\\(\\)",features[,2]),grep("-std\\(\\)",features[,2])))
#Subsetting Untidy to extract the columns corresponding to measurements of mean and
#standard deviation
untidy<-untidy[,c(1,2,meanStdCols+2)]


#####Step 3: Descriptive activity names

activityLabelsFile<-"activity_labels.txt"
activityLabels<-read.table(file.path(dir,activityLabelsFile),header=FALSE,stringsAsFactors=FALSE)
aux<-character()
for (i in untidy[,2]){
  aux<-c(aux,activityLabels[,2][i])
}
untidy[,2]<-as.factor(aux)


#####Step 4: Label the data set with appropriate descriptive variable names

colLabels<-c("subjectId","activity",as.vector(features[,2][meanStdCols]))
colLabels <- gsub("^t", "time", colLabels)
colLabels <- gsub("^f", "frequency", colLabels)
#Removing a typo (BodyBody for Body)
colLabels<-gsub("*BodyBody*","Body",colLabels)
#Removing -, ( and ) symbols
colLabels<-gsub("*-*|*\\(*|*\\)*", "",colLabels)
#Camel case notation
colLabels<-gsub("mean","Mean",colLabels)
colLabels<-gsub("std","Std",colLabels)

colnames(untidy)<-colLabels


#####Step 5:Creates a second, independent tidy data set with the average of each 
#          variable for each activity and each subject

tidyDataSet<-aggregate(.~subjectId+activity,FUN=mean,data=untidy)
# Writing the tidy data set in a txt file
write.table(tidyDataSet, file="tidyDataSet.txt", sep="\t", row.names=FALSE)
