library(tidyverse)

names <- c("Maria", "Jose", "Pedro", "Petúcia")
ages <- c(17, 18, 19, 20)
people <- data.frame(names, ages)

head(people)
str(people)

glimpse(people)
colnames(people)

mutate(people, age_in_20 = age + 20)

fruits <- c('apple', 'banana', 'papaya', 'tomato', 'orange')
rank <- c(2, 1, 3, 5, 4)

fruit_ranks <- data.frame(fruits, rank)

View(fruit_ranks)
