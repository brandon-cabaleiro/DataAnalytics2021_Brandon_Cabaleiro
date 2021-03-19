#************************************************
# Brandon Cabaleiro
# RCS: cabalb
# RIN: 661648482
# 6000 Level
#
# This R code is for Lab 4. This code will show
# random forest.
#************************************************

library(randomForest)
library(titanic)

head(titanic_train)

# cleaning up the data
titanic_train[titanic_train == ""] <- NA

titanic_train[titanic_train$Survived == 0,]$Survived <- "No"
titanic_train[titanic_train$Survived == 1,]$Survived <- "Yes"
titanic_train$Survived <- as.factor(titanic_train$Survived)

titanic_train$Pclass <- as.factor(titanic_train$Pclass)

titanic_train[titanic_train$Sex == "female",]$Sex <- "F"
titanic_train[titanic_train$Sex == "male",]$Sex <- "M"
titanic_train$Sex <- as.factor(titanic_train$Sex)

titanic_train$Embarked <- as.factor(titanic_train$Embarked)

# showing the structure of the data
str(titanic_train)

# creating another frame for columns with only nums and factors for rfImpute
titanic_train_no_char <- titanic_train[c(1:3, 5:8, 10, 12)]

set.seed(50)

# impute the NA values
titanic_train_imputed <- rfImpute(Survived ~ ., data=titanic_train_no_char, iter=6)

# creating two models of randomForest
model1 <- randomForest(Survived ~ ., data = titanic_train_imputed, importance = TRUE)
model1

model2 <- randomForest(Survived ~ ., data = titanic_train_imputed, ntree=1000, mtry=6, importance = TRUE)
model2

# output predictions
predTrain <- predict(model1, titanic_train_imputed, type="class")
table(predTrain, titanic_train_imputed$Survived)


