## This function will take any matrix, keep it in cache and invert it
> 
> ## The first part of the function makeCacheMatrix sets an empty matrix
> 
> makeCacheMatrix <- function(x = matrix()) {
+     ## start the inverse matrix
+     invx <- NULL
+     ## define a function for the  matrix
+     
+     set <- function(y) {
+         x <<- y
+         invx <<- NULL
+     }
+     
+     ## the get and set functions will get the values of the original matrix and invert them
+     get <- function() x
+     setinverse <- function(inverse) invx <<- inverse
+     getinverse <- function() invx
+     list(set = set,
+          get = get,
+          setinverse = setinverse,
+          getinverse = getinverse)
+     
+ }
> 
> ## cacheSolve will tell us whether an inverse matrix had already been calculated and cached or whether we are starting a new process
> 
> cacheSolve <- function(x, ...) {
+     invx <- x$getinverse()
+     if (!is.null(invx)) {
+         message("getting cached data")
+         return(invx)
+     }
+     data <- x$get()
+     invx <- solve(data, ...)
+     x$setinverse(m)
+     invx
+ }
> ## Return a matrix that is the inverse of 'x'
