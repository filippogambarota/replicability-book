read_all_funs <- function(path = here::here("R")){
    funs <- list.files(path, pattern = "*.R", include.dirs = FALSE, full.names = TRUE)
    filor::get_funs(funs)
}


summary_es <- function(data){
    out <- metafor::escalc(yi = yi, vi = vi, sei = sei, data = data)
    data.frame(summary(out))
}
