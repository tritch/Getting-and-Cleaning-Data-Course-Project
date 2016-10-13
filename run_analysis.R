rm(list=ls())  # clear workspace
# Set working directory, fetch data to it
dataDirName <- "C:/Users/tom/Documents/DataScience/course 3/project" # edit this path as desired
setwd(dataDirName)  # make it working directory
#
# function read_concat() reads and concatenates "training" files and "test" files for
# `subject` (subjects), `X` (the signal data), and `y` (activities) data sets
# `pattern` is filename pattern for the grep match - options are "/subject", "/X", or "/y"
# Returns a dataframe with training set appended with test set
# Throws "error in path or filename" message if file name(s) don't exist
read_concat <- function(pattern) {
	# tmp <- grep(pattern, list.files("./", recursive = T), value = T)
	if( identical( tmp <- grep(pattern, list.files("./", recursive = T), value = T), character(0)) )
		stop("error in path or filename")
	cat("files to be concatenated in this order: ", tmp[2], "\t", tmp[1])
	return( tmp <- rbind(read.table(tmp[2]), read.table(tmp[1])) )
}
#
##################################################################################################
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file( url, destfile="./data.zip", mode = "wb")
# unzip the data.zip archive to current working directory;  files will be unzipped to folder "./UCI HAR Dataset"
unzip("./data.zip", overwrite = T, exdir = getwd())
##################################################################################################
# Now set working dir (wd) to folder "./UCI HAR Dataset"
setwd(wd <- paste0(getwd(), "/UCI HAR Dataset"))
# Note that files in both "Inertial Signals" directories are not needed, so we delete them
unlink(c("test/Inertial Signals", "train/Inertial Signals"), recursive = T, force = T)
#
# Read and concatenate training and test files for subjects, data, and activities
subjects <- read_concat("/subject")
colnames( subjects ) <- "subjects"
data <- read_concat("/X")
activities <- read_concat("/y")
colnames( activities ) <- "activities"
# Are all three data structures of same row dimension?
all( sapply( list(data=data, activities=activities), dim)[1,] == dim(subjects)[1])
# Read features file into `featureDF`, provide descriptive variable names
if(!identical(grep("features.txt", list.files(".", recursive = T), value = T), character(0))) {
	featureDF <- read.table("./features.txt")
	colnames(featureDF) <- c("featureNum", "featureParameter")
} else {
	stop("error in path or filename")
}
# scan for mean() and sd() featureParameters in `featureDF`
dataIndex <- grep("-[mMsS][eEtT][aAdD]([nN])?\\(\\)", featureDF[ , "featureParameter"])
# fetch these values
dataMeanSd <- data[ , dataIndex ]
# inspect names in dataMeanSd
head(names(dataMeanSd), 10)
# rename `dataMeanSd` columns with "featureParameter" factor names
names(dataMeanSd) <- featureDF[dataIndex, "featureParameter"]
#
# verify column names same as "featureParameter" factor names from `featureDF`
# Throws message if no filesystem match on path and/or filename
# Convert column names in `dataMeanSd` to lower case
if( sum( colnames(dataMeanSd)[1:66] !=
	as.character(featureDF[dataIndex, "featureParameter"][1:66]) ) == 0 )
		cat("column names verified")
names(dataMeanSd) <- tolower( names(dataMeanSd) )
# clean-up column names with these pattern replacements
pattern <- c("()-x", "()-y", "()-z", "-std\\(\\)", "-mean\\(\\)" )
replace <- c("(x)", "(y)", "(z)", "-std", "-mean")
# Note:  gsub() and sub() don't work with vector patterns, so we scan all colnames in nested for loops
nn <- length(names(dataMeanSd)); pp <- length(pattern)
for( n in 1 : nn )
	for( p in 1 : pp )
		names(dataMeanSd)[ n ] <- gsub( pattern[ p ], replace[ p ], names(dataMeanSd)[ n ] )
rm( n, nn, p, pp, pattern, replace )  # cleanup a bit
names(dataMeanSd)
# Read activity labels file into `activityLabelsDF`, provide descriptive variable names
# Throws message if no filesystem match on path and/or filename
# Convert activity labels to lower case, and some label clean up
if(!identical(grep("activity_labels.txt", list.files(".", recursive = T), value = T), character(0))) {
	activityLabelsDF <- read.table("./activity_labels.txt")
	colnames(activityLabelsDF) <- c("activityNum", "activityLabel")
} else {
	stop("error in path or filename")
}
activityLabelsDF[ , "activityLabel"] <- 
	gsub( "_", "-", tolower( activityLabelsDF[ , "activityLabel"] ) )
# remap activities$activities labels from numeric to descriptive text
activities$activities <- activityLabelsDF[activities$activities, "activityLabel"]
# merge subjects vector, activities vector, and dataMeanSd dataframe
data <- cbind(subjects, activities, dataMeanSd)
# write first dataset result to storage
write.table(data, "../merged dataset.txt", row.names = F)
# generate second dataset.  Averages are calculated by subject, by activity
average.data <- aggregate(data, by=list(subjects=data$subjects, activities=data$activities), FUN=mean)
average.data <- average.data[, !(colnames(average.data) %in% c("activities", "subjects"))]
# reconstruct by subject, by activity columns to bind to average.data dataframe
numActivities <- length(tmp <- sort(unique(data$activities)))  # 6
numSubjects <- length(unique(data$subjects))  # 30
subject <- c( rep(1:numSubjects, numActivities) )
activity <- c( sapply(tmp, rep , numSubjects ) )
# columns:  subject+activity+ 66 measurement averages
average.data <- cbind( subjects=subject, activities=activity, average.data )
# write second dataset result to storage
write.table(average.data, "../average.data.txt", row.names = F)