library(ggplot2)

hotel_bookings <- read.csv("hotel_bookings.csv")

head(hotel_bookings)

colnames(hotel_bookings)

ggplot(data = hotel_bookings)+
  geom_bar(mapping = aes(x = distribution_channel))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel, ))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel))+
  facet_wrap(~deposit_type)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_grid(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment)+
  theme(axis.text.x = element_text(angle = 45))
