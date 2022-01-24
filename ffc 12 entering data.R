#ENTERING DATA
#as hoc data
#many methonds
#colon,seq - for squence
#c - for concatinate
#scan,and rep
#<- assignment operator and read this as gets
#= are poor form
#in RStudio the shortcut option+- (option-dash)inserts

#colon operator
x1 <- 0:10
x1
#decending
x2<- 10:0
x2
?seq
(x3<-seq(10))
#specify change in values
(x4 <- seq(30,0,by = -3))

#c - concatinate
x5 <- c(3,5,5,3,2,5,65)
x5


#scan
#entering data
x6 <- scan()#after running this command, go to console
#hit return after each number 
# hit return twice  to stop
x6

#rep is for replicate elements
x7 <- rep(TRUE,5)
x

#repeat sets
x8<- rep(c(TRUE,FALSE),7)
x8

x9 <- rep(c(TRUE,FALSE),each =5)
x9
