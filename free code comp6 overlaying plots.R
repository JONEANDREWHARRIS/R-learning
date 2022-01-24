#overlaying plots
#why would u over lay plots
#cuz u get increased info density
#in the same amout of space and same amount of time
#not to over whealming
#use restraint#just becauese u can do that doesn't mean u should do that
#use views that complement & support one another
 #they don't compete but give a greater info in a coherent and consistent way
#over laying charts
library(datasets)
?lynx
head(lynx)
#time series

#default histogram
hist(lynx)
hist(lynx,
     breaks = 14, # "suggests" 24 bins
     freq = FALSE,#Axis shows density, not freq.
     col = "thistle1",# colour for histogram)
     main = paste("Histogram of Annual Canadian lynx",
                  "Trappings,1821-1934"),
     xlab = "number of lynx trapped")
#add a normal distribution
curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)),
      col = "thistle4", #colour of curve
      lwd = 2, #line width of 2 pixels
      add = TRUE)   #superimpose on previous graph

#add two kernael density estimators
lines (density(lynx), col = "blue", lwd =2)
lines(density(lynx,adjust = 3), col = "purple",lwd =2)    

#add rug plot
rug(lynx, lwd =2, col = "grey")
