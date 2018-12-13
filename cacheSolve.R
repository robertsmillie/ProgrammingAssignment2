cacheSolve <- function(x, ...) {
  library(MASS)
  m <- x$getinverse() #Get the cached inverse variable, m
  if(!is.null(m)) { #if m is NOT null, return m
    message("getting cached data")
    return(m)
  }
  data <- x$get() #if not, get the data for x
  m <- ginv(data, ...) #get the inverse of the data
  x$setinverse(m) #cache the inverse m
  m #return the inverse m
}