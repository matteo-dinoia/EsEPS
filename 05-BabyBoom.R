library(UsingR)
data("babyboom")
str(babyboom)
diff_born<-diff(babyboom$running.time)
hist(babyboom$running.time)
hist(diff_born, 40)
sd(diff_born)/mean(diff_born)

library(moments)
data(package="moments")
hist(babyboom$wt)
boxplot(babyboom$wt, horizontal=TRUE)
skewness(babyboom$wt)


#BABIES
data("babies")
str(babies)
hist(babies$inc[babies$inc<20], 10)

babies$smoke_f<-as.factor(babies$smoke)
levels(babies$smoke_f)<-c("mai", "sempre", "prima", "molto prima", "N/a")
tab<-table(babies$smoke_f)/length(babies$smoke_f)
barplot(tab)
dotchart(tab)
pie(tab, radius=1)

#BIVARIATA wt e smoke

#trasformo 999 in NA
babies$wt[babies$wt==999]<-NA
hist(babies$wt)
#trasformo in grammi
grams<-babies$wt*28.34952
babies<-cbind(babies, grams)
hist(babies$grams)

boxplot(babies$grams/1000 ~ babies$smoke_f)
summary(babies$grams/1000 ~ babies$smoke_f)
