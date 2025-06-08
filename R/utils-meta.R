quick_forest <- function(data, interval = TRUE, weigth = FALSE, size = 20){
    k <- nrow(data)
    data$id <- 1:k
    data$lower <- data$yi - 2*data$sei
    data$upper <- data$yi + 2*data$sei
    xlim <- c(min(data$lower) - 1, max(data$upper) + 1)

    ggplot(data) + {
        if(weigth){
            geom_point(aes(x = yi, y = id, size = 1/vi),
                       shape = 15,
                       show.legend = FALSE)
        }else{
            geom_point(aes(x = yi, y = id),
                       shape = 15,
                       size = 3)
        }
    } + {
        if(interval){
            geom_segment(aes(x = lower, y = id,
                             xend = upper, yend = id))
        }
    } +
        scale_y_continuous(breaks = 1:k) +
        xlim(xlim) +
        xlab("Effect Size") +
        theme_minimal(size) +
        theme(axis.title.y = element_blank())
}

sim_pub_bias <- function(selfun,
                         k,
                         mu,
                         tau2,
                         n0,
                         n1 = NULL,
                         alpha = 0.05){
    if(length(n0) == 1) n0 <- rep(n0, k)
    if(is.null(n1)) n1 <- n0

    if(is.null(selfun)){
        selfun <- function(x) ifelse(x <= alpha, 1, 0)
    }
    res <- vector(mode = "list", length = k)
    i <- 1
    while(i <= k){
        dat_i <- sim_studies(R = 1, mu = mu, tau2 = tau2, n0 = n0[i], n1 = n1[i])
        dat_i <- metafor::escalc(yi = yi, vi = vi, sei = sei, data = dat_i)
        dat_i <- data.frame(summary(dat_i))

        ppub <- selfun(dat_i$pval)

        if(rbinom(1, 1, ppub) == 1){
            res[[i]] <- dat_i
            i <- i + 1
        }
    }

    dat <- do.call(rbind, res)
    return(dat)
}

stepfun_pb <- function(steps, probs){
    if(length(probs) != length(steps) + 1){
        stop("the number of probabilities is less than what expected!")
    }
    steps <- c(0, steps, 1)
    function(x) probs[findInterval(x, steps, left.open = TRUE)]
}

negex_pb <- function(delta){
    function(x) exp(-delta * x)
}
