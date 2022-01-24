#free code camp bar charts
#basic graphs
library(datasets)

?mtcars
head(mtcars)
#bar plots
barplot(mtcars$cy1) #doesn't work
#we have to reformat the data
#need a table with frequencis for each category
cylinders <- table(mtcars$cyl) #create table
barplot(cylinders) # barchart 
plot(cylinders) #default x-y plot(lines)

