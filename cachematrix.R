

## The makecachematrix function has the set, get, getinverse, setinverse functions which are used to set the matrix, display the matrix, create inverse of the matrix and obtain the inverse of the matrix respectively.

makeCacheMatrix <- function(x = matrix()) {
     inverse <- NULL
     set <- function(y) {
          x <<- y
          inverse <<- NULL
     }
     
     get <- function() x
     setinverse <- function(solve) inverse <<- solve
     getinverse <- function() inverse
     list(set = set, get = get, 
          setinverse = setinverse,
          getinverse = getinverse)
     
}

## The cachesolve function displays the inverse which is either saved in the cache or is generated based on the list returned by the makecachematrix.

cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
     m <- x$getinverse()
     
     if(!is.null(m)) {
          message("getting cached data")
          return(m)
     }
     data <- x$get()
     m <- solve(data)
     x$setinverse(m)
     m
     
}
