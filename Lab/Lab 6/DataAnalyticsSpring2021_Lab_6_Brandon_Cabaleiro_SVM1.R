#************************************************
# Brandon Cabaleiro
# RCS: cabalb
# RIN: 661648482
# 6000 Level
#
# This R code is for Lab 6. This code will focus
# on SVM
#************************************************

library(e1071)
set.seed(1)

# create points
x <- matrix(rnorm(20*2), ncol=2)
y = c(rep(-1,10), rep(1,10))
x[y==1,] <- x[y==1,]+1

# plot the points, not linear
plot(x, col=(3-y))

# use svm to create classification
dat <- data.frame(x=x, y=as.factor(y))
svmfit1 <- svm(y~., data=dat, kernel="linear", cost=10, scale=FALSE)

# plot svmfit
plot(svmfit1, dat)

# output support ventor to idenify them
svmfit1$index

# get summary of svmfit
summary(svmfit1)

# lets try with cost = 0.1
svmfit2 <- svm(y~., data=dat, kernel="linear", cost=0.1, scale=FALSE)
plot(svmfit2, dat)
svmfit2$index


# lets use tune()
set.seed(1)

tune.out <- tune(svm, y~., data=dat, kernel="linear", ranges=list(cost=c(0.001,0.01,0.1,1,5,10,100)))

# show summary of tune.out
summary(tune.out)

# get and show summart of best model from tune.out
bestmode <- tune.out$best.model
summary(bestmode)

# create test data
xtest <- matrix(rnorm(20*2), ncol=2)
ytest <- sample(c(-1,1), 20, rep=TRUE)
xtest[ytest==1,] <- xtest[ytest==1,]+1
testdat <- data.frame(x=xtest, y=as.factor(ytest))

# predict with bestmod and test data
ypred <- predict(bestmode, testdat)
table(predict=ypred, truth=testdat$y)

# lets use SVM
svmfit3 <- svm(y~., data=dat, kernel="linear", cost=0.1, scale=FALSE)
ypred2 <- predict(svmfit3, testdat)
table(predict=ypred2, truth=testdat$y)

# lets use data that is linearly seperable
x[y==1,] <- x[y==1,]+0.5
plot(x, col=(y+5)/2, pch=19)

# get SVM and output plot
dat2 <- data.frame(x=x, y=as.factor(y))
svmfit4 <- svm(y~., data=dat2, kernel="linear", cost=1e5)
summary(svmfit4)
plot(svmfit4, dat2)

# do SVM again with cost=1
svmfit5 <- svm(y~., data=dat2, kernel="linear", cost=1)
summary(svmfit5)
plot(svmfit5, dat2)





