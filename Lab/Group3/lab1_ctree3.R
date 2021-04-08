#************************************************
# Brandon Cabaleiro
# RCS: cabalb
# RIN: 661648482
# 6000 Level
#
# This R code is for lab1_ctree3
#************************************************

fitK <- ctree(Kyphosis ~ Age + Number + Start, data=kyphosis)
plot(fitK, main="Conditional Inference Tree for Kyphosis")
plot(fitK, main="Conditional Inference Tree for Kyphosis",type="simple")
