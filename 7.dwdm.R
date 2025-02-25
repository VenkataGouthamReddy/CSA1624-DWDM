# Number of pencils in each box
pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)

# Calculate mean
mean_pencils <- mean(pencils)

# Calculate median
median_pencils <- median(pencils)

# Calculate mode (function to find mode)
find_mode <- function(x) {
  unique_x <- unique(x)
  tabulate_x <- tabulate(match(x, unique_x))
  mode_x <- unique_x[tabulate_x == max(tabulate_x)]
  return(mode_x)
}

mode_pencils <- find_mode(pencils)

# Output results
cat("Mean of pencils:", mean_pencils, "\n")
cat("Median of pencils:", median_pencils, "\n")
cat("Mode of pencils:", mode_pencils, "\n")
