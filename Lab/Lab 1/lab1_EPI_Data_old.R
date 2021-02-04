EPI_data <- read.csv("2010EPI_data.csv")
#or
#EPI_data <- read.xlsx("2010EPI_data.xlsx")
# Note: replace default data frame name â???" cannot start with numbers!
EPI_data
#
# attach(EPI_data) 	# sets the default object
# fix(EPI_data) 	# launches a simple data editor
# EPI_data$EPI 			# prints out values EPI_data$EPI
# tf <- is.na(EPI) # records True values if the value is NA
# E <- EPI[!tf] # filters out NA values, new array

#other data
#GRUMP_data <- read.csv(â???<path>/GPW3_GRUMP_SummaryInformation_2010.csv")