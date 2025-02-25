#2
# Data
age <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

# Mean
mean_age <- mean(age)

# Median
median_age <- median(age)

# Mode
mode_age <- as.numeric(names(sort(table(age), decreasing=TRUE))[1])

# Midrange
midrange_age <- (min(age) + max(age)) / 2

# First Quartile (Q1)
Q1_age <- quantile(age, 0.25)

# Third Quartile (Q3)
Q3_age <- quantile(age, 0.75)

# Output
cat("Mean:", mean_age, "\n")
cat("Median:", median_age, "\n")
cat("Mode:", mode_age, "\n")
cat("Midrange:", midrange_age, "\n")
cat("First Quartile (Q1):", Q1_age, "\n")
cat("Third Quartile (Q3):", Q3_age, "\n")