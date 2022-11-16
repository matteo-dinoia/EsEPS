library(UsingR)
data("normtemp")
gradi=(normtemp$temperature-32)/1.8
normtemp2<-cbind(normtemp, gradi)
normtemp2$gender_factor<-as.factor(normtemp2$gender)
levels(normtemp2$gender_factor)<-c("male", "female")
is_male<-normtemp2$gender_factor=="male";

#graph
par(mfrow=c(2,1))
hist(normtemp2$gradi[is_male])
hist(normtemp2$gradi[!is_male])
mean(normtemp2$gradi[is_male])
median(normtemp2$gradi[is_male])
mean(normtemp2$gradi[!is_male])
median(normtemp2$gradi[!is_male])

#density
par(mfrow=c(1,1))
density(normtemp2$gradi[is_male])->dm
density(normtemp2$gradi[!is_male])->df
plot(df, col="red")
lines(dm, col="blue")
data("chicken")
hist(chicken$Ration1)
hist(chicken$Ration2)
hist(chicken$Ration3)
