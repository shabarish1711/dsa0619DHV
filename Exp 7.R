# Sample Data
employee_data <- data.frame(
  EmployeeID = c(1, 2, 3),
  Score = c(85, 92, 78),
  YearsOfService = c(1, 5, 7),
  PerformanceScore = c(85, 60, 5),
  Department = c("Sales", "Marketing", "HR")
)

# ── Graph 1: Employee Performance (Bar Chart) ──────────────────────────────
barplot(
  employee_data$Score,
  names.arg = employee_data$EmployeeID,
  xlab = "Employee ID",
  ylab = "Score",
  main = "Employee Performance",
  col = "lightblue",
  border = "white",
  ylim = c(0, max(employee_data$Score) + 10)
)

# ── Graph 2: Years vs Performance (Scatter Plot) ───────────────────────────
plot(
  employee_data$YearsOfService,
  employee_data$PerformanceScore,
  xlab = "Years of Service",
  ylab = "Performance Score",
  main = "Years vs Performance",
  pch = 16,
  col = "black",
  xlim = c(0, max(employee_data$YearsOfService) + 1),
  ylim = c(0, max(employee_data$PerformanceScore) + 10)
)

# ── Graph 3: Performance Distribution (Pie Chart) ─────────────────────────
pie(
  employee_data$Score,
  labels = employee_data$Department,
  main = "Performance Distribution",
  col = c("white", "lightblue", "yellow")
)