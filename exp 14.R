q1<-c("A","B","C")
barplot(table(q1),main="Question 1")

pie(table(q1))

responses<-matrix(c(1,2,3),nrow=1)
matplot(t(responses),type="b")

data.frame(q1)