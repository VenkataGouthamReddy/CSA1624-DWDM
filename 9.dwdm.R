# Given data
marks <- c(55, 60, 71, 13, 55, 65, 50, 55, 58, 59, 61, 63, 15, 17, 41, 73, 75)

# Equal-frequency binning (quartiles)
equal_freq_bins <- cut(marks, breaks = quantile(marks, probs = seq(0, 1, length.out = 4)), 
                       include.lowest = TRUE)

# Equal-width binning
equal_width_bins <- cut(marks, breaks = seq(min(marks), max(marks), length.out = 4), 
                        include.lowest = TRUE)

# Plot histograms
par(mfrow = c(1, 2))

# Equal-frequency histogram
hist(marks, breaks = quantile(marks, probs = seq(0, 1, length.out = 4)), 
     main = "Equal-Frequency Partitioning", 
     xlab = "Marks", 
     col = "lightblue", 
     border = "black")

# Equal-width histogram
hist(marks, breaks = seq(min(marks), max(marks), length.out = 4), 
     main = "Equal-Width Partitioning", 
     xlab = "Marks", 
     col = "lightgreen", 
     border = "black")

# Reset plotting layout
par(mfrow = c(1, 1))