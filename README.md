# gettingcleaningdataproject
For the course project

README for Course Project

This repo contains 3 files:
1.	“run_analysis.R”, which when run in the R program processes the raw data according to the requirements set out in the Course Project. It produces a tidy set of summary data in a data frame named df_tidy. This data frame is written to a text file (file number 2).
2.	“tidy_data.txt” which is the text file containing the tidy summary data.
3.	Codebook describing the variables and summaries calculated in the first file, and what transformations were made to the raw Samsung data.
It is assumed that whoever is running the run_analysis R script has already downloaded the relevant raw Samsung data from the following link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
And has unzipped the file and put the following files directly in the R working directory (no sub-folders):
1.	"X_test.txt"
2.	"X_train.txt"
3.	"features.txt"
4.	"subject_test.txt"
5.	"subject_train.txt"
6.	 "y_test.txt"
7.	 "y_train.txt"
8.	 "activity_labels.txt"
The script will read in the files above before proceeding to carry out the necessary transformations and calculations as required by the Course Project instructions – details outlined in the Codebook.
