passengers<-c(500,650,700,800,750)
plot(passengers,type="o")

barplot(passengers)

routes<-c("R1","R2","R3","R4","R5")
pie(rep(1,5),labels=routes)

data.frame(routes,passengers)