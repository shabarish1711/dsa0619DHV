temp<-c(30,32,29,35,33)
plot(temp,type="o")

rain<-c(10,15,8,20,12)
barplot(rain)

plot(temp,rain,pch=19)

data.frame(temp,rain)