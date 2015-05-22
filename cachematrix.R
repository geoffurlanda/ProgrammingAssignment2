## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix - function that creates a cache of matrix input
makeCacheMatrix <- function(x = matrix()) {

  ## function gets an input matrix x
  
  ## set initial value of matrixInverseCache to NULL
  matrixInverseCache <- NULL
  
  ## this function sets the matrix
  set <- function(newMatrix) {
    x <<- newMatrix
    matrixInverseCache <<- NULL
  }
  
  ## this function gets the matrix
  get <- function() {
    x
  }
  
  ## this function caches the inverse of the matrix
  cacheMatrixInverse <- function(solve) {
    matrixInverseCache <<- solve
  }
  
  ## this function gets the cached inverse of the matrix
  getCacheMatrixInverse <- function() {
    matrixInverseCache
  }

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
