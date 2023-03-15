# Q1 A car hire has two cars which it hires out day by day.
#The number of demands for a car on each day is distributed
#as a poisson distribution with mean 1.5 . calculate the proportion
#of days (i) on which there is no demand (ii) on which demand is refused.
mean <- 1.5
no_demand <- dpois(0, mean)
prop_no_demand <- no_demand
prob_demand_refused <- ppois(2, mean)
prop_demand_refused <- prob_demand_refused - no_demand
cat("Proportion of days with no demand:", prop_no_demand, "\n")
cat("Proportion of days when demand is refused:", prop_demand_refused, "\n")


#Q2 The probability that an individual suffers a bad reaction from an Injection 
#is 0.001. Determine the probability that out of 2000 individuals 
#(a) three (b) more than two will suffer the reaction.

#(i) Using inbuilt function:
lambda <- 2000 * 0.001
x1 <- 3
prob1 <- dpois(x1, lambda)
cat("The probability that three individuals will suffer the reaction is",
prob1, "\n")
x2 <- 3
prob2 <- 1 - ppois(x2-1, lambda)
cat("The probability that more than two individuals will suffer the reaction
is", round(prob2, 4), "\n")

#(ii) using formula:
k <- 3
prob_3 <- ((lambda ^ k) * exp(-lambda)) / factorial(k)
cat(" Required probabilty: ", prob_3, "\n")

#Q3 Assume a a ball from the driving range next door lands in your yard at an average
#rate of 3 balls per hour during the day. What is the probability that 10 or fewer golf
#balls will land in your yard during the afternoon, assuming the afternoon is 5 hours
#long?

lambda3 <- 15
x <- 0:10
prob <- dpois(x, lambda3)
p <- sum(prob)
cat("The required probability is: ", p, "\n")

# Q4 if a bird flies overhead at an average rate of 1 every 4 hours.
#What is the probability that at least one bird will fly overhead in the next hour?
lambda4 <- 1 / 4
prob <- 1 - ppois(0, lambda4)
cat("The probability of at least one bird flying overhead in the next hour is",
prob, "\n")
