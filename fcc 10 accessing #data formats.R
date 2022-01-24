#ASSCESSING DATA
#data formates
#fundamentally the data can be different kinds of things
#difff the data types
#diff structurees
#data tyoes
## numeric(interger,dingle& double),character,logical,complex&raw
#you can arrange them into data structures
#the most common strctures are
## vector, Matrix/aarray,data frame, list

#vector is one or more numbers in a one dimentional array (in a staright line)
#all same data types
#R's basic data object

#matrix
#two dimentions
#same length
#same class
#columns are not named #reffered by index numbers

#Array
#three or more dimentional

#data frame
#-can have vectors of multiple types
#all same length
#closest R analogue to spreadsheet
#special function

#lsit
#most flexible
#ordered collection of elements
#Any class,length, or structure
#can include lists #one inside the other

##Coercion is good
#that is changing a data object from one type to another
#can change character to logical
#matrix to data frame
#double to interger


#numeric

n1 <- 15 #double precision by default
n1
typeof(n1)
n2 <- 1.5
n2
typeof(n2)
# charater
c1 <- "c"
c1
typeof(c1)

c2 <- "a string of txt"
c2
typeof(c2)
#logiccal
l1<-TRUE
l1
typeof(l1)

l2 <- F
l2
typeof(l2)

#vector
#c- concatinate or collect or combine
v1 <-c(1,2,3,4,5)
v1
is.vector(v1)

v3 <-c(TRUE,TRUE,FALSE,FALSE,FALSE)
v3
is.vector(v3)

#matrix
m1 <- matrix(c(T,F,T,F,T,F),nrow =2)
m1
m2 <- matrix(c("a","b",
               "c","d"),
             nrow = 2,
             byrow =  T)
m2

#array

a1 <- array(c(1:24), c(4,3,2))
a1
#data frame can combine vectors of the same type
vNumeric   <- c(1, 2, 3)
vCharacter <- c("a","b","c")
vLogical   <- c(T, F, T)

dfa <- cbind(vNumeric,vCharacter,vLogical)
dfa #matrix of one data type


df <- as.data.frame(cbind(vNumeric,vCharacter,vLogical))
df

#lists

o1 <- c(1,2,3)
o2 <- c("a","b","c","d")
o3 <- c(T,F,T,F,T)
list1<- list(o1,o2,o3)
list1

list2 <- list(o1,o2,o3,list1)
list2


#coercing types 
##automatic coercion

#goes to "leasst restrictive" data type
(coerce1 <- c(1, "b",TRUE))
typeof(coerce1)
## cperce numeric to interger
(coerce2 <- 5)
typeof(coerce2)

(coerce3<- as.integer(5))
typeof(coerce3)

##coerce character to numeric
(coerce4 <- c("1","2","3"))
typeof(coerce4)

(coerce5 <- as.numeric(c("1","2","3")))
typeof(coerce5)

#most oftenly done
#coerce matrix to data frame
(coercee6 <- matrix(1:9,nrow = 3))
is.matrix(coercee6)

(coerce7 <- as.data.frame(matrix(1:9,nrow= 3)))
is.data.frame(coerce7)
