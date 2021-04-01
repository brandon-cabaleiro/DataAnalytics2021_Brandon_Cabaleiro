#************************************************
# Brandon Cabaleiro
# RCS: cabalb
# RIN: 661648482
# 6000 Level
#
# This R code is for Lab 6. This code will focus
# on SVM for Gene Expression example.
#************************************************

library(e1071)
library(ISLR)
names(Khan)

# get dimensions
dim(Khan$xtrain)
dim(Khan$xtest)

# get length of the datasets and output a table
length(Khan$ytrain)
length(Khan$ytest)
table(Khan$ytrain)
table(Khan$ytest)

# create data frame and get SVM with summary
dat <- data.frame(x=Khan$xtrain, y=as.factor(Khan$ytrain))
out <- svm(y~., data=dat, kernel="linear", cost=10)
summary(out)

# predict from out and output prediction table
dat.te <- data.frame(x=Khan$xtest, y=as.factor(Khan$ytest))
pred.te <- predict(out, newdata=dat.te)
table(pred.te, dat.te$y)









