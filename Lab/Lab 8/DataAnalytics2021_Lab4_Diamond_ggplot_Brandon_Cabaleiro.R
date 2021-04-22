#************************************************
# Brandon Cabaleiro
# RCS: cabalb
# RIN: 661648482
# 6000 Level
#
# This R code is for Lab 8. This code will focus
# on output plots from the diamonds data set.
#************************************************

library(ggplot2)

data("diamonds")

head(diamonds)

# output first plot
ggplot(diamonds, aes(clarity, fill=cut)) + 
  geom_bar()

# output second plot
ggplot(diamonds, aes(clarity)) + 
  geom_bar() +
  facet_wrap(~ cut)

# output third plot
ggplot(diamonds) +
  geom_histogram(aes(x=price)) +
  geom_vline(xintercept=12000)

# output fourth plot
ggplot(data=diamonds,
       mapping=aes(color=cut_number(carat, 5), 
                   x=price)) +
  geom_freqpoly() +
  labs(x="Price",
       y="Count",
       color="Carat")

# output fifth plot
ggplot(diamonds,
       aes(x=cut_number(price, 10),y=carat)) +
  geom_boxplot() +
  coord_flip() +
  xlab("Price")

# output sixth plot
ggplot(diamonds,
       aes(x=cut_number(carat, 5), y=price, colour=cut)) +
  geom_boxplot()

