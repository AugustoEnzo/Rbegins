library(dplyr)
library(ggplot2)

hotel_bookings <- read.csv("hotel_bookings.csv")

head(hotel_bookings)

colnames(hotel_bookings)

ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes( x = hotel, fill = market_segment))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~market_segment)

onlineta_city_hotels <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")

ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes(x = lead_time, y = children))

ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes(x = lead_time, y = adults))

View(hotel_bookings)

ggplot(data = hotel_bookings) +
  title("Reservation Status per Hotel") +
  geom_bar(mapping = aes(x = hotel, fill = reservation_status))
  