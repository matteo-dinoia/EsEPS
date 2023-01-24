data("sleep")
sleep
ex <-sleep$extra * 60
g <- sleep$group
mean(ex[g=="1"])
mean(ex[g=="2"])

t.test(ex[g=="2"], ex[g=="1"], conf.level=0.95)
