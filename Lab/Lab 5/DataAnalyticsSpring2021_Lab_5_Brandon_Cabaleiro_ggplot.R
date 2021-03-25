#************************************************
# Brandon Cabaleiro
# RCS: cabalb
# RIN: 661648482
# 6000 Level
#
# This R code is for Lab 5. The code will focus
# on ggplot.
#************************************************

library(gcookbook)
library(ggplot2)

ggplot(BOD, aes(x="Time", y="Demand")) + geom_line()
BOD

BOD1 <- BOD
BOD1$Time <- factor(BOD1$Time)

ggplot(BOD1, aes(x="Time", y="Demand", group=1)) + geom_line()
ggplot(BOD, aes(x="Time", y="Demand")) + geom_line() + ylim(0, max(BOD$demand))
ggplot(BOD, aes(x="Time", y="Demand")) + geom_line() + expand_limits(y=0)
ggplot(BOD, aes(x="Time", y="Demand")) + geom_line() + geom_point()

ggplot(worldpop, aes(x="Year", y="Population")) + geom_line() + geom_point()

ggplot(worldpop, aes(x="Year", y="Population")) + geom_line() + geom_point() + scale_y_log10()
