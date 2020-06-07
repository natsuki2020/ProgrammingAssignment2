## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##create a matrix that catch inverse

makeCacheMatrix <- function(x = matrix()) {

  mat <- NULL
  set <- function(y){
    x <<- y
    mat <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) mat <<- inverse
  getInverse <- function() mat
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function
## compute the inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if (!is.null(mat)) {
    message("getting cached data")
    return(mat)
  }
  matreal <- x$get()
  mat <- solve(matreal, ...)
  x$setInverse(mat)
  mat
}
