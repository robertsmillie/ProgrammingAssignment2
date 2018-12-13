makeCacheMatrix <- function(x = matrix()) {
  library(MASS)
  m <- NULL #set m the inverse variable to be NULL
  set <- function(y) { #Define the set function
    x <<- y
    m <<- NULL
  }
  get <- function() x #Define the get function
  setinverse <- function(inverse) m <<- inverse #Define the setinverse function
  getinverse <- function() m #Define the getinverse function
  list(set = set, get = get, #Return the list containing the 4 functions
       setinverse = setinverse,
       getinverse = getinverse)
}