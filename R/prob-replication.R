# probability of a replication see @Ulrich2020-rk and @Miller2009-hp
rr <- function(pi,
               power0 = 0.8,
               power1 = 0.8,
               alpha0 = 0.05,
               alpha1 = 0.05){
    num <- (pi * power0 * power1) + ((1 - pi) * alpha0 * alpha1)
    den <- pi * power0 + (1 - pi) * alpha0
    num / den
}

power.t <- function(d, n1, n2 = NULL, alpha = 0.05){
    if(is.null(n2)) n2 <- n1
    df  <- n1 + n2 - 2
    ncp <- d * sqrt((n1 * n2) / (n1 + n2))
    tc  <- abs(qt(alpha/2, df = df))
    pt(-tc, df = df, ncp = ncp) + pt(tc, df = df, ncp = ncp, lower.tail = FALSE)
}

arp <- function(r, pi, power, alpha) {
    if(any(r < 1)) stop("number of replicates should be equal or greater than 1")
    j <- r + 1 # total studies
    num <- pi * power^j + (1 - pi) * alpha * (alpha/2)^(j - 1)
    den <- pi * power + (1 - pi) * alpha
    num/den
}

p2d <- function(p, n, alpha = 0.05){
    df <- n*2 - 2
    to <- abs(qt(p/2, df))
    se <- sqrt(1/n + 1/n)
    cit <- effectsize:::.get_ncp_t(to, df)
    lb.t <- cit[1]
    ub.t <- cit[2]
    d <- to * se
    lb <- lb.t * se
    ub <- ub.t * se
    # power
    d.power <- power.t(d = d, n1 = n, alpha = alpha)
    lb.power <- power.t(d = lb, n1 = n, alpha = alpha)
    ub.power <- power.t(d = ub, n1 = n, alpha = alpha)
    list(t = to, d = d,
         se = se, df = df,
         ci.lb = lb, ci.ub = ub,
         d.power = d.power,
         lb.power = lb.power,
         ub.power = ub.power,
         p = p)
}
