library(here)
library(skimr)
library(janitor)
library(dplyr)
library(palmerpenguins)

skim_without_charts(penguins)
glimpse(penguins)

penguins %>%
  select(-species)

penguins %>%
  rename(island_new=island)

rename_with(penguins, tolower)

clean_names(penguins)
