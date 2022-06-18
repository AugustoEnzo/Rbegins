library(tidyverse)
library(skimr)
library(janitor)

hotel_bookings <- read.csv("hotel_bookings.csv")

head(hotel_bookings)

str(hotel_bookings)

glimpse(hotel_bookings)

colnames(hotel_bookings)

arrange(hotel_bookings, lead_time)

arrange(hotel_bookings, desc(lead_time))

hotel_bookingsv2 <-
  arrange(hotel_bookings, desc(lead_time))

head(hotel_bookingsv2)

max(hotel_bookings$lead_time)

min(hotel_bookings$lead_time)

mean(hotel_bookings$lead_time)

mean(hotel_bookingsv2$lead_time)

filter(hotel_bookings, hotel_bookings$hotel=='City Hotel')

hotel_bookings_city <-
  filter(hotel_bookings, hotel_bookings$hotel=='City Hotel')

mean(hotel_bookings_city$lead_time)

hotel_summary <-
  hotel_bookings %>%
  group_by(hotel) %>%
  summarise(average_lead_time=mean(lead_time),
            min_lead_time_minutes=min(lead_time),
            max_lead_time_minutes=max(lead_time))

head(hotel_summary)