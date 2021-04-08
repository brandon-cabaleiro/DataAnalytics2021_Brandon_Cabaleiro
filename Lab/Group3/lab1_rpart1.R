#************************************************
# Brandon Cabaleiro
# RCS: cabalb
# RIN: 661648482
# 6000 Level
#
# This R code is for lab1_rpart1
#************************************************

require(rpart)
Swiss_rpart <- rpart(Fertility ~ Agriculture + Education + Catholic, data = swiss)
plot(Swiss_rpart) # try some different plot options
text(Swiss_rpart) # try some different text options