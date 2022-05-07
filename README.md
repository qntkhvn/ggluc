
An `R` package with Loyola University Chicago `ggplot2` colors and
theme.

## Set up

-   Install

``` r
# install.packages("devtools")
devtools::install_github("qntkhvn/ggluc")
```

-   Load

``` r
library(ggluc)
```

-   Example

``` r
library(ggplot2)
ggplot(mtcars, aes(hp, mpg, color = mpg)) +
  geom_point(size = 4) +
  scale_color_luc_c(reverse = TRUE) +
  theme_bw()
```

<img src="README_files/figure-gfm/example-1.png" style="display: block; margin: auto;" />
