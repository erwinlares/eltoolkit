
<!-- README.md is generated from README.Rmd. Please edit that file -->

# eltoolkit

<!-- badges: start -->

[![R-CMD-check](https://github.com/erwinlares/eltoolkit/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/erwinlares/eltoolkit/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of eltoolkit is to provide its users with functions that makes
their lives easier.

## Installation

You can install the development version of eltoolkit from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("erwinlares/eltoolkit")
```

## Example

This is how you read a csv file into your environment *and* clean the
variable names.

``` r
library(eltoolkit)
data <- rac_csv("data.csv")
```
