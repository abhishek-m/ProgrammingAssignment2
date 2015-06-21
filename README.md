
### Assignment: Caching the Inverse of a Matrix
## This assignment contains 2 functions:
1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then
    `cacheSolve` should retrieve the inverse from the cache.

sample execution
# matrix m is created
>> m=matrix(c(1,2,3,4),2,2)

#we create an inverse matrix caching object a and pass matrix m
> a<-makeCacheMatrix(m)

#we pass a to the cachcesolve function to retrieve inverse. First time the inverse is calculated and the cache is stored
> cacheSolve(a)
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5

#second time, upon calling teh same function with a, inverse matrix is retrieved from cache.
> cacheSolve(a)
getting cached data
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
