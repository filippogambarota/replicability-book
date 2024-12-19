# literature level

mu <- 0.3
# lambda = 1/mu
# curve(dexp(x, 1/mu))

rope <- c(0, 0.1) # equivalence bound

# true proportion of null effects (1 - pi)
pexp(rope[2], 1/mu)

# true proportion of real effects (pi)
1 - pexp(rope[2], 1/mu)

# true effects level

k <- 10
mu_theta <- rexp(1, 1/mu)
tau2 <- 0.05

theta <- rnorm(k, mu_theta, tau2)

# participants level

ni <- 10 + rpois(30, k) # sample size
yi <- vi <- rep(NA, k)

for(i in 1:k){
    y0 <- rnorm(ni[i], 0, 1)
    y1 <- rnorm(ni[i], theta[i], 1)
    yi[i] <- mean(y1) - mean(y0)
    vi[i] <- var(y1)/ni[i] + var(y0)/ni[i]
}

dat <- data.frame(
    yi, vi, ni
)



















