#hierarchical clustring
#but similarity depends on your crietria
#hierarchical vs set k
#measures of distance
#divisive vs aggglomerative
#educlidean distance,hierachiacal clustering
#&divisive method


#load packacges
pacman::p_load(pacman,dplyr,GGally, ggplot2, ggthemes, ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, stringr,tidyr)
library(datasets)
?mtcars
head(mtcars)
cars <- mtcars[, c(1:4, 6:7, 9:11)]#select variables
head(cars)

#compute and plot clusters
#save hierarchical clustering to "hc"
#pipes from dplyr
hc <- cars  %>% #get cars data
      dist  %>% # compute distance/dissimilarity matrix
      hclust
plot(hc)#cluster dendrogram

#add boxes to plot

rect.hclust(hc, k=2, border = "grey")
rect.hclust(hc, k=3, border = "blue")
rect.hclust(hc, k=4, border =  "green4")
rect.hclust(hc, k=5, border =  " darkred")
