d0 <- 0
d1 <- 0.5
k <- 20
pi <- 0.5

n <- 30

sim_exp <- function(k, d, n, pi){
    H1true <- rbinom(k, 1, pi)
    di <- ifelse(H1true == 1, d1, d0)
    p <- bf10 <- rep(NA, k)
    for(i in 1:k){
        g0 <- rnorm(n, 0, 1)
        g1 <- rnorm(n, di[i], 1)
        p[i] <- t.test(g0, g1)$p.value
        bf10[i] <- exp(BayesFactor::ttestBF(g0, g1)@bayesFactor$bf)
    }
    data.frame(k = k, di = di, n = n, pi = pi, p = p, bf10 = bf10, H1 = H1true)
}

sdt <- function(data, x, c){
    tp <- fp <- tn <- fn <- rep(NA, length(c))
    for(i in 1:length(c)){
        tp[i] <- sum(data$H1 == 1 & data[[x]] <= c[i])
        fp[i] <- sum(data$H1 == 0 & data[[x]] <= c[i])
        tn[i] <- sum(data$H1 == 0 & data[[x]] > c[i])
        fn[i] <- sum(data$H1 == 1 & data[[x]] > c[i])
    }
    data.frame(tp, fp, tn, fn, c)
}

sdt_tab <- function(data){
    data$tpr <- with(data, tp / (tp + fn))
    data$fnr <- 1 - data$tpr
    data$fpr <- with(data, fp / (fp + tn))
    data$tnr <- 1 - data$fpr
    data
}

B <- 100
alpha <- seq(0, 1, 0.01)
auc <- rep(NA, auc)

for(i in 1:B){
    sim <- sim_exp(k, d, n, pi)
    sim_sdt <- sdt(sim, "p", alpha)
    sim_sdt_tab <- sdt_tab(sim_sdt)
    auc[i] <- bayestestR::auc(sim_sdt_tab$fpr, sim_sdt_tab$tpr)
}
sdt_tab(sim_sdt)
