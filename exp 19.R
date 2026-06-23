q1<-c("A","B","C")
barplot(table(q1))

survey<-matrix(c(1,1,1,1,2,1,1,1,2),nrow=3)
barplot(survey,beside=TRUE)

barplot(survey,beside=FALSE)

data.frame(q1)