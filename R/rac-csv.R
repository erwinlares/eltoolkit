rac_csv <- function(path){
    tib <-  readr::read_csv(path) |>
        janitor::clean_names()
    return(tib)
}
