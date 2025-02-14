## A pair of fuctions that cache the inverse of a matrix.
## 1.makeCacheMatrix:This function creates a special "matrix" object that can cache its inverse.


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y 
    inv <<- NULL
 }

get <- function() x
setInverse <- function(solveMatrix) inv <<- solveMatrix
getInverse <- function () iv
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse) 
}

##cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if(!is.null(inv)){
          message("getting cached data")
        }
        data <- x$get()
        inv <- solve(data)
        x$setInverse(inv)
        inv
}
