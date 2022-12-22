myfunc.code_wrapper <- function (string) {
  paste("`", string, "`", sep = "")
}

# Define the min-max scaling function
myfunc.minmax_transform <- function(x) {
  x_min <- min(x)
  x_max <- max(x)
  x_scaled <- (x - x_min) / (x_max - x_min)
  return(x_scaled)
}

# Define the inverse min-max scaling function
myfunc.minmax_inverse <- function(x, original_min, original_max) {
  x_original <- x * (original_max - original_min) + (original_min)
  return(x_original)
}