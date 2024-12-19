sim_meta <- function(R, mu, tau2, n0, n1 = NULL, conf.level = 0.95){
    if(is.null(n1)) n1 <- n0
    if((length(n1) != R & length(n1) != 1) | (length(n0) != R & length(n0) != 1)){
        stop("n1 and n0 need to be of length 1 or R")
    }

    if(length(n1) == 1) n1 <- rep(n1, R)
    if(length(n0) == 1) n0 <- rep(n0, R)

    theta <- rnorm(R, mu, sqrt(tau2))
    yi <- vi <- rep(NA, R)

    for(i in 1:R){
        y0 <- rnorm(n0[i], 0, 1)
        y1 <- rnorm(n1[i], theta[i], 1)
        yi[i] <- mean(y1) - mean(y0)
        vi[i] <- var(y1)/n1[i] + var(y0)/n0[i]
    }
    sim <- data.frame(id = 0:(R - 1), yi, vi, theta, n0, n1)
    
    # compute other statistics
    sim$sei <- sqrt(sim$vi) # standard error
    sim$zi <- sim$yi / sim$sei # test statistics
    tc <- abs(qnorm((1 - conf.level)/2))
    sim$ci.lb <- sim$yi - sim$sei * tc
    sim$ci.ub <- sim$yi + sim$sei * tc
    return(sim)
}
