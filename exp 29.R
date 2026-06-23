ratings<-c(4.2,4.5,3.8,4.7,4.0)
barplot(ratings)

reviews<-c(100,150,90,200,120)
plot(reviews,ratings,pch=19)

pie(reviews)

data.frame(reviews,ratings)