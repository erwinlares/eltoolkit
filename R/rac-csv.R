#' read-and-clean csv
#'
#' rac_csv() leverages `readr::read_csv()` and `janitor::clean_names()` in order to read in a csv file *and* clean the variable names in one fell swoop.
#'
#' @param path
#'
#' path is the file path to the csv file
#'
#' @return
#'
#' returns a tibble
#'
#' @export
#'
#' @examples
#'
#' \dontrun{
#' data <- fancy_csv(<path/filename.csv>)
#' }
#'
rac_csv <- function(path){
    tib <-  readr::read_csv(path) |>
        janitor::clean_names()
    return(tib)
}
