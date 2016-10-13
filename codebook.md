#Codebook
##Data Set Information

Human Activity Recognition experiments were conducted with a group of thirty volunteers aged nineteen to forty-eight years.   Motion data was collected from the embedded accelerometer and gyroscope in a Samsung Galaxy S II smartphone teathered to the waist of each subject as they performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).  The motion data included three-axis linear acceleration and three-axis angular velocity scanned at a constant 50Hz rate.  The obtained dataset was partitioned randomly into two sets - the "training" data was gathered from 70% of the volunteers;  the remaining 30% was gathered into the "test" dataset.

The accelerometer and gyroscope raw data was processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).  The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity.  The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used.  From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

###Citation

Use of this dataset in publications must be acknowledged by referencing the following publication:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Variable Descriptions

The following variables are common to both the first and second tidy data sets `merged dataset.txt` and `average.data.txt`.

Variable	|	Description
--------------------|-------------------------------------------------------------------------
subjects	|	Subject ID, range: [ 1:30 ]
activities	|	Motion activity performed, range:  [ laying, sitting, standing, walking, walking-downstairs, walking-upstairs ]
tbodyacc-mean(x)	|	Mean time for acceleration of body, X axis, sec
tbodyacc-mean(y)	|	Mean time for acceleration of body, Y axis, sec
tbodyacc-mean(z)	|	Mean time for acceleration of body, Z axis, sec
tbodyacc-std(x)	|	Standard deviation of time for acceleration of body, X axis, sec
tbodyacc-std(y)	|	Standard deviation of time for acceleration of body, Y axis, sec
tbodyacc-std(z)	|	Standard deviation of time for acceleration of body, Z axis, sec
tgravityacc-mean(x)	|	Mean time of acceleration of gravity , X axis, sec
tgravityacc-mean(y)	|	Mean time of acceleration of gravity , Y axis, sec
tgravityacc-mean(z)	|	Mean time of acceleration of gravity , Z axis, sec
tgravityacc-std(x)	|	Standard deviation of time of acceleration of gravity , X axis, sec
tgravityacc-std(y)	|	Standard deviation of time of acceleration of gravity , Y axis, sec
tgravityacc-std(z)	|	Standard deviation of time of acceleration of gravity , Z axis, sec
tbodyaccjerk-mean(x)	|	Mean time of body acceleration jerk , X axis, sec
tbodyaccjerk-mean(y)	|	Mean time of body acceleration jerk , Y axis, sec
tbodyaccjerk-mean(z)	|	Mean time of body acceleration jerk , Z axis, sec
tbodyaccjerk-std(x)	|	Standard deviation of time of body acceleration jerk , X axis, sec
tbodyaccjerk-std(y)	|	Standard deviation of time of body acceleration jerk , Y axis, sec
tbodyaccjerk-std(z)	|	Standard deviation of time of body acceleration jerk , Z axis, sec
tbodygyro-mean(x)	|	Mean body gyroscope measurement , X axis, m
tbodygyro-mean(y)	|	Mean body gyroscope measurement , Y axis, m
tbodygyro-mean(z)	|	Mean body gyroscope measurement , Z axis, m
tbodygyro-std(x)	|	Standard deviation of body gyroscope measurement , X axis
tbodygyro-std(y)	|	Standard deviation of body gyroscope measurement , Y axis
tbodygyro-std(z)	|	Standard deviation of body gyroscope measurement , Z axis
tbodygyrojerk-mean(x)	|	Mean jerk signal of body, X axis, m/sec^3
tbodygyrojerk-mean(y)	|	Mean jerk signal of body, Y axis, m/sec^3
tbodygyrojerk-mean(z)	|	Mean jerk signal of body, Z axis, m/sec^3
tbodygyrojerk-std(x)	|	Standard deviation of jerk signal of body, X axis, m/sec^3
tbodygyrojerk-std(y)	|	Standard deviation of jerk signal of body, Y axis, m/sec^3
tbodygyrojerk-std(z)	|	Standard deviation of jerk signal of body, Z axis, m/sec^3
tbodyaccmag-mean	|	Mean magnitude of body Acc, m/sec^2
tbodyaccmag-std	|	Standard deviation of magnitude of body Acc, m/sec^2
tgravityaccmag-mean	|	Mean gravity acceleration magnitude, m/sec^2
tgravityaccmag-std	|	Standard deviation of gravity acceleration magnitude, m/sec^2
tbodyaccjerkmag-mean	|	Mean magnitude of body acceleration jerk, m/sec^3
tbodyaccjerkmag-std	|	Standard deviation of magnitude of body acceleration jerk, m/sec^3
tbodygyromag-mean	|	Mean magnitude of body gyroscope measurement
tbodygyromag-std	|	Standard deviation of magnitude of body gyroscope measurement
tbodygyrojerkmag-mean	|	Mean magnitude of body body gyroscope jerk measurement
tbodygyrojerkmag-std	|	Standard deviation of magnitude of body body gyroscope jerk measurement
fbodyacc-mean(x)	|	Mean frequency of body acceleration , X axis, sec^-1
fbodyacc-mean(y)	|	Mean frequency of body acceleration , Y axis, sec^-1
fbodyacc-mean(z)	|	Mean frequency of body acceleration , Z axis, sec^-1
fbodyacc-std(x)	|	Standard deviation of frequency of body acceleration , X axis, sec^-1
fbodyacc-std(y)	|	Standard deviation of frequency of body acceleration , Y axis, sec^-1
fbodyacc-std(z)	|	Standard deviation of frequency of body acceleration , Z axis, sec^-1
fbodyaccjerk-mean(x)	|	Mean frequency of body accerlation jerk , X axis, sec^-1
fbodyaccjerk-mean(y)	|	Mean frequency of body accerlation jerk , Y axis, sec^-1
fbodyaccjerk-mean(z)	|	Mean frequency of body accerlation jerk , Z axis, sec^-1
fbodyaccjerk-std(x)	|	Standard deviation frequency of body accerlation jerk , X axis, sec^-1
fbodyaccjerk-std(y)	|	Standard deviation frequency of body accerlation jerk , Y axis, sec^-1
fbodyaccjerk-std(z)	|	Standard deviation frequency of body accerlation jerk , Z axis, sec^-1
fbodygyro-mean(x)	|	Mean frequency of body gyroscope measurement , X axis, sec^-1
fbodygyro-mean(y)	|	Mean frequency of body gyroscope measurement , Y axis, sec^-1
fbodygyro-mean(z)	|	Mean frequency of body gyroscope measurement , Z axis, sec^-1
fbodygyro-std(x)	|	Standard deviation frequency of body gyroscope measurement , X axis, sec^-1
fbodygyro-std(y)	|	Standard deviation frequency of body gyroscope measurement , Y axis, sec^-1
fbodygyro-std(z)	|	Standard deviation frequency of body gyroscope measurement , Z axis, sec^-1
fbodyaccmag-mean	|	Mean frequency of body acceleration magnitude, sec^-1
fbodyaccmag-std	|	Standard deviation of frequency of body acceleration magnitude
fbodybodyaccjerkmag-mean	|	Mean frequency of body acceleration jerk magnitude, sec^-1
fbodybodyaccjerkmag-std	|	Standard deviation of frequency of body acceleration jerk magnitude, sec^-1
fbodybodygyromag-mean	|	Mean frequency of magnitude of body gyroscope measurement, sec^-1
fbodybodygyromag-std	|	Standard deviation of frequency of magnitude of body gyroscope measurement, sec^-1
fbodybodygyrojerkmag-mean	|	Mean frequency of magnitude of body gyroscope jerk measurement, sec^-1
fbodybodygyrojerkmag-std	|	Standard deviation frequency of magnitude of body gyroscope jerk measurement, sec^-1
