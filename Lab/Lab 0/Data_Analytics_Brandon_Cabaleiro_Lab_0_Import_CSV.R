# This practices the use of importing CSV files.

help(read.csv)
data1 <- read.csv(file.choose(), header=T)

head(data1)