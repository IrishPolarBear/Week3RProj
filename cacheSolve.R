cacheSolve <-function(x, ...){
    i <- x$getinverse()
    change <- x$getchange()
    if(!is.null(i) & !change){
        message("getting cached data")
        return(i)
    }
    else{
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)  
    }
    i
}