# Author : Ahmed Abdalla
# title : Matrices
# Data : 2021/11/10

# Note 1: run the code in R to observe the output.
# note 2: run the matrices after each modification to observe the changes.

# How to access an element in a matrix?
A <- matrix(1:9, 3,3)
A[2 ,3] #element at 2nd row, 3rd column
A[2 , ] #the 2nd row
A[ ,3] #the 3rd column
A[c(1,2), c(2,3)] # select row 1 and 2, column 2 and 3
A[c(1,2), ] # leaving the column field empty will select all columns and vice versa
A[-1,] # select all rows except first.
class(A[1,]) # choosing 1 row will yield a vector.
class(A[1,,drop = FALSE]) # this will the result will be a 1X3 matrix
A[c(TRUE, FALSE, TRUE), c(TRUE, TRUE, FALSE)] # How logic can be used to return elements from a matrix
A[c(TRUE, FALSE), c(2, 3)] # the two element logical vector is recycled to 3 element vector
# It is also possible to index using a single logical vector where recycling takes place if necessary.
A[c(TRUE, FALSE)]
A[A>5] # select elements that are greater than 5
A[A%%2 == 0] # select even numbers
# In order to define rows and column names, you can create two vectors of different names, one for row and other for a column. Then, using the Dimnames attribute, you can name them appropriately:
rows = c("row1","row2","row3","row4") 
cols=c("colm1","colm2","colm3")
mat<-matrix(c(4:15),nrow= 4,byrow=TRUE,
            dimnames=list(rows,cols) )
mat
mat[TRUE, c('colm1', 'colm3')] # calling elements by using the names of columns
mat[2,3]<-20 # assigning a new value for an element
mat
mat[mat== 4]<-0 # replacing all 4s in the matrix by zeros.
mat[mat <5] <- 0 # replacing all elements that are less than 5 by 0s

"problem: set the diagonal of a matrix to zero"
mat <- matrix(1:16, 4,4)
mat
indices <- cbind(1:4, 1:4)
mat[indices] <- 0
mat

# how to transpose a matrix ?
t(mat)
mat

# how to change the dimension of a matrix?
dim(mat) <- c(2,8); 
mat

# operation betweem two matrices:
mat1<-matrix(data= 1:8 ,nrow= 4 ,ncol=4)
mat2<-matrix(data= 1:16 ,nrow= 4 ,ncol=4)
mat1
mat2
sum<-mat1+mat2
sum
diff<-mat1-mat2
diff
div<-mat1/mat2
div
prod<-mat1*4
prod
prod<-mat1*mat2
prod
