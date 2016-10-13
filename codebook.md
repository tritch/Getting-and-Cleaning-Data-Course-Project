#Codebook
##Data Set Information

Human Activity Recognition experiments were conducted with a group of thirty volunteers aged nineteen to forty-eight years.   Motion data was collected from the embedded accelerometer and gyroscope in a Samsung Galaxy S II smartphone teathered to the waist of each subject as they performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).  The motion data included three-axis linear acceleration and three-axis angular velocity scanned at a constant 50Hz rate.  The obtained dataset was partitioned randomly into two sets - the "training" data was gathered from 70% of the volunteers;  the remaining 30% was gathered into the "test" dataset.

The accelerometer and gyroscope raw data was processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).  The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity.  The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used.  From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

##Citation

###Use of this dataset in publications must be acknowledged by referencing the following publication:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Variable Descriptions

###The following variables are common to both the first and second tidy data sets `merged dataset.txt` and `average.data.txt`.  Variables and their meaning are listed in the table below.

Variable	|	Description
-----------------------|----------------------------------------------------------------------------
subjects	|	Subject ID
activities	|	The motion activity performed
tbodyacc-mean(x)	|	Mean time for acceleration of body, X axis
tbodyacc-mean(y)	|	Mean time for acceleration of body, Y axis
tbodyacc-mean(z)	|	Mean time for acceleration of body, Z axis
tbodyacc-std(x)	|	Standard deviation of time for acceleration of body, X axis
tbodyacc-std(y)	|	Standard deviation of time for acceleration of body, Y axis
tbodyacc-std(z)	|	Standard deviation of time for acceleration of body, Z axis
tgravityacc-mean(x)	|	Mean time of acceleration of gravity , X axis
tgravityacc-mean(y)	|	Mean time of acceleration of gravity , Y axis
tgravityacc-mean(z)	|	Mean time of acceleration of gravity , Z axis
tgravityacc-std(x)	|	Standard deviation of time of acceleration of gravity , X axis
tgravityacc-std(y)	|	Standard deviation of time of acceleration of gravity , Y axis
tgravityacc-std(z)	|	Standard deviation of time of acceleration of gravity , Z axis
tbodyaccjerk-mean(x)	|	Mean time of body acceleration jerk , X axis
tbodyaccjerk-mean(y)	|	Mean time of body acceleration jerk , Y axis
tbodyaccjerk-mean(z)	|	Mean time of body acceleration jerk , Z axis
tbodyaccjerk-std(x)	|	Standard deviation of time of body acceleration jerk , X axis
tbodyaccjerk-std(y)	|	Standard deviation of time of body acceleration jerk , Y axis
tbodyaccjerk-std(z)	|	Standard deviation of time of body acceleration jerk , Z axis
tbodygyro-mean(x)	|	Mean body gyroscope measurement , X axis
tbodygyro-mean(y)	|	Mean body gyroscope measurement , Y axis
tbodygyro-mean(z)	|	Mean body gyroscope measurement , Z axis
tbodygyro-std(x)	|	Standard deviation of body gyroscope measurement , X axis
tbodygyro-std(y)	|	Standard deviation of body gyroscope measurement , Y axis
tbodygyro-std(z)	|	Standard deviation of body gyroscope measurement , Z axis
tbodygyrojerk-mean(x)	|	Mean jerk signal of body, X axis
tbodygyrojerk-mean(y)	|	Mean jerk signal of body, Y axis
tbodygyrojerk-mean(z)	|	Mean jerk signal of body, Z axis
tbodygyrojerk-std(x)	|	Standard deviation of jerk signal of body, X axis
tbodygyrojerk-std(y)	|	Standard deviation of jerk signal of body, Y axis
tbodygyrojerk-std(z)	|	Standard deviation of jerk signal of body, Z axis
tbodyaccmag-mean	|	Mean magnitude of body Acc
tbodyaccmag-std	|	Standard deviation of magnitude of body Acc
tgravityaccmag-mean	|	Mean gravity acceleration magnitude
tgravityaccmag-std	|	Standard deviation of gravity acceleration magnitude
tbodyaccjerkmag-mean	|	Mean magnitude of body acceleration jerk
tbodyaccjerkmag-std	|	Standard deviation of magnitude of body acceleration jerk
tbodygyromag-mean	|	Mean magnitude of body gyroscope measurement
tbodygyromag-std	|	Standard deviation of magnitude of body gyroscope measurement
tbodygyrojerkmag-mean	|	Mean magnitude of body body gyroscope jerk measurement
tbodygyrojerkmag-std	|	Standard deviation of magnitude of body body gyroscope jerk measurement
fbodyacc-mean(x)	|	Mean frequency of body acceleration , X axis
fbodyacc-mean(y)	|	Mean frequency of body acceleration , Y axis
fbodyacc-mean(z)	|	Mean frequency of body acceleration , Z axis
fbodyacc-std(x)	|	Standard deviation of frequency of body acceleration , X axis
fbodyacc-std(y)	|	Standard deviation of frequency of body acceleration , Y axis
fbodyacc-std(z)	|	Standard deviation of frequency of body acceleration , Z axis
fbodyaccjerk-mean(x)	|	Mean frequency of body accerlation jerk , X axis
fbodyaccjerk-mean(y)	|	Mean frequency of body accerlation jerk , Y axis
fbodyaccjerk-mean(z)	|	Mean frequency of body accerlation jerk , Z axis
fbodyaccjerk-std(x)	|	Standard deviation frequency of body accerlation jerk , X axis
fbodyaccjerk-std(y)	|	Standard deviation frequency of body accerlation jerk , Y axis
fbodyaccjerk-std(z)	|	Standard deviation frequency of body accerlation jerk , Z axis
fbodygyro-mean(x)	|	Mean frequency of body gyroscope measurement , X axis
fbodygyro-mean(y)	|	Mean frequency of body gyroscope measurement , Y axis
fbodygyro-mean(z)	|	Mean frequency of body gyroscope measurement , Z axis
fbodygyro-std(x)	|	Standard deviation frequency of body gyroscope measurement , X axis
fbodygyro-std(y)	|	Standard deviation frequency of body gyroscope measurement , Y axis
fbodygyro-std(z)	|	Standard deviation frequency of body gyroscope measurement , Z axis
fbodyaccmag-mean	|	Mean frequency of body acceleration magnitude
fbodyaccmag-std	|	Standard deviation of frequency of body acceleration magnitude
fbodybodyaccjerkmag-mean	|	Mean frequency of body acceleration jerk magnitude
fbodybodyaccjerkmag-std	|	Standard deviation of frequency of body acceleration jerk magnitude
fbodybodygyromag-mean	|	Mean frequency of magnitude of body gyroscope measurement
fbodybodygyromag-std	|	Standard deviation of frequency of magnitude of body gyroscope measurement
fbodybodygyrojerkmag-mean	|	Mean frequency of magnitude of body gyroscope jerk measurement
fbodybodygyrojerkmag-std	|	Standard deviation frequency of magnitude of body gyroscope jerk measurement
