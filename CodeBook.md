##Code Book
======================
========================
### The Raw Data Set

The data corresponds to the recordings of a series of experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, 
WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)  wearing a smartphone (Samsung Galaxy S II) on the waist.
Using the smartphones's embedded accelerometer and gyroscope, measurements of 3-axial linear acceleration and 3-axial angular velocity at 
a constant rate of 50Hz. The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding
windows of 2.56 sec and 50% overlap (128 readings/window).From each window, a vector of features was obtained by calculating variables
from the time and frequency domain.

*Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012*

For complementary information on the raw data set please see the web page [UCI Machine Learning Repository: Human Activity Recognition Using Smartphones Data Set.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) 
and the text file [**features_info.txt**](https://github.com/mjoand/courseraGettingAndCleaningData/blob/master/features_info.txt) included in this repository.

### Variables

The variables correspond subject/ activity to identifiers (columns 1 and 2) or to **averaged by pair subject+activity** means and standard deviations of measurements that have been normalized, 
and are, therefore non-dimensional (i.e. have no units).

1. **subjectId** Identifier of the subjects in the 30 volunteers sample (integer).
2. **activity** Activity performed by the subject during the experiment (Character: LAYING, SITTING, STANDING, WALKING, WALKING UPSTAIRS and WALKING DOWNSTAIRS).

3. **timeBodyAccMeanX** The mean of the X axis for the acceleration for body acceleration signals on the time domain (numeric).
4. **timeBodyAccMeanY** The mean of the Y axis for the acceleration for body acceleration signals on the time domain (numeric).
5. **timeBodyAccMeanZ** The mean of the Z axis for the acceleration for body acceleration signals on the time domain (numeric).
6. **timeBodyAccStdX** The standard deviation of the X axis for the acceleration for body acceleration signals on the time domain (numeric).
7. **timeBodyAccStdY** The standard deviation of the Y axis for the acceleration for body acceleration signals on the time domain (numeric).
8. **timeBodyAccStdZ** The standard deviation of the Z axis for the acceleration for body acceleration signals on the time domain (numeric).
9. **timeGravityAccMeanX** The mean of the X axis for the acceleration for gravity acceleration signals on the time domain (numeric).
10. **timeGravityAccMeanY** The mean of the Y axis for the acceleration for gravity acceleration signals on the time domain (numeric).
11. **timeGravityAccMeanZ** The mean of the Z axis for the acceleration for gravity acceleration signals on the time domain (numeric).
12. **timeGravityAccStdX** The standard deviation of the X axis for the acceleration for gravity acceleration signals on the time domain (numeric).
13. **timeGravityAccStdY** The standard deviation of the Y axis for the acceleration for gravity acceleration signals on the time domain (numeric).
14. **timeGravityAccStdZ** The standard deviation of the Z axis for the acceleration for gravity acceleration signals on the time domain (numeric).
15. **timeBodyAccJerkMeanX** The mean of the X axis for the Jerk signal for the body linear acceleration on the time domain (numeric).
16. **timeBodyAccJerkMeanY** The mean of the Y axis for the Jerk signal for the body linear acceleration on the time domain (numeric).
17. **timeBodyAccJerkMeanZ** The mean of the Z axis for the Jerk signal for the body linear acceleration on the time domain (numeric).
18. **timeBodyAccJerkStdX** The standard deviation of the X axis for the Jerk signal for the body linear acceleration on the time domain (numeric).
19. **timeBodyAccJerkStdY** The standard deviation of the Y axis for the Jerk signal for the body linear acceleration on the time domain (numeric).
20. **timeBodyAccJerkStdZ** The standard deviation of the Z axis for the Jerk signal for the body linear acceleration on the time domain (numeric).
21. **timeBodyGyroJerkMeanX** The mean of the X axis for the Jerk signal for the angular velocity on the time domain (numeric).
22. **timeBodyGyroJerkMeanY** The mean of the Y axis for the Jerk signal for the angular velocity on the time domain (numeric).
23. **timeBodyGyroJerkMeanZ** The mean of the Z axis for the Jerk signal for the angular velocity on the time domain (numeric).
24. **timeBodyGyroJerkStdX** The standard deviation of the X axis for the Jerk signal for the angular velocity on the time domain (numeric).
25. **timeBodyGyroJerkStdY** The standard deviation of the Y axis for the Jerk signal for the angular velocity on the time domain (numeric).
26. **timeBodyGyroJerkStdZ** The standard deviation of the Z axis for the Jerk signal for the angular velocity on the time domain (numeric).
27. **timeBodyGyroMeanX** The mean of the X axis for the angular velocity on the time domain (numeric). 
28. **timeBodyGyroMeanY** The mean of the Y axis for the angular velocity on the time domain (numeric). 
29. **timeBodyGyroMeanZ** The mean of the Z axis for the angular velocity on the time domain (numeric).
30. **timeBodyGyroStdX** The standard deviation of the X axis for the angular velocity on the time domain (numeric).
31. **timeBodyGyroStdY** The standard deviation of the Y axis for the angular velocity on the time domain (numeric). 
32. **timeBodyGyroStdZ** The standard deviation of the Z axis for the angular velocity on the time domain (numeric).

33. **frequencyBodyAccMeanX** The mean of the X axis for the acceleration for body acceleration signals on the frequency domain (numeric).
34. **frequencyBodyAccMeanY** The mean of the Y axis for the acceleration for body acceleration signals on the frequency domain (numeric).
35. **frequencyBodyAccMeanZ** The mean of the Z axis for the acceleration for body acceleration signals on the frequency domain (numeric).
36. **frequencyBodyAccStdX** The standard deviation of the X axis for the acceleration for body acceleration signals on the frequency domain (numeric).
37. **frequencyBodyAccStdY** The standard deviation of the Y axis for the acceleration for body acceleration signals on the frequency domain (numeric).
38. **frequencyBodyAccStdZ** The standard deviation of the Z axis for the acceleration for body acceleration signals on the frequency domain (numeric).
39. **frequencyGravityAccMeanX** The mean of the X axis for the acceleration for gravity acceleration signals on the frequency domain (numeric).
40. **frequencyGravityAccMeanY** The mean of the Y axis for the acceleration for gravity acceleration signals on the frequency domain (numeric).
41. **frequencyGravityAccMeanZ** The mean of the Z axis for the acceleration for gravity acceleration signals on the frequency domain (numeric).
42. **frequencyGravityAccStdX** The standard deviation of the X axis for the acceleration for gravity acceleration signals on the frequency domain (numeric).
43. **frequencyGravityAccStdY** The standard deviation of the Y axis for the acceleration for gravity acceleration signals on the frequency domain (numeric).
44. **frequencyGravityAccStdZ** The standard deviation of the Z axis for the acceleration for gravity acceleration signals on the frequency domain (numeric).
45. **frequencyBodyAccJerkMeanX** The mean of the X axis for the Jerk signal for the body linear acceleration on the frequency domain (numeric).
46. **frequencyBodyAccJerkMeanY** The mean of the Y axis for the Jerk signal for the body linear acceleration on the frequency domain (numeric).
47. **frequencyBodyAccJerkMeanZ** The mean of the Z axis for the Jerk signal for the body linear acceleration on the frequency domain (numeric).
48. **frequencyBodyAccJerkStdX** The standard deviation of the X axis for the Jerk signal for the body linear acceleration on the frequency domain (numeric).
49. **frequencyBodyAccJerkStdY** The standard deviation of the Y axis for the Jerk signal for the body linear acceleration on the frequency domain (numeric).
50. **frequencyBodyAccJerkStdZ** The standard deviation of the Z axis for the Jerk signal for the body linear acceleration on the frequency domain (numeric).
51. **frequencyBodyGyroJerkMeanX** The mean of the X axis for the Jerk signal for the angular velocity on the frequency domain (numeric).
52. **frequencyBodyGyroJerkMeanY** The mean of the Y axis for the Jerk signal for the angular velocity on the frequency domain (numeric).
53. **frequencyBodyGyroJerkMeanZ** The mean of the Z axis for the Jerk signal for the angular velocity on the frequency domain (numeric).
54. **frequencyBodyGyroJerkStdX** The standard deviation of the X axis for the Jerk signal for the angular velocity on the frequency domain (numeric).
55. **frequencyBodyGyroJerkStdY** The standard deviation of the Y axis for the Jerk signal for the angular velocity on the frequency domain (numeric).
56. **frequencyBodyGyroJerkStdZ** The standard deviation of the Z axis for the Jerk signal for the angular velocity on the frequency domain (numeric).
57. **frequencyBodyGyroMeanX** The mean of the X axis for the angular velocity on the frequency domain (numeric). 
58. **frequencyBodyGyroMeanY** The mean of the Y axis for the angular velocity on the frequency domain (numeric). 
59. **frequencyBodyGyroMeanZ** The mean of the Z axis for the angular velocity on the frequency domain (numeric).
60. **frequencyBodyGyroStdX** The standard deviation of the X axis for the angular velocity on the frequency domain (numeric).
61. **frequencyBodyGyroStdY** The standard deviation of the Y axis for the angular velocity on the frequency domain (numeric). 
62. **frequencyBodyGyroStdZ** The standard deviation of the Z axis for the angular velocity on the frequency domain (numeric). 
 















