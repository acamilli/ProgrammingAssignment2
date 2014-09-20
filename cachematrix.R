## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix define and cache the methods for matrix inversion

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {

## Return a matrix that is the inverse of 'x'
## cacheSolve returns previous cached values of inverse of 'x', if there are any
## it does that by using methods defined in the makeCacheMatrix function

  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }

## or, it will calculate and return the values ...

  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
