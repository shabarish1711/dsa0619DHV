likes<-c(120,150,180,200,170)
barplot(likes)

shares<-c(20,25,35,40,30)
plot(likes,shares,pch=19)

pie(shares)

data.frame(likes,shares)