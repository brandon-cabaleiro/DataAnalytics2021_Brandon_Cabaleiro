# This code for practice from 01/28/2021

library(ISLR)

data("Auto")

#?Auto

head(Auto)

names(Auto)

summary(Auto)

summary(Auto$mpg)

fivenum(Auto$mpg)

boxplot(Auto$mpg)

hist(Auto$mpg)

summary(Auto$horsepower)

summary(Auto$weight)

fivenum(Auto$weight)

boxplot(Auto$weight)

mean(Auto$weight)

median(Auto$weight)
