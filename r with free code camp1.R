# File:      R01_2_3_Packaages.R
#Couese:     R01: R : An introduction
# Chapter:   2: Setting up
# Secttion:  3: Packages
#Author:     Barton poulason, datalab.cc, @bartonpoulson
#Date:       2016-04-04 uploaded 
#started studing: 12-05-2021

# LOADING PACKAGES
install.packages("packman")#it manages packages
#tthen we have to load the packages
require(pacman) #gives confiramtion message
library(pacman)
# or by using "packman::p_load"you can use the p-load 
#function from pacman without actually loading pacman.
# these are packages i load every time.
pacman::p_load(pacman,dplyr,GGally, ggplot2, ggthemes, ggvis, httr, libridate, plotly, rio, rmarkdown, shiny, stringr,tidyr)
 # clean up packages
p_unload('package names')
p_unload(all)
detach("package:datasets",unload =  TRUE) #for base
# clear conslose
cat("\014")#ctrl + l
