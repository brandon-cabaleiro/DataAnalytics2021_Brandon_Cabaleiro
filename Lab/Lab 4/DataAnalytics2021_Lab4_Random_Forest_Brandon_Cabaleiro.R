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

model1 <- randomForest(Survived ~ ., data = titanic::titanic_train, importance = TRUE)
model1

model2 <- randomForest(Survived ~ ., data = titanic::titanic_train, ntree=500, mtry=6, importance = TRUE)
model2

predTrain <- predict(model2, titanic::titanic_train, type="class")
table(predTrain, titanic::titanic_train$Survived)

predValid <- predict(model2, titanic::titanic_test, type="class")
table(predTrain, titanic::titanic_train$Survived)