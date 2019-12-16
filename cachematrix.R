## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        d <- NULL
        set <- function(y) {
                x <<- y
                d <<- NULL
        }
        get <- function() x
        setmean <- function(mean) d <<- mean
        getmean <- function() d
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        d <- x$getmean()
        if(!is.null(d)) {
                message("getting cached data")
                return(d)
        }
        data <- x$get()
        d <- mean(data, ...)
        x$setmean(d)
        d
}
