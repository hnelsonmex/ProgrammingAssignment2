## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##Sorry, I added matlib as I thought I needed it before reading that solve()
## could also provide the inverse  - see the following 2 comment lines
##if (!"matlib" %in% installed.packages()) install.packages("matlib") 
##library(matlib)


makeCacheMatrix <- function(x = matrix()) {
    ##m <- NULL
    m <<- solve(x)
    
}
## The function above only assigns the inverse to m, to be read on the next function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x' 
    ## the if statement below checks that m is not empty and that the matrix
    ## has not changed via the "identical" function
    if (!is.null(m) && identical(Inverse(m), x)) {
        message("getting cached data")
        return(m)
    } else { 
        ## if matrices are not identical, then the inverse is calculated and
        ## stored again
        m <<- solve(x)
        message("Calculating data")
        return(m)
    }
}
