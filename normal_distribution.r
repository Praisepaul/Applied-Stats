#A soft-drink machine is regulated so that it dis- charges an average of 200 milliliters per cup. 
#If the amount of drink is normally distributed with a stan- dard deviation equal to 15 milliliters,
#(a) what fraction of the cups will contain more than 224 milliliters?
#(b) what is the probability that a cup contains between 191 and 209 milliliters?

mean <- 200
sd <- 15

#(a)
z <- (224 - 200) / 15

p <- 1 - pnorm(z)
cat("Fraction of cups containing more than 224 milliliters:", round(p, 4), "\n")

# (b)

z1 <- (191 - 200) / 15
z2 <- (209 - 200) / 15

p1 <- pnorm(z1)
p2 <- pnorm(z2)

area <- p2 - p1
cat("Probability of a cup containing between 191 and 209 milliliters:", round(area, 4), "\n")


#The loaves of rye bread distributed to local stores by a certain bakery have an average 
#length of 30 centimeters and a standard deviation of 2 centimeters. Assuming that the 
#lengths are normally distributed, what percentage of the loaves are
#(a) longer than 31.7 centimeters?
#(b) between 29.3 and 33.5 centimeters in length?
#(c) shorter than 25.5 centimeters?

mean <- 30
sd <- 2

# (a)
z <- (31.7 - mean) / sd
p <- 1 - pnorm(z)
pct <- p * 100

cat("The percentage of loaves longer than 31.7 centimeters is:", round(pct, 2), "%\n")


#(b)
z1 <- (29.3 - 30) / 2
z2 <- (33.5 - 30) / 2

p1 <- pnorm(z1)
p2 <- pnorm(z2)
p <- p2 - p1
pct <- p * 100


cat("The percentage of loaves between 29.3 and 33.5 centimeters in length is:", round(pct, 2), "%\n")

#(c)

z <- (25.5 - 30) / 2

p <- pnorm(z)
pct <- p * 100

cat("The percentage of loaves shorter than 25.5 centimeters is:", round(pct, 2), "%\n")


#IQ is a normal distribution of mean of 100 and standard deviation of 15
#a) What percentage of people have an IQ<125?
#b) What percentage of people have IQ>110?
#c) What percentage of people have 110<IQ<125?

# (a)
z <- (125 - 100) / 15
p <- pnorm(z)
percent <- p * 100

print(paste(round(percent, 2), "% of people have an IQ less than 125."))


#(b)
z <- (110 - 100) / 15
p <- 1 - pnorm(z)
percent <- p * 100

print(paste(round(percent, 2), "% of people have an IQ greater than 110."))

# (c)
z1 <- (110 - 100) / 15
z2 <- (125 - 100) / 15

p <- pnorm(z2) - pnorm(z1)
percent <- p * 100

print(paste(round(percent, 2), "% of people have an IQ between 110 and 125."))