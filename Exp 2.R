# Customer Age Data
ages <- c(25,30,35,28,40)
scores <- c(4,5,3,4,5)

# Histogram (Age Distribution)
hist(ages,
     col = "lightblue",
     main = "Customer Age Distribution",
     xlab = "Age")

# Pie Chart (Satisfaction Scores)
pie(table(scores),
    main = "Customer Satisfaction Scores",
    col = rainbow(length(unique(scores))))


stack_data <- matrix(c(20,20,20,
                       20,20,20),
                     nrow = 2,
                     byrow = TRUE)

barplot(stack_data,
        beside = FALSE,
        col = c("red", "blue"),
        main = "Satisfaction by Age Group",
        ylim = c(0, 40),
        ylab = "",
        xlab = "",
        border = "black",
        legend.text = c("Score 3-4", "Score 5"),
        args.legend = list(x = "topright"))