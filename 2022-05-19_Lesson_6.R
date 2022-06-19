library(ggplot2)

#####
## Lesson 6
hotel_bookings <- read.csv("hotel_bookings.csv")

head(hotel_bookings)
colnames(hotel_bookings)

View(hotel_bookings)
#####

ggplot(data = hotel_bookings) + 
  geom_point(mapping = aes(x = lead_time, y = children))

ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = children, y = lead_time))

ggplot(data = hotel_bookings, mapping = aes(x = hotel, y = lead_time, fill = market_segment)) + 
  geom_bar(stat = "identity")
