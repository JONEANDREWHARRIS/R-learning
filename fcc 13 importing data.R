#importing data
#make it esle
#csv,xlsx,txt,json
#r has many built-in function for importing datas
# or just use one 
#he uses rio -R input output
#it combines all of R's import functions into one simple utility
pacman::p_load(pacman,dplyr,GGally, ggplot2,ggthemes,
               ggvis, httr, libridate, plotly, rio, rmarkdown,
               shiny,stringr,tidyr)
#about excel files
#frim the official R documentation
browseURL("http://j.mp/2aFUrJ")#not working

#csv
#rio_csv <- import("~/Desktop/mbb.csv")
#
r_txt <- read.table("C:\\Users\\andre\\Desktop\\mbb.txt",header = TRUE,sep ="\t")

forcsv<- read.csv("C:\\Users\\andre\\Desktop\\mbb.csv",header = TRUE)
forcsv
