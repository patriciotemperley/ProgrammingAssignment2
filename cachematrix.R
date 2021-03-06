## Put comments here that give an overall description of what your
## functions do
##'* The functions created below first create a matrix object who can store its '* 
##'* inverse, and then return that inverse matrix '*


## Write a short comment describing this function
##'* The following function creates a matrix object able to cache its inverse '*

makeCacheMatrix <- function(x = matrix()) {
        inver <- NULL
        set <- function(y){
                x <<- y
                inver <- NULL
        }
        get <- function() {x}
        set_inverse <- function(inverse) {inver <<- inverse}
        get_inverse <- function() {inver}
        list(set = set, get = get, set_inverse = set_inverse, get_inverse = get_inverse)
}


## Write a short comment describing this function
##'* The following function takes the matrix returned by makeCacheMatrix and, if '*
##'* the inverse has been calculated, should bring the inverse from the cache '*

cacheSolve <- function(x, ...) {
        inver <- x$get_inverse()
        if(!is.null(inver)){
                print("Getting data...")
                return(inver)
        }
        matriz <- x$get()
        inver <- solve(matriz, ...)
        x$set_inverse(inver)
        inver
}
