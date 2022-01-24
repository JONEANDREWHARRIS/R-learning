#bivariate distributions
#scatter plots
#for two quantitative variables
#canoical case for a scatter plot
#what to look for in your scatter plot
# to see the association between two variables are linear and can be discribed by a straight line

#we also want to check that the consistent spread across the scores as you go from one end of x axis to the other
#cuz if things fan out considerably then you have what's called heteroscedasticity and it complicates the analysis

#look for outliers cuz an unusual score or especially unsual combination of scorces can drastically throw off some of your other interpretations

#correlation to see the associations between the variables

##get into scatter plot
library(datasets)
?mtcars
head(mtcars)
# good to first check univariate disstributions
hist(mtcars$wt)
hist(mtcars$mpg)
#basic x-y for two quantitative variables
plot(mtcars$wt, mtcars$mpg)

#add some options
plot(mtcars$wt,mtcars$mpg,
     pch =19,# solid circle
     cex = 1.5, #make 150% size
     col = "#cc0000",#red
     main = "MPG as a Function Weight of cars",
     xlab = "weight (in 1000 pounds)",
     ylab = "MPG")
#this(scatter plot) is the easiest way  to find the association between the variables
#especially when the variables are quantitative #scaled or measured outcome
#use that as an intro for any numerical or stat wrk you do after that
 

