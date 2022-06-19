library(tidyverse)
library(ggplot2)
library(palmerpenguins)

data(penguins)

View(penguins)

penguins <-
  penguins %>%
  group_by(island) %>%
  drop_na() %>%
  mutate(body_mass_kg = body_mass_g / 1000, flipper_length_m = flipper_length_mm/1000)

penguins_num <-
  penguins %>%
  count(island)

print(penguins_num)
ggplot(data = penguins) + geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

#ggplot(data = penguins)

#ggplot(data = penguins) + geom_point()

#ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) + geom_point()

ggplot(data = penguins, mapping = aes(x=island, y=nrow(penguins), fill=species)) + geom_bar(stat="identity")

       