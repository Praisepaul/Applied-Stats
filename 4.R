# Discrete Data
x <- c(20, 30, 40, 50, 60, 70, 80)

f <- c(5, 3, 1, 2, 3, 2, 1)

y <- rep(x, f)

mean <- sum(y) / length(y)

print(mean)

print(median(y))


#Continuos Data
    #MEAN
mid <- seq(147.5, 182.5, 5)

f <- c(4, 6, 28, 58, 64, 30, 5, 5)

fr.distr <- data.frame(mid, f)

mean <- sum(mid * f) / sum(f)

print(c("The Mean is: ", mean))
    #MEDIAN
midx <- seq(147.5, 182.5, 5)

frequency <- c(4, 6, 28, 58, 64, 30, 5, 5)

fr.dist <- data.frame(midx, frequency)

cl <- cumsum(frequency)

n <- sum(frequency)

ml <- min(which(cl >= n / 2))

h <- 5

f <- frequency[ml]

c <- cl[ml - 1]

l <- midx[ml] - h / 2

median <- l + (((n / 2) - c) / f) * h

print(c("The Median is: ", median))

    #MODE
m <- which(frequency == max(frequency))

fm <- frequency[m]

f1 <- frequency[m - 1]

f2 <- frequency[m + 1]

l <- midx[m] - h / 2

mode <- l + ((fm - f1) / (2 * fm - f1 - f2)) * h

print(c("The Mode is: ", mode))