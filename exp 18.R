product<-c("A","B","C")
qty<-c(250,175,300)
barplot(qty,names.arg=product)

price<-c(20,15,18)
plot(price,qty,pch=19)

pie(qty,labels=product)

data.frame(product,qty,price)