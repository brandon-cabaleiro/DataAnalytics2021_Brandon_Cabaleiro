#************************************************
# Brandon Cabaleiro
# RCS: cabalb
# RIN: 661648482
# 6000 Level
#
# This R code is for Lab 4. This code will show
# random forest.
#************************************************

#Hi Mukesh and Professor Thilanka, still working on this lab.

library(randomForest)
titanic <- data("Titanic")

summary(titanic::titanic_train)
summary(titanic::titanic_test)