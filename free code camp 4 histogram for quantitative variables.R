#free code camp histograms
#for data that is quantitative, scaled measured, intervals
#ratio level
#it allow to see what you have 
# look for shape
#gaps
#outliers extrime values
#symmetry see wht kind of adujust ment you have to do in the distribution
library(datasets)
?iris
head(iris)
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)#the gap
hist(iris$Petal.Width)#there is a gap

#histogram by group
#put graphs in 3 rows and 1 column
par(mfrow =c(3,1))#par - parameter c - concatinate (treat this 3 num as 1 unit)

#Histogeams for each species using options
hist(iris$Petal.Width[iris$Species=="setosa"],#this brackets means only select these row
     xlim = c(0,3),
     breaks = 9,
     main = 'Petal With for Setosa',
     xlab ="",
     col = "red")


hist(iris$Petal.Width[iris$Species=="versicolor"],#this brackets means only select these row
     xlim = c(0,3),
     breaks = 9,
     main = 'Petal With for Versicolor',
     xlab ="",
     col = "purple")

hist(iris$Petal.Width[iris$Species=="virginica"],#this brackets means only select these row
     xlim = c(0,3),
     breaks = 9,
     main = 'Petal With for verginica',
     xlab ="",
     col = "blue")
# you have to restore the graphic parameter 
par(mfrow = c(1,1))
#when u have different catogories and have different values of the variable
