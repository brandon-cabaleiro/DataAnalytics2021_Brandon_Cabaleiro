# This practices the use of importing CSV files.

help(read.csv)
data1 <- read.csv(file.choose(), header=T) # allows you to choose a file by opening your file explorer

head(data1)