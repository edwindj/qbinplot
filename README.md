
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggtableplot

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/ggtableplot)](https://CRAN.R-project.org/package=ggtableplot)
[![R-CMD-check](https://github.com/edwindj/ggtableplot/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/edwindj/ggtableplot/actions/workflows/R-CMD-check.yaml)

<!-- badges: end -->

## Installation

You can install the development version of ggtableplot from
[GitHub](https://github.com/) with:

``` r
remotes::install_github("edwindj/ggtableplot")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ggtableplot)
#> Loading required package: ggplot2
## basic example code
```

``` r
ggtableplot(iris, "Sepal.Length", 75)
```

<img src="man/figures/README-cars-1.png" width="100%" />

Or the well-known `diamonds` dataset

``` r
data("diamonds", package = "ggplot2")
ggtableplot(diamonds, "carat", ncols=4)
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />
