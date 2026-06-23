# Load libraries
library(ggplot2)
library(dplyr)
library(tidyr)

# -----------------------------
# Dataset: Monthly Product Sales
# -----------------------------
sales_data <- data.frame(
  Product_ID = c(1, 2, 3),
  Product_Name = c("Product A", "Product B", "Product C"),
  January = c(2000, 1500, 1200),
  February = c(2200, 1800, 1400),
  March = c(2400, 1600, 1100)
)

# Reshape data for plotting
sales_long <- sales_data %>%
  pivot_longer(
    cols = January:March,
    names_to = "Month",
    values_to = "Sales"
  )

# -----------------------------
# Grouped Bar Chart
# -----------------------------
ggplot(sales_long,
       aes(x = Month,
           y = Sales,
           fill = Product_Name)) +
  geom_bar(stat = "identity",
           position = "dodge") +
  scale_fill_manual(values = c("black",
                               "darkgrey",
                               "lightgray")) +
  labs(title = "Monthly Product Sales",
       x = "Month",
       y = "Sales") +
  theme_minimal()

# -----------------------------
# Sales Trend Line Chart
# (Same style as screenshot)
# -----------------------------
months <- c(10, 20, 30, 40)

productA <- c(20, 15, 10, 5)
productB <- c(18, 14, 11, 7)
productC <- c(16, 12, 10, 4)

plot(months, productA,
     type = "l",
     lwd = 2,
     col = "#D3D3D3",
     ylim = c(4, 20),
     xlab = "Months",
     ylab = "Sales",
     main = "Sales Trend")

lines(months, productB,
      lwd = 2,
      col = "#C0C0C0")

lines(months, productC,
      lwd = 2,
      col = "#A9A9A9")