score<-c(85,92,78)
plot(score,type="o")

dept<-c("Sales","HR","Marketing")
barplot(score,names.arg=dept)

years<-c(5,3,7)
plot(years,score,pch=19)

data.frame(dept,years,score)