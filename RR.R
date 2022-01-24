#file    : DS02_3_2_APIs
#course  : Data Sourcing
#Section : Getting data
#Video   : APIs
#By      : Freecode camp
#date    : 24/04/21

#install and load packages
pacman::p_load(jsonlite)
install.packages("curl")
#loading data'

#Ergast.com has historical data for formula 1 races
browseURL("http://ergast.com/mrd")

#1957 race data is available in JOSON format at:
browseURL("http://ergast.com/api/f1/1957/results.json")
url <- 'http://ergast.com/api/f1/1957.json'
(f1 <- fromJSON(url))#save and show data
str(f1)
##convert data rlisst into a data.frame
(dr <- f1$MRData$RaceTable$Races$Results[[1]]$Driver)
colnames(dr)
