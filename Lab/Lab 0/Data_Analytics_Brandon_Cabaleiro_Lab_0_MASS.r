# This code for practice from 01/28/2021

library(MASS) # load the library MASS

attach(Boston) # attaching the dataset

?Boston

head(Boston) # show the head of the dataset

dim(Boston) # dimensions of the dataset

names(Boston) # column names

str(Boston) # function shows the structure of the dataset

nrow(Boston) # function shows the number of rows

ncol(Boston) # function shows the number of columns

summary(Boston) # function shows the summary statistics

summary(Boston$crim) # summary of "crime" column in the Boston dataset