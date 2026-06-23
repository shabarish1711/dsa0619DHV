# -----------------------------
# Monthly Sales Data
# -----------------------------
sales <- c(15000, 18000, 22000, 20000, 23000)
months <- c("Jan","Feb","Mar","Apr","May")

# -----------------------------
# 1. Bar chart styled like the photo
# -----------------------------
barplot(
  sales,
  names.arg = months,
  col = "lightgreen",          # Light green bars
  main = "Monthly Sales",      # Title
  xlab = "Month",              # X-axis label
  ylab = "Sales",              # Y-axis label
  border = NA                  # No border around bars
)

# -----------------------------
# 2. Line chart for monthly sales
# -----------------------------
plot(
  sales,
  type = "o",                  # Line with points
  col = "blue",
  xaxt = "n",                  # Custom x-axis
  xlab = "Month",
  ylab = "Sales",
  main = "Monthly Sales Trend"
)
axis(1, at = 1:5, labels = months)  # Add month labels

# -----------------------------
# 3. Area chart for cumulative sales
# -----------------------------
# Interaction dataset
interaction_data <- data.frame(
  Date = rep(website_data$Date, each = 3),
  Interaction = rep(c("Likes","Shares","Comments"), times = 5),
  Count = c(200,100,50, 220,120,60, 180,90,40, 250,130,70, 300,150,80)
)

# Area chart with light blue fill
ggplot(interaction_data, aes(x = Date, y = Count, group = Interaction)) +
  geom_area(fill = "lightblue", alpha = 0.6) +
  labs(title = "User Interactions Over Time",
       x = "Date", y = "Count") +
  theme_minimal()
