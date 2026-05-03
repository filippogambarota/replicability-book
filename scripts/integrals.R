library(MASS)

n <- 1e4

x <- rnorm(n)
y <- 0.3 * x + rnorm(n)

d <- ?kde2d(x, y, n = 50)

n <- 30
m <- 50
s <- 20

x <- rnorm(n, m, s)

D <- expand.grid(
    m = seq(0, 100),
    s = seq(0, 50)
)

ll <- rep(0, nrow(D))
for(i in 1:nrow(D)){
    ll[i] <- sum(log(dnorm(x, D$m[i], D$s[i])))
}

D$ll <- ll

library(ggplot2)

ggplot(D, aes(x = m, y = s, z = ll)) +
    stat_contour()

# Define the function
f <- function(x) {
    x^2
}

# Set up the range and number of intervals
a <- 0    # Lower limit
b <- 1    # Upper limit
n <- 10 # Number of intervals (more intervals = better accuracy)

# Compute the width of each rectangle
dx <- (b - a) / n

# Create the x values (midpoint of each rectangle)
x_values <- seq(a + dx / 2, b - dx / 2, length.out = n)

# Compute the sum of rectangle areas
sum(f(x_values) * dx) # base (dx) * altezza f(x)

curve(f(x), 0, 1, ylab = sprintf("f(x) = %s", deparse(body(f)[[2]])))
rect(xleft = x_values - dx/2, xright = x_values + dx/2, 0, f(x_values- dx/2),
     col = scales::alpha("dodgerblue", 0.5))












