## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# a function contains four fuctions, creates cache for a matrix

makeCacheMatrix <- function(x = matrix()) {
        im <- NULL
        set <- function(y) {
                x <<- y
                im <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) im <<- solve
        getsolve <- function() im
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)

}


## Write a short comment describing this function
# function below first check if inverse has been calculated and cached by fucntion above
# If yes, then retrieves;
# if not, computes the inverse of matrix from above. 


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        im <- x$getsolve()
        if(!is.null(im)) {
                message("getting cached data")
                return(im)
        }
        data <- x$get()
        im <- solve(data, ...)
        x$setsolve(im)
        im
}
