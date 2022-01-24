#selecting casses
#focus on your analysis
#select by category or value
library(datasets)
 head(iris)
#all data
 hist(iris$Petal.Length)
 summary(iris$Petal.Length)

 summary(iris$Species) #get names and n for each species
 
 #select cases by their category
 #versicolor
hist(iris$Petal.Length[iris$Species == "versicolor"],
      main = "Petal length: Versicolor")

#virginica
hist(iris$Petal.Length[iris$Species == "virginica"],
     main = "Petal Length: Virginica")

#Setosa
hist(iris$Petal.Length[iris$Species =="setosa"],
     main = "Petal length: Setosa")

#selecting by values####

#select short petals only (all Setosa)
hist(iris$Petal.Length[iris$Petal.Length < 2],
     main = "Petal Length < 2")

#multiple selectors
#short viriginica petals only
hist(iris$Petal.Length[iris$Species == "virginica" &
                         iris$Petal.Length <5.5],
     main = "Petal Length: Short Virginica")

# CREATE SUBSAMPLE
#Format:data [rows, columns]
#leave rows or columns blank to select all
i.setosa <- iris[iris$Species == "setosa",]

#explore subsample
head(i.setosa)
summary(i.setosa$Petal.Length)
hist(i.setosa$Petal.Length)




