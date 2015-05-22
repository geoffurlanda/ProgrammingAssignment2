## The two functions work together to help get and cache the inverse value of a matrix

## makeCacheMatrix - function gets a input matrix, and can be used to set matrix,
##  get matrix value, solve the inverse of the matrix, gets the cached value of the
##  inverse of a matrix
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
  
  ## setup function return
  ## return list of functions
  ## set - set matrix
  ## get - get matrix
  ## cacheMatrixInverse - cache the inverse of a matrix
  ## getCacheMatrixInverse - gets the cached inverse of a matrix
  list(set = set, 
       get = get, 
       cacheMatrixInverse = cacheMatrixInverse, 
       getCacheMatrixInverse = getCacheMatrixInverse 
       )

}


## function that returns the inverse of x 
## if inverse already exists, output from cache
## if inverse does not exist, compute for inverse
cacheSolve <- function(x, ...) {
  
  ## get the cached matrix inverse of the matrix
  matrixInverse <- x$getCacheMatrixInverse()

  ## check if the matrixInverse already exists
  if(!is.null(matrixInverse)) {
    ## if function goes here, it means cache already exists
    message("cache already exist.")
    return(matrixInverse)
  }
  
  ## if function reaches here, means cache does not yet exist
  ## get the matrix value
  matrixValue <- x$get()
  
  ## compute for the inverse of the matrix
  matrixInverse <- solve(matrixValue)
  
  ## cache the inverse of the matrix
  x$cacheMatrixInverse(matrixInverse)
  
  ## return matrix inverse
  matrixInverse
  
}
