## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        b <- NULL
        set <- function(y) {
                x <<- y
                b <<- NULL
        }
        get <- function() x
        setmean <- function(mean) b <<- mean
        getmean <- function() b
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        b <- x$getmean()
        if(!is.null(b)) {
                message("getting cached data")
                return(b)
        }
        data <- x$get()
        b <- mean(data, ...)
        x$setmean(b)
        b
}
