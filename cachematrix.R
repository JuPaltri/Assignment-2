## Put comments here that give an overall description of what your
## functions do
## Avoiding time-consuming calculations by reading cached inversed results 

## Write a short comment describing this function
## the function returns an enhanced matrix object that caches its inverse
## set defines setter for the matrix
## get defines the getter for the matrix
## setinverse defines the setter for the inverse matrix
## getinverse defines the getter for the inverse matrix
## list() assigns each of the above functions as an element within a list
makeCacheMatrix <- function(x = matrix()) {
 inverse <- NULL
   set <- function(y){
     x <<- y
     inverse <<- NULL
   }
   get <- function() x
   setInverse <- function(solveMatrix) inverse <<- solveMatrix
   getInverse <- function() inverse
   list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}



## Write a short comment describing this function
## the function returns the inverse of the enhanced matrix avoiding to recalculate whenever the inverse has been cached
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inverse <- x$getInverse()
   if(!is.null(inverse)){
     message("cache data")
     return(inverse)
   }
   data <- x$get()
   inverse <- solve(data)
   x$setInverse(inverse)
   inverse  
}
