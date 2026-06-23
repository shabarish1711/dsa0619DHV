amount<-c(5000,7000,4500,8000,6000)
barplot(amount)

type<-c("Deposit","Withdraw","Deposit","Deposit","Withdraw")
pie(table(type))

days<-1:5
plot(days,amount,type="o")

data.frame(days,amount,type)