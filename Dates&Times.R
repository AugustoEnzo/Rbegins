library(tidyverse)
library(lubridate)
library(tidyr)

today()
now()

dplyr::near(12.467, 1)

z <- rep(x, 1000)
pryr::object_size(z)

##### Create an Dataframe in R

country <- data.frame(c("A","B","C"), c(100, 200, 120), c(2000, 7000, 15000))
colnames(country) <- c("Countries", "population_in_million", "gdp_percapita")

country

## reshape in R from wide to long example
data_long = gather(country, detail, value, population_in_million:gdp_percapita, factor_key=TRUE)
data_long

##### long to wide using spread() function of tidyr package
data_wide = spread(data_long, detail, value)
data_wide

##### Exercise 20.3.4
function(x, method) {
  if(method == "round down") {
    floor(x)
  } else if (method == "round up") {
    ceiling(x)
  } else if (method == "round towards zero") {
    trunc(x)
  } else if (method == "round away from zero") {
    sign(x) * ceiling(abs(x))
  } else if (method == "nearest, round half up") {
    floor(x+0.5)
  } else if (method == "nearest, round half towards zero") {
    sign(x) * ceiling(abs(x) - 0.5)
  } else if (method == "nearest, round half away from zero") {
    sign(x) * floor(abs(x) + 0.5)
  } else if (method == "nearest, round half to even") {
    round(x, digits = 0)
  } else if (method == "nearest, round half to odd") {
    case_when(
      # smaller integer is odd - round half down
      floor(x) %% 2 ~ ceiling(x - 0.5),
      # otherwise, round half up
      TRUE ~ floor(x + 0.5)
    )
  } else if (method == "nearest, round half randomly") {
    round_half_up <- sample(c(TRUE, FALSE), length(x), replace = TRUE)
    y <- x
    y[round_half_up] <- ceiling(x[round_half_up] - 0.5)
    y[!round_half_up] <- floor(x[!round_half_up] + 0.5)
    y
  }
}

tibble(
  x = c(1.8, 1.5, 1.2, 0.8, 0.5, 0.2,
        -0.2, -0.5, -0.8, -1.2, -1.5, -1.8),
  `Round down` = floor(x),
  `Round up` = ceiling(x),
  `Round towards zero` = trunc(x),
  `Nearest, round half to even` = round(x)
)