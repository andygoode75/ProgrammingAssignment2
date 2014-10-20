## Create a makeCacheMatrix function

makeCacheMatrix <- function(x = matrix()) {
##ensure that there are default values generated
  m<-NULL
## create a matrix from x and assign it to m
setmatrix <- function(y){
  x<<- y
  m<<-NULL
  }
## assign makeCacheMatrix to cache and create functions to create inverse and retieve the inverse of m
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

cacheSolve <- function(x, ...) {
  m<-x$getinverse()

if(!is.null(m)) {
  return (m)
  }
## otherwise take value held in getmatrix and inverse it
data <- x$getmatrix()
m<-solve(data, ...)  

## Return a matrix that is the inverse of 'x'
## store result in setinverse
x$setinverse(m)

## print inverse (m) to console
m

}

