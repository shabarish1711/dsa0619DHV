# --- Set 4: Product Inventory Management ---

# Dataset
products <- c("A","B","C","D","E")
qty <- c(250,175,300,200,220)
categories <- c("Electronics","Clothing","Electronics","Appliances","Clothing")
price <- c(20,15,18,22,19)   # Example product prices

# 1. Bar Chart
barplot(qty,
        names.arg=products,
        col="purple",
        main="Inventory Quantity",
        xlab="Products",
        ylab="Quantity")

# 2. Stacked Bar Chart (quantities by category)
# Build a matrix: rows = categories, columns = products
stack_data <- matrix(0, nrow=3, ncol=5)
rownames(stack_data) <- c("Electronics","Clothing","Appliances")
colnames(stack_data) <- products

for(i in 1:length(products)){
  stack_data[categories[i], products[i]] <- qty[i]
}

barplot(stack_data,
        col=rainbow(3),
        main="Products by Category (Stacked)",
        xlab="Products",
        ylab="Quantity",
        legend.text=rownames(stack_data))

# 3. Scatter Plot
plot(price, qty,
     pch=19,
     col="red",
     xlab="Price ($)",
     ylab="Quantity Available",
     main="Price vs Quantity")
