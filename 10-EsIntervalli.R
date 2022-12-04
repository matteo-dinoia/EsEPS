library(UsingR)
data(stud.recs)
str(stud.recs)
hist(stud.recs$sat.m)
#intervalli su media di sat math

options(digits = 10)
t.test(stud.recs$sat.m, conf.level=0.90)
#esce 476.8953 a 494.9797

data(normtemp)
gradi=(normtemp$temperature-32)/1.8
normtemp<-cbind(normtemp, gradi)
hist(normtemp$gradi)

t.test(normtemp$gradi, conf.level = 0.9)
#esce 36.7459 a 36.8643
#valido in quanto 130>30 soglia

## ----------------------------

#binom
binom.test(5, 100, conf.level=0.95)

size=100000000
binom.test(4/5*size, size, conf.level = 0.9)
# 5 -> 0.3425916820 0.9897937817
# 100  ->  0.7227997503 0.8633386748
# 1000 -> 0.7780485668 0.8206319706

## ----------------------------
library(HistData)
data(GaltonFamilies)
female <- GaltonFamilies$gender=="female"
t.test(GaltonFamilies$childHeight[female], GaltonFamilies$childHeight[!female], paired=FALSE)

data(babies)
t.test(babies$dage, babies$age, paired = TRUE, conf.level = 0.90)
