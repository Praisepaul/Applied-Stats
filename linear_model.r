#1) In a certain type of metal test specimen, the normal stress on a specimen is known to be 
#functionally related to the shear resistance. The following is a set of coded experimental data on the two variables:
#a) Estimate the shear resistance for a normal stress of 24.5.
#b) Plot the data; does it appear that a simple linear regression will be a suitable model?

#Method 1: Using regression correlation coefficients.
normal_stress <- c(26.8, 25.4, 28.9, 23.6, 27.7, 23.9, 24.7, 28.1, 26.9, 27.4, 22.6, 25.6)
shear_resistance <- c(26.5, 27.3, 24.2, 27.1, 23.6, 25.9, 26.3, 22.5, 21.7, 21.4, 25.8, 24.9)

mean_normal_stress <- mean(normal_stress)
sd_normal_stress <- sd(normal_stress)
mean_shear_resistance <- mean(shear_resistance)
sd_shear_resistance <- sd(shear_resistance)

r <- cor(normal_stress, shear_resistance)

b1 <- r * (sd_shear_resistance / sd_normal_stress)
b0 <- mean_shear_resistance - b1 * mean_normal_stress

normal_stress_new <- 24.5
shear_resistance_new <- b0 + b1 * normal_stress_new
cat("Y intercept is: ", b0, " and Slope of r is: ", b1, "\n")
cat("Estimated shear resistance for a normal stress of ", normal_stress_new, " is ", shear_resistance_new, "\n")

plot(normal_stress, shear_resistance, xlab="Normal Stress", ylab="Shear Resistance", main="Scatterplot of Normal Stress and Shear Resistance")

abline(b0, b1, col="red")

model <- lm(shear_resistance ~ normal_stress)
summary(model)

#Method 2: Using Linear Model Fitting

df = data.frame(x = normal_stress, y = shear_resistance)

linear_model = lm(y ~ x, data = df)

print(linear_model)
summary(linear_model)

# 2) The data on incomes and food expenditures of the seven households given in the following table
#Obtain the true regression line equation. If income of a household is 59 then what will be the expected food expenditure?

# Method 1:

income <- c(55, 83, 38, 61, 33, 49, 67)
food_expenditure <- c(14, 24, 13, 16, 9, 15, 17)

mean_income <- mean(income)
sd_income <- sd(income)
mean_food_expenditure <- mean(food_expenditure)
sd_food_expenditure <- sd(food_expenditure)

r <- cor(income, food_expenditure)

b1 <- r * (sd_food_expenditure / sd_income)
b0 <- mean_food_expenditure - b1 * mean_income

cat("Y intercept is: ", b0, " and Slope of r is: ", b1, "\n")

income_new <- 59
food_expenditure_new <- b0 + b1 * income_new
cat("Expected food expenditure for an income of ", income_new, " is ", food_expenditure_new, "\n")

plot(income, food_expenditure, xlab="Income", ylab="Food Expenditure", main="Scatterplot of Income vs Food Expenditure")
abline(model, col = "red")

model <- lm(food_expenditure ~ income)
summary(model)

#Method 2: Using Linear Model Fitting

df = data.frame(x = income, y = food_expenditure)

linear_model = lm(y ~ x, data = df)

print(linear_model)
summary(linear_model)