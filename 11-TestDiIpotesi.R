library(UsingR)
data(stud.recs)

alpha <- 0.05 #dati
mu0 <- 500   # con H_1 mu!=mu0

t.test(stud.recs$sat.m, alternative="two.sided", mu = 500)
#pvalue = 0.010999 < 0.05 = alpha => scarto H0


#
data("normtemp")
mu0t<-98.6
mu0gradi<-(mu0t-32)/1.8
gradi <- (normtemp$temperature-32)/1.8
 #in quanto più corretto è 98.2
t.test(gradi, alternative="less", mu = mu0gradi)
#p 1e-7 <alpha => not valido


#
n<-50
succ <- 40
percSuccOut <- 0.75
binom.test(succ, n, p=percSuccOut, alternative="greater")
#0.2622 non si scarta 

# differenza di media
data(babies)
t.test(babies$dage, babies$age, alternative = "greater", mu=0, paired = TRUE)
# 0.0000 p value => sì padre maggiore
