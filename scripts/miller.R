pra <- function(k = 1, pi, power, alpha){
    p <- k + 1
    num <- (pi * power^p + (1 - pi) * alpha * (alpha/2)^k)
    den <- pi * power + (1 - pi) * alpha
    num / den
}

ss <- expand.grid(
    pi = c(0.1, 0.5, 0.8),
    power = c(0.5, 0.8, 0.9),
    k = c(1, 5, 10, 20)
)

ss$pra <- with(ss, pra(k, pi, power, alpha = 0.05))




library(ggplot2)

ggplot(ss, aes(x = k, y = pra, color = factor(power))) +
    geom_point() +
    facet_wrap(~pi) +
    geom_line()







