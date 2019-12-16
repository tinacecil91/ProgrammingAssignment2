## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        c <- NULL
        set <- function(y) {
                x <<- y
                c <<- NULL
        }
        get <- function() x
        setmean <- function(mean) c <<- mean
        getmean <- function() c
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        c <- x$getmean()
        if(!is.null(c)) {
                message("getting cached data")
                return(c)
        }
        data <- x$get()
        c <- mean(data, ...)
        x$setmean(c)
        c
}
