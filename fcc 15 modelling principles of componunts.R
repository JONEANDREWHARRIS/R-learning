#modelling data
#principle components
#less is more
#that is, less noise & fewer unhelpful variables in data = more meaning
#AKA dimensionality reduction
#shadows - people are 3dimentional & shadows are 2d
#viewing the imporatant info
#most common method is principal component analysis(pca)
#PCA - Two variables,Regression, perpendicular distance, collapse,rotate
#went from 2d to 1d but maintained mosst of important info
#and we made analysis & interpretation eadier & more reliable
pacman::p_load(pacman,dplyr,GGally, ggplot2, ggthemes, ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, stringr,tidyr)
library(datasets)
cars <- mtcars[, c(1:4, 6:7, 9:7)]
head(cars)

#compute cpa
#for entire data frame
pc <- prcomp(cars,
             center = TRUE, #centers means to 0 to (optional)
             scale = TRUE) # sets unit variance (helpful)
# to specify variables
pc <- prcomp(~ mpg + cyl + disp + hp + wt + qsec + am +
               gear +carb,
             data = mtcars,
             center = TRUE,
             scale = TRUE)
#examine results

summary(pc)
#screenplot
plot(pc)

#see how cases load on PC's
predict(pc) %>% round(2)

#biplot of first two components
biplot(pc)

