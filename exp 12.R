views<-c(1500,1600,1400)
plot(views,type="o",main="Page Views")

ctr<-c(2.3,2.7,2.0)
barplot(ctr,names.arg=c("D1","D2","D3"))

plot(views,ctr,pch=19)

data.frame(views,ctr)