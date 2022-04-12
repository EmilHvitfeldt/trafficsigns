
<!-- README.md is generated from README.Rmd. Please edit that file -->

# trafficsigns

<!-- badges: start -->
<!-- badges: end -->

The goal of trafficsigns is to provide a data set of traffic signs.

## Installation

You can install the development version of trafficsigns like so:

``` r
remotes::install_github("emilhvitfeldt/trafficsigns")
```

## Example

This package contain a single data set `signs`

``` r
library(trafficsigns)
library(tibble)

signs
#> # A tibble: 1,155 × 7
#>    status     time_days date_performed      date_registered     district_name   
#>    <chr>          <dbl> <dttm>              <dttm>              <chr>           
#>  1 taken down    4686   2014-06-24 00:00:00 2001-08-25 00:00:00 vesterbro_konge…
#>  2 still up      1868.  2019-12-09 00:00:00 2014-10-27 12:55:02 vesterbro_konge…
#>  3 still up       545.  2021-10-20 00:00:00 2020-04-23 09:28:39 vesterbro_konge…
#>  4 still up      4242   2019-07-19 00:00:00 2007-12-07 00:00:00 indre_by        
#>  5 taken down    3478   2017-06-15 00:00:00 2007-12-07 00:00:00 indre_by        
#>  6 taken down    4277   2019-01-28 00:00:00 2007-05-14 00:00:00 indre_by        
#>  7 still up      2149.  2021-06-24 00:00:00 2015-08-05 16:05:14 indre_by        
#>  8 taken down     443.  2021-03-21 00:00:00 2020-01-03 11:18:27 indre_by        
#>  9 still up        27.5 2021-04-22 00:00:00 2021-03-25 12:07:19 indre_by        
#> 10 still up      1320.  2020-12-08 13:01:16 2017-04-28 14:02:57 osterbro        
#> # … with 1,145 more rows, and 2 more variables: sign_main <chr>, sign_sub <chr>
```
