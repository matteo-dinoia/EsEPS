alpha = 0.05

qnorm(alpha/2, 0, 1)    #-1.96
qnorm(1-alpha/2, 0, 1)  #+1.66 simmetrico


# ttest
library(UsingR)
data(babies)
str(babies)

t.test(babies$age, conf.level = 0.95)
