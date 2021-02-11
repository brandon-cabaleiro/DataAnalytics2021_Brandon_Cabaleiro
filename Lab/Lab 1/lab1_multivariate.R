# Brandon Cabaleiro
# This code is for lab 1 using multivariate.csv

library(magrittr)

multivariate <- read.csv("multivariate.csv")

head(multivariate)

attach(multivariate)

mm <- lm(Homeowners~Immigrant) # Homeowners = 107495 + (-6657)*Immigrant
mm

summary(mm)$coef

plot(Homeowners~Immigrant)

abline(mm)
abline(mm,col=2,lwd=3)

newImmigrantData <- data.frame(Immigrant = c(0,20))
mm %>% predict(newImmigrantData) ## mm piped into predict

abline(mm)
abline(mm,col=3,lwd=3)
attributes(mm)
mm$coefficients