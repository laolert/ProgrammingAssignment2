## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## the makeCacheMatrix function creates a special "vector", 
## which is a list containing a function to: 
## set the value of the vector
## get the value of the vector
## set the value of the inverse
## get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
 ii <- NULL
 set <- function(y){
    x <<- y
    ii <<- NULL
    }
  get <- function() x
   setinverse <- function(solve) ii <<- solve
    getinverse <- function() ii
     list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function
## The cacheSolve function calculates the inverse of the special "vector" created 
## with the above function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       
         ii <- x$getinverse()
         if(!is.null(ii)){  ## check if the value of inverse is not null
    message("getting cached data")
    return(ii)
    }
    message("newly calculating data")
  data <- x$get()
  ii <- solve(data, ...)
  x$setinverse(ii)
  ii  ## Return a matrix that is the inverse of 'x'
}
