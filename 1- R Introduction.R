

#types of classes in R

x <- c(0.5 , 0.6) # numeric
x <- c(TRUE , FALSE ) # logical
x <- c(T, F) # logical
x <- c("a", "b", "c") # character
x <- 9:29 # integer
x <- c (1+0i, 2+4i) # complex

# If more than one class is mix in on object R will prioritize one class
# over another according to a specific order.
y <- c(1.7 , "a") ## character
y <- c(TRUE , 2) ## numeric
y <- c("a", TRUE ) ## character

# how to check the class of an object?
x <- 0:6
class (x)

# how to change the class of an object?
as.numeric (x)
as.logical (x)
as.character (x)

# how to create a vector as a sequence of numbers?
series <- 1:10
series <- seq (10)
series <- seq( from =1 , to= 10 , by =0.1)

# how to replicate a vector for a certain amount of times?
rep (c(0 , 0 , 7) , times = 4)
# we can also define the number of repetition for each number in the vector.
rep (c(2 , 4 , 2) , each = 2)
# example of making a sequence that goes backward:
seq ( from = 4.5 , to = 3.0 , by = -0.5)
# how to define the number of elements in a sequence ?
seq ( from = -2.7 , to = 1.3 , length.out = 9)
# how to check if there is any missing data in your object?
all ( x , na.rm= FALSE ) # X is the object, False means don't remove the NA data
                         # If False is replaced by True that means removing all
                         # the missing data


