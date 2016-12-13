
<!-- README.md is generated from README.Rmd. Please edit that file -->
farsCoursera
============

Overview
--------

This package allow you to import and summarize data from the [Fatality Analysis Reporting System](http://www.nhtsa.gov/Data/Fatality-Analysis-Reporting-System-(FARS)). You can also map the locations of accidents on a state map.

Installation
------------

You can install this package directly from GitHub.

``` r
install.packages("devtools")
devtools::install_github("JayLKim/farsCoursera")
```

Usage
-----

**We need to assume that we already have downloaded a data file at the current working directory.**

-   Data import (`fars_read_years()`)

If you input a vector of years, you can get a `tibble` of all cases.

``` r
fars_read_years(c(2013, 2014))
#> [[1]]
#> # A tibble: 30,202 × 2
#>    MONTH  year
#>    <int> <dbl>
#> 1      1  2013
#> 2      1  2013
#> 3      1  2013
#> 4      1  2013
#> 5      1  2013
#> 6      1  2013
#> 7      1  2013
#> 8      1  2013
#> 9      1  2013
#> 10     1  2013
#> # ... with 30,192 more rows
#> 
#> [[2]]
#> # A tibble: 30,056 × 2
#>    MONTH  year
#>    <int> <dbl>
#> 1      1  2014
#> 2      1  2014
#> 3      1  2014
#> 4      1  2014
#> 5      1  2014
#> 6      1  2014
#> 7      1  2014
#> 8      1  2014
#> 9      1  2014
#> 10     1  2014
#> # ... with 30,046 more rows
```

-   Data summary (`fars_summarize_years()`)

This function summarizes the data you imported. It returns a `tibble` representing the number of cases per month for a given year.

``` r
fars_summarize_years(c(2013, 2014, 2015))
#> # A tibble: 12 × 4
#>    MONTH `2013` `2014` `2015`
#> *  <int>  <int>  <int>  <int>
#> 1      1   2230   2168   2368
#> 2      2   1952   1893   1968
#> 3      3   2356   2245   2385
#> 4      4   2300   2308   2430
#> 5      5   2532   2596   2847
#> 6      6   2692   2583   2765
#> 7      7   2660   2696   2998
#> 8      8   2899   2800   3016
#> 9      9   2741   2618   2865
#> 10    10   2768   2831   3019
#> 11    11   2615   2714   2724
#> 12    12   2457   2604   2781
```

-   Accidents map (`fars_map_state()`)

You can map the locations of accidents on a state map. Let's draw an accident map of Florida in 2013. (See [this link](https://en.wikipedia.org/wiki/List_of_U.S._state_abbreviations) for a `state.num`)

``` r
fars_map_state(state.num = 12, year = 2013)
```

![](README-fars_map_state()-1.png)
