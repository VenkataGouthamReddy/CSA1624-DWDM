#1
# Age intervals and frequencies
intervals <- c(1, 5, 15, 20, 50, 80, 110)
frequencies <- c(200, 450, 300, 1500, 700, 44)

# Total frequency
N <- sum(frequencies)

# Cumulative frequencies
cumulative_frequencies <- cumsum(frequencies)

# Finding the median class
median_class_index <- which(cumulative_frequencies >= N / 2)[1]
median_class <- intervals[median_class_index]
L <- ifelse(median_class_index == 1, 0, intervals[median_class_index - 1])
CF <- ifelse(median_class_index == 1, 0, cumulative_frequencies[median_class_index - 1])
f <- frequencies[median_class_index]
w <- intervals[median_class_index + 1] - intervals[median_class_index]

# Calculating the median
median <- L + ((N / 2 - CF) / f) * w
print(median)
