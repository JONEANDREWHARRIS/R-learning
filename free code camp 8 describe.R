#describe
#get more details
#this from the psych package
#n,mean,SD,median,10%trimmed mean, MAD - Meadian 
#Absolute Deviation,min/max, range, skewness, kurtosis & SE - Standard Errors
#don't forget * this comes after graphical summaries

 # install packages 
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes,
               ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny,
               stringr, tidyr)
library(datasets)
head(iris)
p_load(psych)
p_help(psych)#opens package in PDF in browser # this one is big so dont run it

p_help(psych, web= F) #opens help in R viewer

#for quantitative vatiables only
describe(iris$Sepal.Length) # one quantitative variable
describe(iris)
