# Speed data
speeds <- c(78.3, 81.8, 82, 74.2, 83.4, 84.5, 82.9, 77.5, 80.9, 70.6)

# Calculate Interquartile Range (IQR)
iqr_speeds <- IQR(speeds)

# Calculate Standard Deviation
sd_speeds <- sd(speeds)

# Output results
cat("Interquartile Range (IQR) of speeds:", iqr_speeds, "\n")
cat("Standard Deviation of speeds:", sd_speeds, "\n")
