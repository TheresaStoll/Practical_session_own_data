library(tidyverse)

#to check working directory
getwd()

#to set the working directory
#se the Tools | Change Working Dir... menu (Session | Set Working Directory on a mac).
#This will also change directory location of the Files pane.
#https://support.rstudio.com/hc/en-us/articles/200711843-Working-Directories-and-Workspaces

#to tidy up data

#Import raw data 
#import data predictions from Jambeck paper
Jambeck_data_tidyverse <- read_csv("data/FullDataWPredictions.csv")

glimpse(Jambeck_data_tidyverse)

#use Lauren's approach
#header = TRUE - makes info in first row the header/info for labels
#na.strings = c("NA","") and na = c("NA","") tells R to treat both NA and empty strings
#in columns of character data to missing. This is actually the default, but I include 
#it because it is possible to change the code for missing data when you read a data 
#file into R.
Jambeck_data <- read.csv("data/FullDataWPredictions.csv", header = TRUE, na.strings=c("", "NA"))
Jambeck_data

glimpse(Jambeck_data)


#import OC data for 2011
OC_2011_tidyverse <- read_csv("data/GPSPPM_2011.csv")

nrow(OC_2011_tidyverse)
#nwor = to check how many rows the data has
#number of rows: 6291

#use Lauren's approach
OC_2011 <- read.csv("data/GPSPPM_2011.csv", header = TRUE, na.strings = c("", "NA"))
OC_2011

nrow(OC_2011)
#number of rows: 6291


#Clean data: 
#standardize names/units and find locations where only partial info included ####
