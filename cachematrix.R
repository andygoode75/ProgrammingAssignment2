## Create a matrix - ensure that there are default values generated 
## create a matrix from x and assign it to m
## assign makeCacheMatrix to cache and create functions to create inverse and retieve the inverse of m

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  setmatrix <- function(y){
    x<<- y
    m<<-NULL
    }
  getmatrix <-function () x
  setinverse <- function (inverse) m <<-solve
  getinverse <- function () m
  
  list(setmatrix = setmatrix,
       getmatrix = getmatrix,
       setinverse = setinverse,
       getinverse = getinverse
       )
}  


## Check if there is an existing inverse matrix, if so return existing vaue of m
## otherwise take value held in getmatrix and inverse it
## store result in setinverse
## print inverse (m) to console

cacheSolve <- function(x, ...) {
  m<-x$getinverse()
  if(!is.null(m)) {
    return (m)
  }
  
## Return a matrix that is the inverse of 'x'

  data <- x$getmatrix()
  m<-solve(data, ...)
  x$setinverse(m)
  m

  
        
}

