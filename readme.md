
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Fatality.Reporting.System

<!-- badges: start -->

<https://travis-ci.org/gben1750/Fatal-Accidents-Test.svg?branch=main>
<!-- badges: end -->

The goal of Fatality.Reporting.System is to …

## Installation

You can install the released version of Fatality.Reporting.System from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("Fatality.Reporting.System")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("gben1750/Fatal-Accidents-Test")
```

## Example

This is a basic example which shows you how to display the fatal
accidents for California during 2013:

``` r
library(Fatality.Reporting.System)
## basic example code
fars_read('accident_2013_test.csv')
#> # A tibble: 30,202 x 5
#>    STATE ST_CASE PERSONS LATITUDE LONGITUD
#>    <dbl>   <dbl>   <dbl>    <dbl>    <dbl>
#>  1     1   10001       8     33.8    -86.4
#>  2     1   10002       2     34.0    -85.9
#>  3     1   10003       1     34.7    -86.6
#>  4     1   10004       3     33.5    -86.9
#>  5     1   10005       3     33.2    -87.6
#>  6     1   10006       3     30.7    -88.1
#>  7     1   10007       1     34.3    -86.2
#>  8     1   10008       2     34.6    -85.8
#>  9     1   10009       1     33.0    -85.3
#> 10     1   10010       4     32.6    -86.0
#> # ... with 30,192 more rows
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub\!
