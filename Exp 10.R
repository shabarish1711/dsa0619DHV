# ── Graph 1: Performance Distribution (Pie Chart) ─────────────────────────

dept_data <- data.frame(
  Department = c("Sales", "Marketing", "HR"),
  Score      = c(35, 25, 40)
)

pie(
  dept_data$Score,
  labels = dept_data$Department,
  main   = "Performance Distribution",
  col    = c("lightblue", "lightpink", "yellow"),
  border = "white"
)

# ── Graph 2: Stock Prices (Multi-Line Chart) ───────────────────────────────

# Date sequence
dates <- seq(as.Date("2021-01-01"), as.Date("2021-01-03"), by = "month")
dates <- c(as.Date("2021-01-01"), as.Date("2021-03-01"), as.Date("2021-06-01"))

stock_data <- data.frame(
  Date   = dates,
  StockA = c(25, 24, 27),   # grey line  - relatively flat
  StockB = c(20, 18, 22),   # green line - slight curve
  StockC = c(10,  8, 12)    # red line   - lowest, slight curve
)

# Set up plot area
plot(
  stock_data$Date, stock_data$StockA,
  type  = "l",
  col   = "grey40",
  lwd   = 1.5,
  xlab  = "Date",
  ylab  = "Price",
  main  = "Stock Prices",
  ylim  = c(0, max(stock_data$StockA) + 5),
  xaxt  = "n"   # custom x-axis
)

# Add Stock B and Stock C lines
lines(stock_data$Date, stock_data$StockB, col = "green3", lwd = 1.5)
lines(stock_data$Date, stock_data$StockC, col = "red",    lwd = 1.5)

# Custom x-axis labels matching image (Jan 01, Jan