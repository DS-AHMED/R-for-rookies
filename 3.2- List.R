# Author : Ahmed Abdalla
# title : List
# Data : 2021/11/10

# Note 1: run the code in R to observe the output.
# note 2: run the objects after each modification to observe the changes.

# List is a data structure having components of mixed data types.
# A vector having all elements of the same type is called atomic vector but a vector having elements of different type is called list.
# List can be created using the list() function.

# an example fora list:
x <- list("a" = 2.5, "b" = TRUE, "c" = 1:3)
typeof(x) # checking the type of x
length(x) # checking the length of x
str(x) # examining the structure of x

# creating a list from vectors:
n = c(2,3,5)
s = c("aa", "bb","cc","dd","ee")
b = c(TRUE,FALSE, TRUE, FALSE, FALSE)
x <- list(n, s, b, 3)
x
x[2] # slicing vector s from the list
x[[2]][1] #slicing an element inside vector s

# we can assign names to list members in refer to the using these names:
v = list(bob = c(2,3,5), john = c("aa", "bb"))
v["bob"]
v[c("bob", "john")]

# accessing components in a list:
x <- list(name = "john", age = 19, speaks = c("english", "french"))
x
x[c(1:2)] #index using integer vector

# indexing with one [] returns a sublist not the content, double [[]] returns the content.
typeof(x["age"]) # returns a list
typeof(x[["age"]])# returns a double which is the type of the content.

## modifying a list:

# We can change components of a list through reassignment
x[["name"]] <- "Clair"
x
# adding to a list:
x[["married"]] <- FALSE
x
# removing a component from a list:
x[["age"]] <- NULL # We can delete a component by assigning NULL to it.
str(x)
# The component of the list may also have a name attached to it.
my.list <- list ( stud.id =12456 , stud.name=" Ali " ,
                   stud.marks =c( 56, 65, 68, 78) )

my.list
my.list$stud.id
my.list$stud.name
# We can add new members to our list. 
new.list <- list(age = 17, sex = "male")
my.list <- c(my.list, new.list)
my.list
# Use names(..) to modify the attribute names.
names(my.list)
names(my.list) <- c("identification number", "first name", "student marks", "Age", "Gender")
my.list
# we can Remove list members either using -ve index or through assigning NULL value.
my.list <- list( id =101 , Name =" Ali", Marks = c(56 ,58 ,65))
length(my.list)
my.list <- my.list[-3] # removing the third item using a negative index
my.list[1] <- NULL # removing the first item using Null value
length(my.list)
