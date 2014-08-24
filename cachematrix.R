## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL			#Initialize the inverse matrix
	
	set <- function(matrix)		#set the matrix and its inverse
	{
		m <<- matrix
		i <<- NULL
	}

	get <- function()
	{
		m
	}

	setinverse <- function()
	{
		i <<- inverse		#set the inverse of the matrix
	}

	getinverse <- function(inverse)
	{
		i			#return the inverse
	}

	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)	#return list of methods

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

	m <- x$getinverse()		#return the inverse of x

	if( !is.null(m))		#return the inverse if it exists in cache
	{
		return(m)
	}

	data <-x$get()			#retrieve the matrix

	m <- solve(data) %*% data	#calculate the inverse

	x$setinverse(m)			#set the inverse

	m				#return the matrix
}
