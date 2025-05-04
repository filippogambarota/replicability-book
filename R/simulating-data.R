sim_study <- function(theta, n0, n1 = NULL, id = NULL){
    if(is.null(n1)) n1 <- n0
    y0 <- rnorm(n0, 0, 1)
    y1 <- rnorm(n1, theta, 1)
    sim <- data.frame(
        yi = mean(y1) - mean(y0),
        vi = var(y1)/n1 + var(y0)/n0
    )
    sim$sei <- sqrt(sim$vi)
    sim$n0 <- n0
    sim$n1 <- n1
    if(!is.null(id)){
        sim <- cbind(id = id, sim)
    }
    class(sim) <- c("rep3data", class(sim))
    return(sim)
}

sim_studies <- function(R, mu = 0, tau2 = 0, n0, n1 = NULL){
    # check input parameters consistency
    if(length(mu) == 1) mu <- rep(mu, R)
    if(length(n0) == 1) n0 <- rep(n0, R)
    if(length(n1) == 1) n1 <- rep(n1, R)
    if(is.null(n1)) n1 <- n0

    deltai <- rnorm(R, 0, sqrt(tau2))
    mu <- mu + deltai

    sim <- mapply(sim_study, mu, n0, n1, SIMPLIFY = FALSE)
    sim <- do.call(rbind, sim)
    sim <- cbind(id = 1:R, sim)
    class(sim) <- c("rep3data", class(sim))
    return(sim)
}

summary.rep3data <- function(data, conf.level = 0.95){
    z <- abs(qnorm((1 - conf.level)/2))
    data$sei <- sqrt(data$vi)
    data$zi <- with(data, yi/sei)
    data$pval <- with(data, 2 * (1 - pnorm(abs(zi))))
    data$ci.lb <- with(data, yi - sei * z)
    data$ci.ub <- with(data, yi + sei * z)
    return(data)
}
