#************************************************
# Brandon Cabaleiro
# RCS: cabalb
# RIN: 661648482
# 6000 Level
#
# This R code is for Lab 7. This focus on PCA
# with the Boston dataset.
#************************************************

data(Boston, package="MASS")

# get and output principle components
pca_out <- prcomp(Boston, scale. = T)
pca_out

# plot
plot(pca_out)

# plot a biplot from pca_out
biplot(pca_out, scale = 0)

# get data multiplied by rotation
boston_pc <- pca_out$x
boston_pc

head(boston_pc)

# return a summary
summary(boston_pc)
