# Sample Data
inventory_data <- data.frame(
  Product = c("A", "B", "C", "D"),
  Units   = c(200, 150, 250, 175)
)

# ── Graph 1: Inventory Levels (Bar Chart) ──────────────────────────────────
barplot(
  inventory_data$Units,
  names.arg = inventory_data$Product,
  xlab      = "Product",
  ylab      = "Units",
  main      = "Inventory Levels",
  col       = "orange",
  border    = "white",
  ylim      = c(0, max(inventory_data$Units) + 30)
)

# ── Graph 2: Inventory Distribution (Pie Chart) ────────────────────────────
pie(
  inventory_data$Units,
  labels = inventory_data$Product,
  main   = "Inventory Distribution",
  col    = c("yellow", "lightblue", "white", "blue")
)