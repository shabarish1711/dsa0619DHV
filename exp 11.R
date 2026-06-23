category<-c("Electronics","Clothing","Appliances")
sales<-c(50000,35000,40000)
barplot(sales,names.arg=category)

pie(sales,labels=category,
    main="Sales Distribution")

funnel<-sort(sales,decreasing=TRUE)
barplot(funnel,horiz=TRUE)

data.frame(category,sales)