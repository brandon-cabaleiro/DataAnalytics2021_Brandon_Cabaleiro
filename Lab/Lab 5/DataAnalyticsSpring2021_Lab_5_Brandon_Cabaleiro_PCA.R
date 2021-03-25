#************************************************
# Brandon Cabaleiro
# RCS: cabalb
# RIN: 661648482
# 6000 Level
#
# This R code is for Lab 5. This code will focus
# on PCA.
#************************************************

# getting wine data
wine_data <- read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", sep = ",")
head(wine_data)
nrow(wine_data) # getting the number of rows

# column names are missing, lets make the names
colnames(wine_data) <- c("Cvs", "Alcohol", "Malic Acid",
                         "Ash", "Alkalinity_of_Acid",
                         "Magnesium", "Total_Phenois",
                         "Flavanoids", "NonFalvanoid_Phenols",
                         "Proanthocyanins", "Color_Intensity",
                         "Hue", "OD280/OD315_of_Diluted_Wine",
                         "Proline")

# show new added columns
head(wine_data)

# show correlation with heatmap
heatmap(cor(wine_data), Rowv=NA, Colv=NA)

# creating cultivar classes
cultivar_classes <- factor(wine_data$Cvs)
cultivar_classes

# apply PCA
wine_data_PCA <- prcomp(scale(wine_data[,-1]))
summary(wine_data_PCA)
