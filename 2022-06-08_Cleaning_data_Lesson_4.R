library(tidyverse)
library(janitor)
library(skmr)

bookings_df <- read_csv("hotel_bookings.csv")

head(bookings_df)

str(bookings_df)

glimpse(bookings_df)

colnames(bookings_df)

skim_without_charts(bookings_df)

trimmed_df <- bookings_df %>%
  select( 'hotel', 'is_canceled', 'lead_time' )

trimmed_df %>%
  select('hotel', 'is_canceled', 'lead_time') %>%
  rename('hotel_category' = hotel )

example_df <- bookings_df %>% 
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")

example_df <- bookings_df %>%
  mutate( num_of_guests = (adults + children + babies) )

head(example_df)

example_df <- bookings_df %>%
  group_by(hotel) %>% drop_na() %>% summarize( tot_canceled = sum(is_canceled), avg_lead_time = mean(lead_time))

example_df <- bookings_df %>%
  drop_na() %>% summarize(tot_canceled = sum(is_canceled), avg_lead_time = mean(lead_time))

View(example_df)
