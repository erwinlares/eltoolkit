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
        dots.args <- purrr::map2("/", dots.args, glue)
        dots.args <- purrr::map2(new_project, dots.args, glue)
        purrr::map(dots.args, dir_create)
    }
    usethis::proj_activate(new_project)
}




