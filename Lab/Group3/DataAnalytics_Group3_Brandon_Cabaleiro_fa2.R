#************************************************
# Brandon Cabaleiro
# RCS: cabalb
# RIN: 661648482
# 6000 Level
#
# This R code is for Group 3 lab2_fa2
#************************************************

# STILL WORKING ON THIS

library(Hmisc)
library(GPArotation)

AthleticsData <- spss.get("AthleticsData.sav")
attach(AthleticsData)
#
names(AthleticsData)

cor(AthleticsData)
prcomp(AthleticsData)

fit.2 <- factanal(AthleticsData, factors=2, rotation="varimax")
print(fit.2)

fit.3 <- factanal(AthleticsData, factors=3, rotation="varimax")
print(fit.3)
print(fit.3, digits = 2, cutoff = .2, sort = TRUE)

fit <- factanal(AthleticsData, factors=3, rotation="varimax")
fit # print results


# do not go past here unless you can find fa.promax.R

fit.3.promax <- update(fit.3,rotation="promax") 
colnames(fit.3.promax$loadings)<-c("Endurance","Strength","Hand-Eye") 
print(loadings(fit.3.promax), digits = 2, cutoff = .2, sort = TRUE)
AssignFactorNames <- function(fit.object,names)
{
  colnames(fit.object$promax.loadings)<-names
  colnames(fit.object$varimax.loadings)<-names
  rownames(fit.object$corr.factors)<-names
  colnames(fit.object$corr.factors)<-names
}
fit.3.Enzmann <- fa.promax(AthleticsData,factors=3, digits=2, sort=TRUE) 
fit.3.Enzmann

AssignFactorNames(fit.3.Enzmann, factor.names)
