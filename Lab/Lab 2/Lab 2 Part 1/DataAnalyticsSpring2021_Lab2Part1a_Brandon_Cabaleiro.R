#************************************************
# Brandon Cabaleiro
# RCS: cabalb
# RIN: 661648482
#
# This R code is for Lab 2 Part 1a.
# This code will generate central tendency values 
# as well as box plots, histograms, and Q-Q plots 
# from a given variable.
#************************************************

#read CSV file
EPIdata <- read.csv("2010EPI_data.csv", skip=1)
attach(EPIdata) # attach columns to get data easily

# calculate Arithmetic Mean for EPI and DALY
CenTenEPI_ArthMean <- mean(EPI, na.rm=TRUE)
CenTenDALY_ArthMean <- mean(DALY, na.rm=TRUE)

# calculate Geometric Mean for EPI and DALY
CenTenEPI_GeoMean <- prod(EPI, na.rm=TRUE) ^ (1/length(EPI[!is.na(EPI)]))
CenTenDALY_GeoMean <- prod(DALY, na.rm=TRUE) ^ (1/length(DALY[!is.na(DALY)]))

# calculate Harmonic Mean for EPI and DALY
CenTenEPI_HarmMean <- (1 / mean(1/EPI, na.rm=TRUE))
CenTenDALY_HarmMean <- (1 / mean(1/DALY, na.rm=TRUE))

# calculate Median for EPI and DALY
CenTenEPI_Median <- median(EPI, na.rm=TRUE)
CenTenDALY_Median <- median(DALY, na.rm=TRUE)

# calculate Mode for EPI and DALY
freqTable_EPI <- table(EPI)
CenTenEPI_Mode <- names(freqTable_EPI)[which(freqTable_EPI==max(freqTable_EPI))]

freqTable_DALY <- table(DALY)
CenTenDALY_Mode <- names(freqTable_DALY)[which(freqTable_DALY==max(freqTable_DALY))]

# print Central Tendency values from EPI and DALY
print("****EPI Central Tendency:****")
print(paste("EPI Arithmetic Mean:", CenTenEPI_ArthMean))
print(paste("EPI Geometric Mean:", CenTenEPI_GeoMean))
print(paste("EPI Harmonic Mean", CenTenEPI_HarmMean))
print(paste("EPI Median:", CenTenEPI_Median))
print(paste("EPI Mode:", CenTenEPI_Mode))
print("****DALY Central Tendency:****")
print(paste("DALY Arithmetic Mean:", CenTenDALY_ArthMean))
print(paste("DALY Geometric Mean:", CenTenDALY_GeoMean))
print(paste("DALY Harmonic Mean:", CenTenDALY_HarmMean))
print(paste("DALY Median:", CenTenDALY_Median))
print(paste("DALY Mode:", CenTenDALY_Mode))

# creating histograms for EPI and DALY
hist(EPI)
hist(DALY)

# creating boxplot for ENVHEALTH AND ECOSYSTEM
boxplot(ENVHEALTH, ECOSYSTEM, main="ENVHEALTH and ECOSYSTEM Box Plot")

# creating qqplot for ENVHEALTH and ECOSYSTEM
qqplot(ENVHEALTH, ECOSYSTEM, main="ENVHEALTH and ECOSYSTEM Q-Q Plot")
