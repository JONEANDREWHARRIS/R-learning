#Regression
#out of many one 
#out of many variable one variable
#out of many score one score
#the idea of regression
#use many varibale to predict scores on one variable
#something for everyone
#many versions & adapataions of regression make it flexible & powerful
pacman::p_load(pacman,dplyr,GGally, ggplot2, ggthemes, ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, stringr,tidyr)

library(datasets)
?USJudgeRatings
head(USJudgeRatings)
data <- USJudgeRatings

#define variable groups
x<- as.matrix(data[-12])
y<- data[, 12]

#REGRESSION WITH SIMULTANEOUS ENTRY
#USING VARIABLE GROUPS
reg1 <- lm(y ~ x)
# or specify variables individually
reg1 < - lm(RTEN ~ CONT + INTG + DMNR + DILG + CFMG +
              DECI + PREP + FAMI + ORAL + WRIT + PHYS, 
            data = USJudgeRatings)
#result
reg1
summary(reg1)
#the * - indicaatesvalues that are below the standard probability cutoff of 0.05
#we except the intercept to be below that

anova(reg1) #coefficients w/inferential tests
coef(reg1)  #coefficient (same as reg1)
confint(reg1)# CI for coefficients
resid(reg1) # Residuals case by case
hist(residuals(reg1)) #histogram of residuals


#additional models
#use two additional libraries
p_load(lars, caret)
# a conventional stepwise regression
stepwise <- lars(x,y, type = "stepwise")

#stagewise : like steppwise but with better generalizability
forward <- lars(x,y, type =  "forward.stagewise")

#LAR - least angel regression
lar<- lars(x,y, type = "lar")
#LASSO - least absolute shrinkage and selection operator
lar <- lars(x,y, type = "lasso")
#comparison of R^2 for new models
r2comp <- c(stepwise$R2[6], forward$R2[6],
             lar$R2[6], lasso$R2[6]) %>%
             round(2)

names(r2comp) <- c("stepwise", "forward", "lar", "lasso")
r2comp