#Assume a coin is weighted so that it comes up heads 60% of the time.
# What is the probability that you will obtain 25 or more heads after 50 flips.
k <- 25
p <- 0.6
n <- 50
prob <- 1 - pbinom(25, 50, 0.6)
print(c("The probability is: ", prob))

# Suppose widgits produced at ACME widgit work have probability 0.005 of being
# defective. Suppose widgits are shipped in cartoons containing 25 widgits.
# What is the probability that a randomly chosen cartoon contains exactly one defective widgit?

p1 <- 0.005
k1 <- 1
n1 <- 25
prob1 <- dbinom(1, 25, 0.005)
print(c("The probability is: ", prob1))

# If 10% of the screws produced by an automatic machine are defective, find the probability
# that out of 20 screws selected at random, there are: 
# i) exactly 2 defective
p2 <- 0.1
k2 <- 2
n2 <- 20

prob2a <- dbinom(2, 20, 0.1)
print(c("The probability is: ", prob2a))

# ii) At least 2 defectives

prob2b <- 1 - dbinom(2, 20, 0.1)
print(c("The probability is: ", prob2b))

# iii) Between 1 and 3 defectives

prob2c <- pbinom(3, 20, 0.1)
print(c("The probability is: ", prob2c))