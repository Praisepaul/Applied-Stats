# Drawing a Pie Chart

marks <- c(50, 48, 35, 34, 41)
names <- c("Praise", "Akshitha", "Sharath", "Siddarth", "Rupsa")
pie(marks, names, radius = 0.6, main = "Marks of Students in Applied Stats",
    col = rainbow(length(marks)), clockwise = TRUE, border = "#ff0000")