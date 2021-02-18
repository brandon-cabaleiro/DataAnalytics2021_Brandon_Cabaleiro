#************************************************
# Brandon Cabaleiro
# RCS: cabalb
# RIN: 661648482
#
# This R code is for Lab 2 Part 1b.
# This code will generate linear regressions.
#************************************************

#read CSV file
EPIdata <- read.csv("2010EPI_data.csv", skip=1)
attach(EPIdata) # attach columns to get data easily

# create a box plot of ENVHEALTH, DALY, AIR_H, WATER_H
boxplot(ENVHEALTH, DALY, AIR_H, WATER_H, main="ENVHEALTH, DALY, AIR_H, WATER_H Box Plot")

lmENHV <- lm(ENVHEALTH~DALY+AIR_H+WATER_H)
lmENHV # print results

# print a summary of results from lmENHV
summary(lmENHV)

# prints model coefficients
cENVH <- coef(lmENHV)
cENVH

# Predictions with DALY, AIR_H, and WATER_H
DALYNEW <- c(seq(5, 95, 5))
AIR_HNEW <- c(seq(5, 95, 5))
WATER_HNEW <- c(seq(5, 95, 5))

NEW <- data.frame(DALYNEW, AIR_HNEW, WATER_HNEW)
pENV <- predict(lmENHV, NEW, interval="prediction")
cENV <- predict(lmENHV, NEW, interval="confidence")

# create a box plot of AIR_E and CLIMANTE
boxplot(AIR_E, CLIMATE, main="AIR_E and CLIMATE Box Plot")

lmAC <- lm(AIR_E~CLIMATE)
lmAC # print results

# print a summary of results from lmENHV
summary(lmAC)

# prints model coefficients
cAC <- coef(lmAC)
cAC

# Predictions with AIR_E and CLIMATE
AIR_ENEW <- c(seq(5, 95, 5))
CLIMATENEW <- c(seq(5, 95, 5))

NEW_AC <- data.frame(AIR_ENEW, CLIMATENEW)
pENV <- predict(lmAC, NEW_AC, interval="prediction")
cENV <- predict(lmAC, NEW_AC, interval="confidence")