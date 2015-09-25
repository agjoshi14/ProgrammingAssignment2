## Set of functions that allow to caching of the inverse of a matrix

## Takes a matrix as input and provides with 4 functions

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
  
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  
  get <- function() x 
  
  setinv <- function(inv) i <<- inv
  

  getinv <- function() i

## Returns the vector of 4 functions
  list(set = set, get = get,setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  inv <- x$getinv()

  if(!is.null(inv)) {
    message("Getting The Cached Data")
    return(inv)
  }

  data <- x$get()
  inv <- solve(data)

  x$setinv(inv)

  inv ##Returns the inverse of the matrix
}
