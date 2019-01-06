# building a covariance matrix in R - two ways
# creat column vectors

a <- c(seq(1,6,1))
b <- c(seq(1,11,2))
c <- c(seq(10,60,10))
d <- c(2,5,5,2,1,0)
e <- c(4,5,6,7,8,9)

# create a matrix from vectors
M <- cbind(a,b,c,d,e)
k <- ncol(M)
n <- nrow(M)

# find the mean for each column
k_mean <- matrix(data =1, nrow = n) %*% cbind(mean(a), 
                                              mean(b),
                                              mean(c),
                                              mean(d),
                                              mean(e))

print(k_mean)

# create a difference matrix
diff_m <- M - k_mean
print(diff_m)

# create the covariance matrix
cov_M <- (n-1)^-1 * t(diff_m) %*% diff_m # sample covariance
print(cov_M)

# find variances from the covariance matrix
variance <- diag(cov_M)
print(variance)

# use r's inbuilt function to bild the covariance matrix
print(cov(M))
print(diag(cov(M)))
