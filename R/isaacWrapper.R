
isaacInt <- function
### Returns a vector of random integers.
(size=1 ##<< The number of integers to return.
 ) {
  try (
       result <- .C("isaac_int", as.integer(size),
                    output=integer(size), PACKAGE="risaac")
       )
  ### Returns a vector of Ints.
  return(result$output)
}

isaacUnif <- function
### Returns a vector of random uniform numbers between 0 and 1.
(size=1 ##<< The number of doubles to return.
 ) {
  try (
       result <- .C("isaac_uniform", as.integer(size),
                    output=numeric(size), PACKAGE="risaac")
       )
  ### Returns a vector of doubles.
  return(result$output)
}

