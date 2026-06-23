# Employee Data
years <- c(5,3,7,4,2)
perf <- c(85,92,78,90,76)
dept <- c("Sales","HR","Marketing","Sales","HR")

# Line Chart
plot(years, perf,
     type = "o",
     col = "blue",
     xlab = "Years of Service",
     ylab = "Performance Score",
     main = "Performance Trend")

# Bar Graph (Like Screenshot)
dept_names <- c("Sales", "HR", "Marketing", "Sales", "HR")
dept_perf <- c(8, 9, 7.5, 8.8, 7.2)

barplot(dept_perf,
        names.arg = dept_names,
        col = "orange",
        main = "Performance by Department",
        ylim = c(0, 10))

# Scatter Plot
plot(years, perf,
     pch = 19,
     col = "red",
     xlab = "Years of Service",
     ylab = "Performance Score",
     main = "Service vs Performance")