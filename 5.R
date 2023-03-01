# Drawing a Pie Chart

marks <- c(50, 48, 35, 34, 41)
names <- c("Praise", "Akshitha", "Sharath", "Siddarth", "Rupsa")
pie(marks, names, radius = 0.6, main = "Marks of Students in Applied Stats",
    col = rainbow(length(marks)), clockwise = TRUE, border = "#ff0000")

barplot(marks, ylab = "Marks", xlab = "Names", main = "Marks of Students",
        names.arg = names, col = rainbow(length(marks)))

v <- c(39, 33, 21, 15, 46, 31, 42, 50, 49, 37, 49, 50, 43.5, 40.5, 9)
 
 # Draw a Histogram showing the marks obatined (out of 50) by 15 students in the
 # CAT-1 examination of Applied Stats course.
hist(v, xlab = "Marks Obtained", ylab = "No. Of Students", col = "#00c0ca",
    border = "black", xlim = c(0, 50),
    ylim = c(0, 15), breaks = 5)

# Draw a box plot displaying the average rainfall(in cm) of Guwahati for the
# months of May, June, July, AUgust and September 2022
month <- c("May", "June", "July", "August", "September")
rainfall <- c(100, 150, 200, 220, 180)
barplot(rainfall, xlab = " Month",
        ylab = "Average Rainfall (in cm)",
        main = "Box Plot of Average Rainfall in Guwahati in 2022",
        col = c("red", "orange", "#72e872", "#008500", "yellow"),
        names.arg = month, horiz = TRUE)

# Using plot() depict the marks obtained by students in FAT in 6 subjects.

x <- c(1, 2, 3, 4, 5, 6)
y <- c(45, 47, 50, 50, 43, 40)
plot(x, y, main = "Marks obtained in FAT", xlab = "Subjects",
    ylab = "Marks Obtained", type = 'o')