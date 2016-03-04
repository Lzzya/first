##This function creates a special "vector" object which is really a list containing 4 sub function.
makeCacheMatrix <- function(x = matrix()) {
        mysolver <- NULL
        set <- function(y) {
                x <<- y
                mysolver <<- NULL
        }
        get <- function() x
        setsolver <- function(test) mysolver <<- test  #prepare to test the second function
        getsolver <- function() mysolver  #did not do the "solve" caculation to test the second function
        list(set = set, get = get,
             setsolver = setsolver,
             getsolver = getsolver)
  
}

##The following function calculates the inverse of the special object
##created with the above function.However, it first checks to see if 
##the inverse has already been calculated. 

cacheSolve <- function(x) {
        mysolver <- x$getsolver()
        if(!is.null(mysolver)) {
                message("getting cached data")
                return(mysolver)
        }    ##gets the inverse from the cache and skips the computation.
        
        mysolver <- solve(x$get())  
        mysolver
}
