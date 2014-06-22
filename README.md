## Getting And Cleaning Data Peer Assessed Project
===================================================

###Index
1. Contents of the Repository
2. Objectives of the Peer Assessed Project
3. The raw data set
4. The tidy data set
5. Running the run_analysis.R script
6. Methodology 
7. Version


#### 1.Contents of the Repository
1. README.md
2. CodeBook.md
3. run_analysis.R
4. tidyDataSet.txt 

#### 2.Objectives of the Peer Assessed Project
The objective of this project is to develope strategies for collecting, working with, and cleaning raw data sets in order to tidy data that can be used for
later analysis.The students were asked to download and unzip a repository of data collected from the accelerometers from 
the Samsung Galaxy S smartphone, subdivided in a training and a test sub-repositories, and create a single tidy data set, an R script and a Code Book. 

The R script, **run_analysis.R**, should do the following:

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names. 
5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. 
 

#### 3.The raw data set
The raw data set consists of a database built form the recordings of thirty subjects performing acitivities of daily living while carrying a waist-mounted smartphone
with embeded inertial sensors.

*Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012*

For further information on the raw data set please see the [CodeBook](https://github.com/mjoand/courseraGettingAndCleaningData/blob/master/CodeBook.md) included in this repository
and the web page [UCI Machine Learning Repository: Human Activity Recognition Using Smartphones Data Set.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

#### 4.The tidy data set
The tidy data set consists of a table with 180 observations of 68 variables.


Each row corresponds to an observation for a  subject+activity pair taken from a sample of 30 volunteers within an age bracket of 19-48 years
and six possible activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS,SITTING, STANDING and LAYING).

The first two columns correspond to the identification of each subject+activity pair, with first column corresponding to the subject identification within the 30 
volunteer sample and the second column corresponds to the activity. Each of the remaining 66 columns corresponds to the average for the pair activity+subject
of the mean and standard deviation of a given measurement collected in the Samsung data set. Please see [CodeBook](https://github.com/mjoand/courseraGettingAndCleaningData/blob/master/CodeBook.md)
a complete description of each variable.

Each column is labeled with a descriptive variable name. Please see [CodeBook.](https://github.com/mjoand/courseraGettingAndCleaningData/blob/master/CodeBook.md)

#### 5.Running the run_analysis.R script
For the script run_analysis.R to be run, it is pre required that the script and a copy of the **UCI HAR Dataset** folder containing the Samsung data are in the the working directory.
 The Samsung data can be downloaded as a zipped file from the web page 
[UCI Machine Learning Repository: Human Activity Recognition Using Smartphones Data Set ](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
or from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The binary zipped file can be downloaded into the working directory by running 
the *download.file* function, with the mode argument set as “wb”, in the console and the **UCI HAR Dataset** folder extracted by means of the *unzip* function.
Once the R script and the samsung data folder are in the working directory, running the command *source("run_analysis.R")* in the console will return 
the tidy data set as a txt file that can be found in the working directory, **tidyDataSet.txt**. 

#### 6.Methodology
Please see also commented code on  the script [**run_analysis.R**](https://github.com/mjoand/courseraGettingAndCleaningData/blob/master/run_analysis.R).

After the Samsung data has been stored in the working directory and the UCI HAR Dataset folder has been unzipped the R script can be run and the five steps described in section 2 executed sequentially:

* **Step 1: Merge the training and test data sets**.The corresponding subject and activity identification columns are concatenated and the train/test data sets are merged, creating an “untidy” data set.
* **Step 2: Extract the measurements on the mean and standard deviation for each measurement.** The columns corresponding to measurements on mean and standard deviation are identified by means of key words using the **grep** function. 
The “untidy” data set is sub seted with only the subject and activity identification columns and the columns corresponding to measurements on mean and standard deviation being kept.
* **Step 3: Descriptive activity names.** The numeric identifiers in the  activity identification column are replaced by activity names.
* **Step 4: Label the data set with appropriate descriptive variable names**
A character vector of column names is obtained from the the header of the “untidy” data set by renaming them using the camel case notation. This was done using the **gsubs** function. 
The charater vector is then used to label the “untidy” data set using the **colnames** function.
* **Step 5:Creates a second, independent tidy data set with the average of each variable for each activity and each subject.** The tidy data set was created using the **aggregate** function, with FUN defined as the average function **mean**, and returned as a text file: [tidyDataSet.txt](https://github.com/mjoand/courseraGettingAndCleaningData/blob/master/tidyDataSet.txt).



#### 7.Version
The analysis was executed under a Windows software, Windows 7 and R version 3.1.0


