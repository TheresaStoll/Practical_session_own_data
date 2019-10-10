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
Jambeck_data <- read_csv("data/FullDataWPredictions.csv")

#import OC data for 2011
OC_2011 <- read_csv("data/GPSPPM_2011.csv")


Jambeck_data<- read.csv("FullDataWPredictions.csv", header=T, na.strings=c("","NA"))
Jambeck_SI_data<- read.csv("Jambeck_SI.csv", header=T, na.strings=c("","NA"))
rivers<-read.csv("rivers_lebreton.csv", header=T, na.strings=c("","NA"))
PA_data<- read.csv("PA_DiveAgainstDebris_FULLDATASET.csv", header=T, na.strings=c("","NA")) #nrow 7369
OC_data.2017<- read.csv("GPS-PPM-Item-Earth11.27.18.csv", header=T, na.strings=c("","NA")) #nrow 12858
OC_data.11<- read.csv("GPSPPM 2011.csv", header=T, na.strings=c("","NA")) #nrow 6291
OC_data.12<- read.csv("GPSPPM 2012.csv", header=T, na.strings=c("","NA")) #nrow 5625
OC_data.13<- read.csv("GPS-PPM-Item-Earth_2013.csv", header=T, na.strings=c("","NA")) #nrow 5573
OC_data.14<- read.csv("GPS-PPM-Item-Earth_2014.csv", header=T, na.strings=c("","NA")) #nrow 6100
OC_data.15<- read.csv("GPS-PPM-Item-Earth_2015.csv", header=T, na.strings=c("","NA")) #nrow 5879
OC_data.16<- read.csv("GPS-PPM-Item-Earth_2013-2016.csv", header=T, na.strings=c("","NA")) #2013-2016 NOTE some columns names and units differ to 2017 #nrow 9711


#Clean data: 
#standardize names/units and find locations where only partial info included ####
