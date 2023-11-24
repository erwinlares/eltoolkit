
<!-- README.md is generated from README.Rmd. Please edit that file -->

# eltoolkit

<!-- badges: start -->
<!-- badges: end -->

The goal of eltoolkit is to provide its users with helpers functions
that would make their lives easier.

## Installation

You can install the development version of eltoolkit from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("erwinlares/eltoolkit")
```

## Example

This is how you read a csv file into your environment *and* clean the
variable names in one fell swoop.

``` r
library(eltoolkit)
data <- rac_csv("data.csv")
```

You want to create a new project with a basic template that includes
`data`, `images`, `plots`, and `scripts`. This will create the project
“myproject” place it as a subdirectory of `Desktop` and name it “my
project”. It will also create a new R session and open the project.

``` r
library(eltoolkit)
create_project2("~/Desktop/myproject")
```
