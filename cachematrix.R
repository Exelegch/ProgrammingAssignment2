## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## Initialize the inverse property
  inv <- NULL
  
  ## Method to set the matrix
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
  ## Method the get the matrix
  get <- function() {
    ## Return the matrix
    m
  }
  
  ## Method to set the inverse of the matrix
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
    ## Return the inverse property
  
  ## Return a list of the methods
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## Write a short comment describing this function


cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  
  ## Get the matrix from our object
  mat <- x$get()
  
  
  ## Calculate the inverse using matrix multiplication
  inv <- solve(mat, ...)
  
  ## Set the inverse to the object
  x$setInverse(inv)

  
  ## Return the inverse matrix
  inv
        
}
