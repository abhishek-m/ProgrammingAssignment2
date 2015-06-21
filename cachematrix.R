## 2 functions are used -makeCacheMatrix and cacheSolve- 
##to store and retrive cached values of inverse of a matrix


#  makeCacheMatrix creates a special "matrix" object that can cache its inverse,
#it provides 4 functions:
#getmatrix - gets the value of the matrix 
#setmatrix - sets the value of the matrix
#getinverse - gets the value of the inverse of matrix
#setinverse - sets the value of the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
  im <- NULL
  setmatrix <- function(y) {
    x <<- y
    im <<- NULL
  }
  getmatrix <- function() x
  setinverse <- function(inv = matrix()) im <<- inv 
  getinverse <- function() im
  
    list(setmatrix = setmatrix, 
         getmatrix = getmatrix,
       setinverse = setinverse,
       getinverse = getinverse)
    }


#cacheSolve function retrieves the value of inverse of a matrix if 
#it is stored in cache before, else it computes the inverse and then caches it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  im <- x$getinverse()
  if(!is.null(im)) {
    message("getting cached data")
    return(im)
  }
  mymatrix <- x$getmatrix()
  im <- solve(mymatrix, ...)
  x$setinverse(im)
  im
}
