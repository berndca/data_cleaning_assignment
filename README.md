# Peer-graded Assignment: Getting and Cleaning Data Course Project

The R analysis script [run_analysys.R]("./run_analysis.R")

* downloads and extracts the UCI HAR dataset to the current directory,
* replaces the integers in the activity data with factors of their labels,
* combines the training and test datasets and their activity and subject data,
* extracts all variable names with "mean" or "std" in their names,
* drops all columns which do NOT have "mean" or "std" in their names,
* stores the resulting data.frame in the variable *selectedData*,
* groups the selectedData columns by "subjects" and "activity",
* calculates the means for these group_by and stores them in *groupedMeans*.

To run this script type source("run_analysis.R") in the R console or Rscript run_analysis.R in a shell window.

Te script was developed with R version 3.6.3 (2020-02-29) -- "Holding the Windsock". It uses the packages 

* dplyr
* readr
* stringr

If you are missing any of these packages install them with install.packages().

The variable names are described in [Codebook.md]("Codebook.md"). There are two types of
variables:

* the variables "subject" and "activity" for the subject and activity columns and
* variables derived from the variables in the features.txt file. These variables 
have the string "mean", "Mean" or "std" in their name to make sure no information is lost.
These variable names have been processed by removing all "()" and ")" and replacing 
"-", "," and "(" with "." to avoid problems in downstream processing. However the names 
have not been changed any further to make it easy to understand which variable names in 
the original dataset they are referring to.



