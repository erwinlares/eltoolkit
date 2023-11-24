#' Create Project 2
#'
#' create_project2() leverages usethis::create_project() with a few customizations. It has a standard project structure that's more complete that create_project(). In addition, if the user passes on optional folders, those will be added to the project structure. By default, the project will contain this folders: `data`, `images`, `plots`, and `scripts`
#'
#' @param new_project
#' new_project is a character vector with the file path and name of the project
#' @param ...
#' the ... argument takes optional character vector names for the additional folders to be added to the project structure
#'
#' @return does not return anything
#' @export
#'
#' @examples
#' \dontrun{
#' a new project called "my-project" with the "standard" project structure:

#' `create_project2("~/Desktop/my-project")`
#'

#' a new project called "my-project" with an additional folder for reports

#' `create_project2("~/Desktop/my-project", "reports")`
#' }
create_project2 <- function(new_project, ...){
    usethis::create_project(new_project, open = FALSE)
    fs::dir_create(glue::glue(new_project, "/data"))
    fs::dir_create(glue::glue(new_project, "/images"))
    fs::dir_create(glue::glue(new_project, "/plots"))
    fs::dir_create(glue::glue(new_project, "/scripts"))
    fs::dir_delete(glue::glue(new_project, "/R"))
    dots.args <- list(...)
    if(length(dots.args) > 0)
    {
        dots.args <- purrr::map2("/", dots.args, glue::glue)
        dots.args <- purrr::map2(new_project, dots.args, glue::glue)
        purrr::map(dots.args, fs::dir_create)
    }
    usethis::proj_activate(new_project)
}




