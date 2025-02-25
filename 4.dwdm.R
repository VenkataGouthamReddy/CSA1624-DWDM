#4
data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)
smooth_by_bin_mean <- function(data, bin_size) {
  bins <- split(data, ceiling(seq_along(data) / bin_size))
  smoothed <- unlist(lapply(bins, function(bin) rep(mean(bin), length(bin))))
  return(smoothed)
}
smooth_by_bin_median <- function(data, bin_size) {
  bins <- split(data, ceiling(seq_along(data) / bin_size))
  smoothed <- unlist(lapply(bins, function(bin) rep(median(bin), length(bin))))
  return(smoothed)
}
smooth_by_bin_boundaries <- function(data, bin_size) {
  bins <- split(data, ceiling(seq_along(data) / bin_size))
  smoothed <- unlist(lapply(bins, function(bin) {
    lower <- min(bin)
    upper <- max(bin)
    sapply(bin, function(x) ifelse(abs(x - lower) < abs(x - upper), lower, upper))
  }))
  return(smoothed)
}
bin_size <- 4
smoothed_mean <- smooth_by_bin_mean(data, bin_size)
smoothed_median <- smooth_by_bin_median(data, bin_size)
smoothed_boundaries <- smooth_by_bin_boundaries(data, bin_size)
cat("Original Data: ", data, "\n")
cat("Smoothed by Bin Mean: ", smoothed_mean, "\n")
cat("Smoothed by Bin Median: ", smoothed_median, "\n")
cat("Smoothed by Bin Boundaries: ", smoothed_boundaries, "\n")
