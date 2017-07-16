## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#Below function will create a matrix and initialise two functions to it get and get inverse

makeCacheMatrix<-function(x=matrix())
{
  inverse<-NULL
  set<-function(y){
    x<<-y
    inverse<<-NULL
  }
  get<-function()x
  setinverse<-function(matrix)inverse<<-matrix()
  getinverse<-function()inverse
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
  
}

## Write a short comment describing this function

# solve function is used to get inverse of matrix
cacheSolve<-function(x,...)
{
  inverse<-x$getinverse()
  if(!is.null(inverse)){
    message("getting cached data")
    return(inverse)
  }
  data<-x$get()
  inverse<-solve(data,...)
  x$setinverse(inverse)
  inverse
  
}