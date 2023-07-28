## First, I create a matric that is able to cache its inverse
makeCacheMatrix <- function(x = matrix()) {
inv <- NULL ##Make a variable to store the inverse matrix
}
## Return a list of functions in order to get and compute the inverse of the matrix
list(
        set = function(y) {
                x <<- y
                inv <<- NULL 
        },

        get = function() x,

        getInverse = function() {
                if (!is.null(inv)) {
                        message("getting cached inverse")
                        return(inv)
            } else {
        message("Calculating inverse")
        inv <- solve(x, ...)
        return(inv)
      }
    }
  )
}

##find the inverse of the matrix               

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        return(inv)
}
