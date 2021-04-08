#************************************************
# Brandon Cabaleiro
# RCS: cabalb
# RIN: 661648482
# 6000 Level
#
# This R code is for lab1_ctree2
#************************************************

# Conditional Inference Tree for Mileage
fit2M <- ctree(Mileage~Price + Country + Reliability + Type, data=na.omit(cu.summary))
summary(fit2M)
# plot tree
plot(fit2M, uniform=TRUE, main="CI Tree Tree for Mileage ")