# Sample Data
survey_data <- data.frame(
  Option = c("A", "B", "C"),
  Count  = c(25, 18, 12)
)

# ── Graph 1: Responses for Question 1 (Green Bar Chart) ───────────────────
barplot(
  survey_data$Count,
  names.arg = survey_data$Option,
  xlab      = "Options",
  ylab      = "Count",
  main      = "Responses for Question 1",
  col       = "#00FF00",        # bright green
  border    = "white",
  ylim      = c(0, max(survey_data$Count) + 5)
)

# ── Graph 2: Stacked Bar Chart (Yellow, Blue, Red) ─────────────────────────
stacked_data <- matrix(
  c(10, 10, 5,    # Red   (bottom)
    10, 10, 5,    # Blue  (middle)
    5,  0,  0),   # Yellow (top)
  nrow = 3, byrow = TRUE
)

colnames(stacked_data) <- c("A", "B", "C")
rownames(stacked_data) <- c("1", "2", "3")

barplot(
  stacked_data,
  col     = c("red", "blue", "yellow"),   # bottom to top
  border  = "white",
  main    = "Stacked Responses for Q1",
  xlab    = "Options",
  ylab    = "Count",
  legend.text = rownames(stacked_data),
  args.legend = list(x = "topright", bty = "n"),
  ylim    = c(0, max(colSums(stacked_data)) + 5)
)