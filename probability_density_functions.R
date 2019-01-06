# graphing probability density functions in R

# Example: plotting the normal distribution of children's IQ scores
## mean=100, st. dev=15

# What percentage of children have an IQ score greater than 115?

# Define parameters of our distribution

mean <- 100
stdev <-15

# define lower and upper bounds of region of interest
lower <- 101.2332
upper <- Inf

# generate sequence of numbers and make normal distribution
x <- seq(mean-4*stdev,mean+4*stdev,length=100)
p <- dnorm(x, mean, stdev)

# make a plot and add probability distribution and axis labels
plot(x, p, type="l", xlab="IQ Values", ylab = "P(x)", 
     main = "Normal distribution of IQ scores")

# generate a polygon for region of interest
i <- x<=upper & x>=lower # indexes of values of interest in the x axis
px <- c(lower, x[i], upper) #x axis points for polygon
py <- c(0,p[i],0) # y axis points for polygon
polygon(px,py, col='red')

# calculate area under the curve for region of interest and print results
area <- pnorm(upper, mean, stdev) - pnorm(lower, mean, stdev) 
#pnorm calculates the area under the curve up to the point that is given

result <- paste("P(",lower,"< IQ <",upper,") =", signif(area, digits=3))
mtext(result,side = 3)
?mtext
