## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        mysolve <<- solve(x)
  
}


## Write a short comment describing this function

cacheSolve <- function(x) {
        if(!is.null(mysolve)) {
                message("getting cached data")
                return(mysolve)
        }    ## Return a matrix that is the inverse of 'x'
        
        mysolve <- solve(x)
        
}
