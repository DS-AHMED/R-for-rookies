# Author : Ahmed Abdalla
# title : Matrices
# Data : 2021/11/6

# The basic syntax for creating a matrix in R is as follows:
matrix(data , nrow , ncol , byrow , dimnames ) # - Byrow is a logical attribute which is FALSE by
                                               # default . Setting it true will arrange the input
                                               # vectors by row .
                                               # - Dimnames allows you to name rows and columns in a matrix .
# example of how to create a matrix with two rows and three columns:
m <- matrix ( nrow = 2 , ncol = 3)
# how to check the diminsions of the above matrix?
dim (m)
# matrices are constructed column-wise from the upper left the bottom right.
m <- matrix (1:6 , nrow = 2, ncol = 3)

# An element at the mth row, nth column of A can be accessed
#by the expression A[m, n].
m[2 , 3] # element at 2nd row , 3rd column
m[2 , ] # the 2nd row
m[ , 3] # the 3rd column

# Example for constructing a matrix row-wise:
mdat <- matrix (c(1 , 2 , 3 , 11 , 12 , 13) ,
                nrow = 2,
                ncol = 3,
                byrow = TRUE )

# Creating to name the rows and colunms of a matrix
rows <- c(" row1 ", " row2 ", " row3 ", " row4 ") # Creating vector of row names
cols <- c(" colm1 ", " colm2 ", " colm3 ") # Creating character vector of column names
mat <- matrix (c (4:15) , nrow = 4, byrow = TRUE ,
                 dimnames = list (rows , cols ) )
print (mat) 

# how to change the dimension of a matrix using dim().
m <- matrix (1:10 , nrow = 1, ncol = 10)
dim(m) <- c(2,5)

# how to create a matrix by combining two columns or two rows.
x <- 1:3
y <- 10:12
cbind (x, y) # binding the two vectors as columns
rbind (x, y) # binding the two vectors as rows

# example for assigning a value to an element in the matrix?
mat [2 ,3] <- 20
# example for replacing a certain value in the matrix by a different value
mat [mat == 4] <- 0 # this includes even if the value is repeated more than one time.

# example for adding a row or a column to a matrix.
new_mat = matrix (1:12 , nrow = 3, ncol = 3)
cbind ( new_mat , c(1 ,2 ,3)) # number of elements must be equal to the number of elements in each column
rbind ( new_mat , c(1 ,2 ,3)) # number of elements must be equal to the number of elements in each row

# In order to ass two matrices, they need to have the same number of rows and columns
sum <- mat1 + mat2 # mat1 and mat1 represents two matrices of the same number of rows and columns

# Other mathimatical operations:
diff <- mat1 - mat2
div <- mat1 / mat2
prod <- mat1 *4
prod <- mat1 * mat2

# A square matrix A is said to be invertible if there exists a
# matrix B such that AB = BA = I, Where I is the identity
# matrix (1 along the diagonal, 0 elsewhere).
set.seed (1234)
x <- matrix ( rnorm (25) , nrow =5 , ncol =5)
