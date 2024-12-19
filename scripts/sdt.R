sim <- function(k, d, n, pi){
    H1 <- rbinom(k, 1, pi) == 1
    di <- ifelse(H1, d, 0)
    dat <- filor::sim_meta(k, di, 0, n)
    dat$zi <- dat$yi/dat$sei
    dat$pval <- (1 - pnorm(abs(dat$zi)))*2
    dat$pi <- pi
    dat$d <- di
    dat
}

sdt <- function(data, c){
    tp <- fp <- fn <- tn <- rep(NA, length(c))
    for(i in 1:length(c)){
        sign <- data$pval <= c[i]
        tp[i] <- sum(sign & dat$d != 0)
        fp[i] <- sum(sign & dat$d == 0)
        fn[i] <- sum(!sign & dat$d != 0)
        tn[i] <- sum(!sign & dat$d == 0)
    }
    tpr <- tp / (tp + fn)
    fpr <- fp / (fp + tn)
    ppv <- tp / (tp + fp)
    data.frame(
        tp, fp, fn, tn, tpr, fpr, ppv, c
    )
}

k <- 100        # number of studies
n <- 1e3          # sample size
pi <- 0.9       # p of H1 true
d <- 0.1        # effect size when H1 is true
B <- 1e3
J <- rep(NA, B)
alpha <- seq(0, 1, 0.01)

tpr <- fpr <- matrix(NA, B, length(alpha))

for(i in 1:B){
    dat <- sim(k = k, d = d, n = n, pi = pi)
    dat_sdt <- sdt(dat, alpha)
    tpr[i, ] <- dat_sdt$tpr
    fpr[i, ] <- dat_sdt$fpr
}

w <- seq(0.1, 0.9, 0.01)
J <- matrix(NA, nrow(tpr), length(w))

for(i in 1:nrow(tpr)){
    for(j in 1:length(w)){
        idx <- which.max(tpr[i, ]*w[j] + (1 - fpr[i, ])*(1 - w[j]) - 1)
        J[i, j] <- alpha[idx]
    }
}

plot(w, apply(J, 2, median), xlim = c(0, 1),
     col = ifelse(w < 0.5, "blue", "red"),
     ylim = c(0, 1))

