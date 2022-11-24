library(UsingR)
data(fat)

cor(fat$neck, fat$wrist) # correlazione
plot(fat$neck, fat$wrist)#skatterplot

cor(fat$wrist, fat$height*2.54) # correlazione
plot(fat$wrist[fat$height*2.54>100], (fat$height*2.54)[fat$height*2.54>100])#skatterplot


library(MASS)
data("Animals")
hist(Animals$brain, 100)
toKeep<-Animals$body<8000
plot(Animals$body[toKeep], Animals$brain[toKeep])
cor(Animals$body[toKeep], Animals$brain[toKeep])
cor(Animals$body, Animals$brain, method="spearman")
