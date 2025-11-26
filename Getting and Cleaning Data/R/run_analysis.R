#####################################################################
## Getting and Cleaning Data by Johns Hopkins University
## via Coursera
## Project assignment
#####################################################################

###################################
## Initial settings
###################################

here::i_am("Getting and Cleaning Data/R/run_analysis.R")
library(here)
here()
library(tidyverse)
library(magrittr)

sourceinit <- here("Getting and Cleaning Data/data")
sourcetest <- here("Getting and Cleaning Data/data/test")
sourcetrain <- here("Getting and Cleaning Data/data/train")
out <- here("Getting and Cleaning Data/data/out")

#################################################################
## Step 1 of the assignment:
## Merges the training and the test sets to create one data set.
#################################################################

# read in all the needed data sets

activity <- readr::read_table(file.path(sourceinit, "activity_labels.txt"),
                            col_names = FALSE) %>%
            rename(actn = X1, act=X2)
  
features <- readr::read_table(file.path(sourceinit, "features.txt"),
                              col_names = FALSE) %>%
            rename(paramn = X1, parameter = X2) 

## test data sets
aval_test <- readr::read_table(file.path(sourcetest, "X_test.txt"),
                               col_names = FALSE)
param_test <- readr::read_table(file.path(sourcetest, "Y_test.txt"),
                               col_names = FALSE)
subjid_test <- readr::read_table(file.path(sourcetest, "subject_test.txt"),
                               col_names = FALSE)
## train data sets
aval_train <- readr::read_table(file.path(sourcetrain, "X_train.txt"),
                               col_names = FALSE)
param_train <- readr::read_table(file.path(sourcetrain, "Y_train.txt"),
                                col_names = FALSE)
subjid_train <- readr::read_table(file.path(sourcetrain, "subject_train.txt"),
                                 col_names = FALSE)

## Merge all test data sets
subjid_test <- subjid_test %>%
  rename(subjid = X1)

param_test <- param_test %>%
  rename(actn = X1)

test <- cbind(subjid_test, param_test, aval_test)

## Merge all train data sets
subjid_train <- subjid_train %>%
  rename(subjid = X1)

param_train <- param_train %>%
  rename(actn = X1)

train <- cbind(subjid_train, param_train, aval_train)

## Merge train and test data sets
dt010 <- rbind(test, train)

## Check that the number of obs from train and test are matching the merged data
identical((dim(train)[1] + dim(test)[1]), dim(dt010)[1])

#################################################################
## Step 1 concludes here
#################################################################

#################################################################
## Step 2 of the assignment:
## Extracts only the measurements on the mean and
## standard deviation for each measurement.
#################################################################


## transform the data to long format and get the activity labels
dt020 <- dt010 %>%
  pivot_longer(cols= X1:X561, names_to = "paramc", values_to = "value") %>%
  mutate(paramn = readr::parse_number(paramc)) %>%
  left_join(features, by = join_by(paramn)) %>%
## keep only mean and standard deviations
  filter(str_detect(parameter,"mean\\(\\)|std\\(\\)"))


#################################################################
## Step 2 concludes here
#################################################################

#################################################################
## Step 3 of the assignment:
## Uses descriptive activity names to name the activities in the data set
#################################################################

## get the activity labels and merge with the data
dt030 <- full_join(dt020, activity, by = join_by(actn)) %>%
  arrange(subjid, actn, paramn) %>%
  mutate(activity = as.factor(act)) 

#################################################################
## Step 3 concludes here
#################################################################

#################################################################
## Step 4 of the assignment:
## Appropriately labels the data set with descriptive variable names.
#################################################################

## keep only needed variables, already renamed previously
dt040 <- dt030 %>%
  select(subjid, activity, parameter, value)

#################################################################
## Step 4 concludes here
#################################################################

#################################################################
## Step 5 of the assignment:
## From the data set in step 4, creates a second, 
## independent tidy data set with 
## the average of each variable for each activity and each subject.
#################################################################

## calculate means
dt050 <- dt040 %>%
  group_by(subjid, activity, parameter) %>%
  summarise(mean = mean(value)) %>%
  arrange(subjid, activity, parameter)

#################################################################
## Step 5 concludes here
#################################################################

#################################################################
## Export the data for coursera submission
#################################################################
write.table(dt050, file.path(out, "submitted.txt"), row.name=FALSE)


#################################################################
## End of file
#################################################################

