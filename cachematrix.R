##Programming Assignment 2
### Put comments here that give an overall description of what your
### functions do

### The function checks for the value and returns the value if it exists or proceeds
### to calculate the value and return that. Following functions are used here.
###  *setMatrix      It sets the value of a matrix
###  *getMatrix      It gets(retrieves) the stored value of a matrix
####  *cacheTheInverse   It stores the cahced value of the inverse of the matrix
####  getCachedInverse     It retrieves the cahced value of inverse the of the matrix

makeCacheMatrix <- function(x = matrix()) {
  
  # Initializing the Cache value to NULL
  cache <- NULL
  
  # Storing the matrix's value. Also, clear the cache as the new value of matrix is stored.
  setMatrix <- function(theMatrix) {
    x <<- theMatrix
    cache <<- NULL
  }
  
  # The value of matrix is retrieved from here.
  getMatrix <- function() {
    x
  }
  
  # Initializing the cache inverse function to store the inverse of the matrix in "cache".
  cacheTheInverse <- function(solve) {
    cache <<- solve
  }
  
  # The cached value of the matrix is retrieved.
  getCachedInverse <- function() {
    cache
  }
  
  # return a list. Each named element of the list is a function
  ##list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


##The function to return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
  
  inv <- x$getInverse()
  # Check for a cached value. If cached value doesnot exist,retrieve the value from aove function and store it in the cache.
  
  if(!is.null(inv)) {
    message("### Cached Data exists. Returning cached data ###")
    return(inv)
  }
  
  #Check the retrieved value.
  
  mat <- x$getMatrix()
  inv <- solve(mat)
  x$cacheTheInverse(inv)
  
  # return the inverse
  inv
}