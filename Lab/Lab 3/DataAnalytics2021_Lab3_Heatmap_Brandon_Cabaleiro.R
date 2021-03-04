#************************************************
# Brandon Cabaleiro
# RCS: cabalb
# RIN: 661648482
# 6000 Level
#
# This R code is for Lab 3. This code will show
# heat map.
#************************************************

# creating a matrix data with random numbers
# and plotting the matrix using the image() function
# you will see there, it does not have a real pattern in the plot.
set.seed(12345)
help(par)

# par can be used to set or query graphical parameters.
# Parameters can be set by specifying them as arguments
# to par in tag = value form, or by passing them as a list of tagged values.
par(mar = rep(0.2,4))
data_Matrix <- matrix( rnorm (400), nrow = 40)
image(1:10, 1:40, t(data_Matrix)[,nrow(data_Matrix):1])

# When we run the heatmap() here, we get the deprograms printed on the
# both columns and the rows and still there is no real emerging pattern that is
# interesting to us, it is because there is no real interesting pattern 
# underlying in the data we generated.
heatmap(data_Matrix)

# coin flip
set.seed(678910)
for (i in 1:40)
{
  coin_flip <- rbinom(1, size=1, prob=0.5)
  if (coin_flip)
  {
    data_Matrix[i,] <- data_Matrix[i,] + rep(c(0,3), each=5)
  }
}

par(mar = rep(0.2,4))
image(1:10, 1:40, t(data_Matrix)[,nrow(data_Matrix):1])
heatmap(data_Matrix)

hh <- hclust(dist(data_Matrix))
data_Matrix_Ordered <- data_Matrix[hh$order,]
par(mfrow = c(1,3))
image(t(data_Matrix_Ordered)[, nrow(data_Matrix_Ordered):1])
plot(rowMeans(data_Matrix_Ordered), 40:1, , xlab="The Rown Mean", ylab="Row", pch=19)
plot(colMeans(data_Matrix_Ordered), xlab="Column", ylab="Column Mean", pch=19)