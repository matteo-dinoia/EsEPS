library(UsingR)
data(grades)
table(grades)   #table at 2 entry
mosaicplot(table(grades))   #plot a mosaico (dimensione = grandezza)

grades_prev_num<-as.numeric(grades$prev)
grades_post_num<-as.numeric(grades$grade)
cor(grades_prev_num, grades_post_num, method="kendal")
