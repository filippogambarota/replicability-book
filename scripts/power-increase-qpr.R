k <- 1
n <- 50
B <- 1e3
d <- 0.1
r <- 20

R <- filor::rmat(rep(0, filor::ncor(k)))

sim <- array(NA, c(r, 2, B))


for(i in 1:B){
    s0 <- s1 <- rep(NA, r)
    for(j in 1:r){
        X0 <- MASS::mvrnorm(n, rep(0, k), R)
        X1 <- MASS::mvrnorm(n, rep(d, k), R)
        p0 <- apply(X0, 2, function(x) t.test(x)$p.value)
        p1 <- apply(X1, 2, function(x) t.test(x)$p.value)
        s0[j] <- any(p0 <= 0.05)
        s1[j] <- any(p1 <= 0.05)
    }
    sim[,1,i] <- s0
    sim[,2,i] <- s1
}

lapply(1:dim(sim)[3], function(i) apply(sim[,,i], 2, mean))

t(apply(sim, c(2,3), mean)) |>
    apply(2, mean)
