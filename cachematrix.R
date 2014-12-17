## Note to self, don't forget to put comments
## Put comments here that give an overall description of what your
## functions do


x <- matrix(rnorm(25), 5, 5)
mcm <- makeCacheMatrix(x)
makeCacheMatrix <- function(x = matrix()) {            ## Write a short comment describing this function
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrix <- function(solve) m <<- solve
        getmatrix <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {               ## Return a matrix that is the inverse of 'x'
        m <- x$getmatrix()           
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        matrix <- x$get()
        m <- solve(matrix, ...)
        x$setmatrix(m)
        m        
}

cacheSolve(mcm)
