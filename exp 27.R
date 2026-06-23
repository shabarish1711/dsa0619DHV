orders<-c(15,20,18,25,22)
barplot(orders)

sales<-c(5000,7000,6500,8000,7500)
plot(orders,sales,pch=19)

pie(sales)

data.frame(orders,sales)