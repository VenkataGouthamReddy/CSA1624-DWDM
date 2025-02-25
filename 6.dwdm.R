# Age data (example data for context, not used in normalization)
ages <- c(23, 25, 28, 30, 32, 35, 37, 40, 42, 45, 48, 50, 52, 55, 58, 60, 63, 65)
# Value to be normalized
age_value <- 35
# (i) Min-Max Normalization
min_age <- min(ages)
max_age <- max(ages)
min_max_normalized_age <- (age_value - min_age) / (max_age - min_age)

# (ii) Z-Score Normalization
mean_age <- mean(ages)
sd_age <- 12.94
z_score_normalized_age <- (age_value - mean_age) / sd_age

# (iii) Decimal Scaling Normalization
max_absolute_age <- max(abs(ages))
j <- nchar(as.character(max_absolute_age)) - 1
decimal_scaled_age <- age_value / 10^j

# Output results
cat("Min-Max Normalized Age: ", min_max_normalized_age, "\n")
cat("Z-Score Normalized Age: ", z_score_normalized_age, "\n")
cat("Decimal Scaled Age: ", decimal_scaled_age, "\n")
