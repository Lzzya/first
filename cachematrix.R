##This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        mysolve <<- solve(x)   ##create a cache object by "<<-"
  
}

##The following function calculates the inverse of the special object
##created with the above function.However, it first checks to see if 
##the inverse has already been calculated. 

cacheSolve <- function(x) {
        if(!is.null(mysolve)) {
                message("getting cached data")
                return(mysolve)
        }    ##gets the inverse from the cache and skips the computation.
        
        mysolve <- solve(x)  
        mysolve
}
