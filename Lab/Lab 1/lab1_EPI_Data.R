# Brandon Cabaleiro

# This file also shows how to read a CSV file,
# filter N/A's, and other functions.

EPI_data <- read.csv("2010EPI_data.csv")
EPI_data

View(EPI_data) # brings you to a new tab to see data

attach(EPI_data)

fix(EPI_data)

EPI # shows EPI_data$EPI

tf <- is.na(EPI)
E <- EPI[!tf]

#tf
#E

GRUMP_data <- read.csv("GPW3_GRUMP_SummaryInformation_2010.csv")
View(GRUMP_data)