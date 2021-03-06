## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(b){
    a <<- b
    i <<- NULL
  }
  get <- function()a
  setinv <- function(inverse) i <<- inverse
  getinv <- function() i
  list(set = set, get = get, 
       setinv = setinv, 
       getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- a$getinv()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  mat <- a$get()
  i <- solve(mat,...)
  a$setinv(i)
  i
}