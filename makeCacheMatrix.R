makeCacheMatrix <- function(x = matrix()){
    i <- NULL
    change <- FALSE
    set <- function(y){
        x <<- y
        i <<- NULL
        change <<- TRUE
    }
    get <- function() x
    setinverse <- function(inv) {
        i <<- inv
        change <<- FALSE
    }
    getinverse <- function() i
    getchange <- function() change
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}