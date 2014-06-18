## Put comments here that give an overall description of what your
## functions do

## Create a "cachematrix" 

makeCacheMatrix <- function(x = matrix()) {
    m<-NULL    ## set the det to NULL for starters
    ## create a setter that caches v and m
    set <- function(y) {
      v <<- y
      m <<- NULL
    }

## create a solve function which can inverse the matrix
    get <- function() {
      x
    }
    ## create a setinv function that returns the solve, only calculating it if necessary
    setinv <- function(solve) {
          m<<-solve
        }
       getinv <- function() {
          m
        }

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
 m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        else{
        message("impossible,déterminant=0")
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        m
}
