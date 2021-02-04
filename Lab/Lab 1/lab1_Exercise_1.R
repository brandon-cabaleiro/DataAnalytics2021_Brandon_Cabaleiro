# Brandon Cabaleiro

EPI_data <- read.csv("2010EPI_data.csv")

attach(EPI_data)

summary(EPI) #stats

fivenum(EPI, na.rm=TRUE) # na.rm does not count N/A values in result.

stem(EPI) # stem and leaf plot

hist(EPI) #histogram

hist(EPI, seq(30.,95.,1.0), prob=TRUE)

lines(density(EPI, na.rm=TRUE, bw=1.))

rug(EPI)

# Cumulative Density Function
plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)

# Quantile-Quartile
par(pty="s")
qqnorm(EPI); qqline(EPI)

# Q-Q plot against generating distribution
x <- seq(30,95,1)
qqplot(qt(ppoints(250), df=5), x, xlab="Q-Q plot for t dsn")
qqline(x)

boxplot(EPI, DALY)
qqplot(EPI, DALY)
