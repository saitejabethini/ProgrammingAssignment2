## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
     d <- det(x)
     if(d == 0)
     {
          break()
     } 
     inverseTF <- NULL
     setInverse <- function(y){
          x <<- solve(y)
          inverseTF <<- TRUE
     }
     
     getInverse <- function() {
          if(isTRUE(inverseTF))
          {x}
          else{
               print('Inverse is not set yet. Please set inverse using makeCacheMatrix function')
               break()
          }
          
     }
     setInverse(x)
     ret <- matrix(c(setInverse = setInverse, getInverse = getInverse), nrow = 1, ncol = 2)
     ret
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
     inverse <- getInverse()
     if(isTRUE(inverseTF)){
          print('getting cached matrix')
          return(inverse, solve(inverse))
     }
     
     
}
