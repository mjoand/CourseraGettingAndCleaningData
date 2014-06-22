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


##### 1.Contents of the Repository
1. README.md
2. CodeBook.md
3. run_analysis.R
4. tidyDataSet.txt 

##### 2.Objectives of the Peer Assessed Project
The objective of this project is to develope strategies for collecting, working with, and cleaning raw data sets in order to tidy data that can be used for
later analysis.The students were asked to download and unzip a repository of data collected from the accelerometers from 
the Samsung Galaxy S smartphone, subdivided in a training and a test sub-repositories, and create a single tidy data set, an R script and a Code Book. 

The R script, **run_analysis.R**, should do the following:

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names. 
5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. 
 

##### 3.The raw data set
The raw data set consists of a database built form the recordings of thirty subjects performing acitivities of daily living while carrying a waist-mounted smartphone
with embeded inertial sensors.

*Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012*

For further information on the raw data set please see the [CodeBook](https://github.com/mjoand/courseraGettingAndCleaningData/blob/master/CodeBook.md) included in this repository
and the web page [UCI Machine Learning Repository: Human Activity Recognition Using Smartphones Data Set.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

##### 4.The tidy data set

##### 5.Running the run_analysis.R script
For the script run_analysis.R to be run, it is pre required that the script and a copy of the **UCI HAR Dataset** folder containing the Samsung data are in the the working directory.
 The Samsung data can be downloaded as a zipped file from the web page 
[UCI Machine Learning Repository: Human Activity Recognition Using Smartphones Data Set ](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
or from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The binary zipped file can be downloaded into the working directory by running 
the *download.file* function, with the mode argument set as “wb”, in the console and the **UCI HAR Dataset** folder extracted by means of the *unzip* function.
Once the R script and the samsung data folder are in the working directory, running the command *source("run_analysis.R")* in the console will return 
the tidy data set as a txt file that can be found in the working directory, **tidyDataSet.txt**. 


##### 6.Methodology

##### 7.Version


* Elementos
* de
* lista

1. Lista
2. Numerada


**bold**
*italic*

<cite>citacao</cite>

[hiperlink](http://eueleeamaria.blogspot.pt/2014/06/nos-temos-tudo.html)
[hiperlink](http://eueleeamaria.blogspot.pt/2014/06/nos-temos-tudo.html "hiperlink")

(http://eueleeamaria.blogspot.pt/2014/06/nos-temos-tudo.html) esta aqui um link
