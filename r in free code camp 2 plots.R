# R WITH FREE CODE CAMP 2
#LOADING DATA SETS
library(datasetes) # load /unload base packages manually
# load data
head(iris)
#for help for plot()
?plot
#the '$' sign is for use this variable in this data
plot(iris$Species)
plot(iris$Petal.Length)#quantitative vaariable
plot(iris$Species, iris$Petal.Width )#cart x quant
#the plot is adaptive the data that we give and its plots according to it
plot(iris$Petal.Length, iris$Petal.Width) #Quant pair
plot(iris)

# plot with options
plot(iris$Petal.Length, iris$Petal.Width,
     col = "#cc0000", # hex code for datalb.cc red
     pch =19,         # use solid circles for points
     main = "Iris: Petal Length vs. Petal width",
     xlab = "petal length",
     ylab = "petal width")
#plot with formulas
plot(cos, 0, 2*pi)
plot(exp, 1, 5)
plot(dnorm, -3,+3)
#formulas with options
plot(dnorm, -3,+3,
     col ="#cc0000",
     lwd = 5,
     main = "standard normal distribution",
     xlab = "z-scores",
     ylab = "density")
 