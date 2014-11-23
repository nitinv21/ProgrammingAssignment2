## Write a function to store the given matrix 
## write  second function to calculate inverse of matrix
##if inverse already exists then return from cache otherwise calculate
## functions do

## Creates a special matrix  that can cache its inverse
makeCacheMatrix <- function( my_matrix1 = matrix()) 
{
    ## Initialize the inverse variable
    my_inverse <- NULL
    ## Method to set the matrix
    set <- function( matrix ) 
    {
          my_matrix1 <<- matrix
          my_inverse <<- NULL
    }
    ## Method the get the matrix
    get <- function() 
    {
        ## Return the matrix
        my_matrix1
    }
    ## Method to set the inverse of the matrix
    setInverse <- function(inverse) 
    {
      my_inverse <<- inverse
    }
    ## Method to get the inverse of the matrix
    getInverse <- function() 
    {
        ## Return the inverse property
        my_inverse
    }    

}


## cacheSolve will find if already inverse of matrix exists
## if it exists then return otherwise calculate using solve function
cacheSolve <- function(x, ...) 
{
    ## get inverse matrix from makeCacheMatrix
    # if it is already calculated then it will be not null 
    my_invert_matrix <- x$getInverse()
    ## if already there is inverse then no need to calculate further
    if( !is.null(my_invert_matrix) ) 
    {        
       print("cache") 
       return( my_invert_matrix )
    }
    # it look like it is not calculated yet so we will calculate it
    ## Get the matrix from our object
    my_matrix <- x$get()
    ## Calculate the inverse using solve function
    my_invert_matrix  <- solve( my_matrix ) 
    ## Srore the inverse to the matrix in makeCacheMatrix using setInverse
    x$setInverse( my_invert_matrix )
    ## Return the matrix
    return ( my_invert_matrix )
}

# to test above code use following in R Studio

# create a matrix object using matrix function
# v_matrix <-  matrix( c(1,2,3,4), 2, 2) 

#create a cache matrix object using function  makeCacheMatrix
# v_cache <- makeCacheMatrix( v_matrix )

#calculate inverse of the matrix uisng cacheSolve function 
#cacheSolve( v_cache )

#make second call to same cacheSolve function this time it will 
# return result from cache
#cacheSolve( v_cache )