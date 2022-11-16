library(UsingR)
data("nym.2002")
hist(nym.2002$time, 100)
abline(v=180, col="RED")
summary(nym.2002$time)

options(digits = 10)
quantile(nym.2002$time, 0.9)
