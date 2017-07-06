## Put comments here that give an overall description of what your
    ## This will be Caching the inverse of a Matrix
    ## Caching the inverse of a matrix has more benefit over the costly computation
  


## functions do
   ## These two function will create a object to store a matrix and also be 
   ## used to cache its inverse.





makeCacheMatrix <- function(x = matrix()) {
    inv  <- NULL
    set <- function(y){
       x <<- y
       inv <<- NULL
    }
    get <- function()x
    setInverse <- function(inverse) inv <<- inverse
    getInverse <- function() inv
    list(set = set,
         get = get,
         setInverse = setInverse,
         getInverse =getInverse
         )
}


## Write a short comment describing this function

   ## Below Function will compute the inverse of the Special Matrix, which 
   ## is created by the above function name "makeCacheMatrix". 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
   inv <- x$getInverse()
   if(!is.null(inv)){
      message("getting cached data")
      return(inv)
   }
   
   data <- x$get()
   inv <- solve(data, ...)
   x$setInverse(inv)
   inv
}







