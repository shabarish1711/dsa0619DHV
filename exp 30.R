scores<-c(45,60,55,70,65)
plot(scores,type="o")

barplot(scores)

matches<-c(5,6,5,7,6)
plot(matches,scores,pch=19)

data.frame(matches,scores)