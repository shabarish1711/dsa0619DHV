city<-c("A","B","C")
population<-c(500000,700000,600000)
barplot(population,names.arg=city)

temp<-c(75,68,80)
plot(temp,population,pch=19)

elevation<-c(1000,800,1200)
plot(elevation,population,pch=19)

data.frame(city,population,temp,elevation)