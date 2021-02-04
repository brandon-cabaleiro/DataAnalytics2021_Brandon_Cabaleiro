# Brandon Cabaleiro

EPI_data <- read.csv("2010EPI_data.csv")

attach(EPI_data)

EPILand <- EPI[!Landlock]

Eland <- EPILand[!is.na(EPILand)]

hist(Eland)

hist(Eland, seq(30.,95.,1.0), prob=TRUE)

EPI_South_Asia <- EPI[EPI_regions == "South Asia"]

EPI_South_Asia
