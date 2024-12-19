library(ggplot2)

# default

h0_default <- ggplot(data = NULL) +
    stat_function(fun = dnorm,
                  args = list(mean = 0, sd = 0.5)) +
    xlim(c(-2.5,2.5)) +
    stat_function(
        geom = "area",
        fun = dnorm,
        args = list(mean = 0, sd = 0.5),
        fill = "dodgerblue",
        alpha = 0.4,
        xlim = c(-10, -0.2)
    ) +
    stat_function(
        geom = "area",
        fun = dnorm,
        args = list(mean = 0, sd = 0.5),
        fill = "dodgerblue",
        alpha = 0.4,
        xlim = c(0.2, 10)
    ) +
    stat_function(
        geom = "area",
        fun = dnorm,
        args = list(mean = 0, sd = 0.5),
        fill = "black",
        alpha = 0.4,
        xlim = c(-0.2, 0.2)
    ) +
    theme_void() +
        geom_segment(
            aes(x = c(-0.2, 0.2), y = 0,
                xend = c(-0.2, 0.2), yend = dnorm(c(-0.2, 0.2), 0, 0.5)),
            lty = "dashed"
    )

ggsave(here::here("img/h0-default.svg"), h0_default,
width = 4, height = 2)

# point null

h0_point <- ggplot(data = NULL) +
    stat_function(fun = dnorm,
                  args = list(mean = 0.3, sd = 0.5)) +
    xlim(c(-2,2.5)) +
    stat_function(
        geom = "area",
        fun = dnorm,
        args = list(mean = 0.3, sd = 0.5),
        fill = "dodgerblue",
        alpha = 0.4
    ) +
    geom_segment(
        aes(x = 0, y = 0,
            xend = 0, yend = dnorm(0, 0, 0.5)),
        lwd = 2
    ) +
    theme(
        axis.text = element_blank(),
        axis.title = element_blank(),
        axis.ticks = element_blank()
    ) +
    theme_void() +
    geom_segment(
        aes(x = 0.3, y = 0,
            xend = 0.3, yend = dnorm(0.3, 0.3, 0.5)),
        lty = "dashed"
    )



ggsave(here::here("img/h0-point-null.svg"), h0_point,
       width = 4, height = 2)


ms <- c(0.8, 0)
s <- c(1, 0.5)
xmin <- mean(ms) - max(s) * 4.5
xmax <- mean(ms) + max(s) * 4.5

mixture <- ggplot(data = NULL) +
    stat_function(fun = dnorm,
                  args = list(mean = ms[1], sd = s[1])) +
    stat_function(fun = dnorm,
                  args = list(mean = ms[2], sd = s[2])) +
    xlim(c(xmin,xmax)) +
    # geom_vline(xintercept = c(-0.3, 0.3),
    #            lty = "dashed") +
    stat_function(geom = "area",
                  fun = dnorm,
                  args = list(mean = ms[1], sd = s[1]),
                  xlim = c(-10, -0.3),
                  fill = "blue",
                  alpha = 0.5) +
    stat_function(geom = "area",
                  fun = dnorm,
                  args = list(mean = ms[1], sd = s[1]),
                  xlim = c(0.3, 10),
                  fill = "blue",
                  alpha = 0.5) +
    stat_function(geom = "area",
                  fun = dnorm,
                  args = list(mean = ms[2], sd = s[2]),
                  xlim = c(-10, -0.3),
                  fill = "salmon",
                  alpha = 0.3) +
    stat_function(geom = "area",
                  fun = dnorm,
                  args = list(mean = ms[2], sd = s[2]),
                  xlim = c(0.3, 10),
                  fill = "salmon",
                  alpha = 0.3) +
    stat_function(geom = "area",
                  fun = dnorm,
                  args = list(mean = ms[2], sd = s[2]),
                  xlim = c(-0.3, 0.3),
                  fill = "black",
                  alpha = 0.2) +
    geom_segment(aes(
        x = ms,
        y = 0,
        xend = ms,
        yend = dnorm(ms, ms, s)
    ),
    lty = "dashed",
    lwd = 0.3) +
    annotate("text",
             x = ms[2],
             y = -0.15,
             label = latex2exp::TeX("$\\mu^1_{\\theta}$")) +
    annotate("text",
             x = ms[1],
             y = -0.15,
             label = latex2exp::TeX("$\\mu^2_{\\theta}$")) +
    theme_void()

ggsave(here::here("img/mixture.svg"), mixture,
       width = 4, height = 2.5)


