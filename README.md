#Getting and Cleaning Data Course Project
##Purpose

This project requires the student to download and decompress zip archives, to read text files into R dataframes, to analyze data structures, to determine intermediate concatenation and merge operations, and to demonstrate other fundamental operations required to scrub a large data set.  The deliverable is a tidy dataset ready for downstream analysis with documentation as described below.

##Submission summary

1.  `README.md`, this file - explains the scope of the project and summarizes the analysis

2.  An R script called `run_analysis.R` that creates the tidy data set `average.data.txt` described in this README

3.  `average.data.txt`, a tidy data set created from a merge of the training and the test sets and the following processing steps:

	- Extraction of only the mean and standard deviation figures for each measurement
	- Application of descriptive names and labels for activities and variable names in accord with tidy data principles
	- Calculation of the average of each variable by activity and by subject

4.  `codebook.md`, that describes variables, their units, and other data information in fashion similar to the codebook provided with the source data

5.  the Github repository link containing these project files:  https://github.com/tritch/Getting-and-Cleaning-Data-Course-Project

##run_analysis.R user notes

Before the reader may execute `run_analysis.R` some simple modifications are required in the text of `run_analysis.R`.  Specifically, the user should copy `run_analysis.R` to desired directory and edit the working directory (line 2) to suit the local environment.  This is accomplished by either opening `run_analysis.R`:

- In a text editor to modify the working directory path before loading in R, .... OR ....
- In RStudio, changing directories in the IDE, then selecting all the code in the `run_analysis.R` window, then clicking on the "Run" button

##run_analysis.R functional description

###run_analysis.R provides the following in sequence:

- Sets working directory to suit local environment for the required file download
- Defines the function `read_concat()`, which will be used to read and concatenate "training" and "test" files for subjects, activities, and measurement data.
- Downloads the .zip archive found at the specified URL, and unzips it to the working directory under the folder "./UCI HAR Dataset"
- Deletes both "Inertial Signals" directories, which contain files from the .zip archive not needed for the analysis
- Calls `read_concat()` three times to read and concatenate training and test files for subjects, activities, and measurement data.
- Modifies column headings as needed, and checks that the row dimension for all three dataframes are identical.
- Adds descriptive variable names from the features text file from the .zip archive.  The term "features" is used to describe the measurement variable names.
- Extracts only the mean() and sd() feature parameter types into a new intermediate dataframe, verifies that the names within are as expected, then proceeds to cleanup many of the measurement variable names with numerous regular expression scans.
	- All are converted to lower case
	- Patterns matching c("()-x", "()-y", "()-z", "-std\\(\\)", "-mean\\(\\)" ) are replaced with c("(x)", "(y)", "(z)", "-std", "-mean")
- Reads activity labels file (from .zip archive) and relabels activity labels with descriptive variable names to comply with tidy data norms
- Creates an intermediate dataset `data` with a merge of the separate subjects vector, activities vector, and the intermediate data set
- Generates the deliverable dataset from the intermediate dataset (`data`) by calculating measurement averages by subject, by activity, and merging with subject and activity columns.
- As a final step, writes this dataset `average.data` to the working directory as "average.data.txt", a space-delimited ASCII text file.