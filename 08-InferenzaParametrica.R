n<-10000000
val<-rexp(n, 2) # crea n campioni esponenziali con lamda 2
mean(val)     # media di numeri grandi si avvicina a 1/lamda=0.5