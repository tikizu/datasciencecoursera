## Project task
This folder contains the Getting and Cleaning Data Course Project provided by Johns Hopkins University via Coursera https://www.coursera.org/learn/data-cleaning 

The purpose of this project is to demonstrate learners ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

The data used is from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The grading criteria are the following:
1. The submitted data set is tidy. 
2. The Github repo contains the required scripts.
3. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
4. The README that explains the analysis files is clear and understandable.
5. The work submitted for this project is the work of the student who submitted it.
  
## Project submission

The R script called [run_analysis.R](https://github.com/tikizu/datasciencecoursera/blob/master/Getting%20and%20Cleaning%20Data/R/run_analysis.R) does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

[Submitted data](https://github.com/tikizu/datasciencecoursera/blob/master/Getting%20and%20Cleaning%20Data/R/codebook.md)

[Code book](https://github.com/tikizu/datasciencecoursera/blob/master/Getting%20and%20Cleaning%20Data/R/codebook.md) 

