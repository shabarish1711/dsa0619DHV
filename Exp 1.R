# Monthly Sales Data
sales <- c(15000,18000,22000,20000,23000)
months <- c("Jan","Feb","Mar","Apr","May")

# Line Chart (Monthly Sales Trend)
plot(sales, type="o", col="blue", xaxt="n",
     xlab="Month", ylab="Sales ($)",
     main="Monthly Sales Trend")
axis(1, at=1:5, labels=months)

# Bar Chart (Monthly Sales like the image)
barplot(sales,
        names.arg=months,
        col="lightgreen",
        main="Monthly Sales",
        xlab="Month",
        ylab="Sales ($)")

# Scatter Plot (Ad Budget vs Sales)
ad_budget <- c(2000,2500,3000,2800,3200)
plot(ad_budget, sales,
     xlab="Advertising Budget ($)",
     ylab="Sales ($)",
     main="Ad Budget vs Sales",
     pch=19, col="red")
