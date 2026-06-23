age<-c(25,35,45,50,60)
hist(age,main="Age Distribution")

bmi<-c(22,25,28,30,27)
bp<-c(120,125,130,140,135)
plot(bmi,bp,pch=19)

gender<-c("M","F","M","F","M")
pie(table(gender))

data.frame(age,bmi,bp)