library(risaac)

### Testing the sampling distributions
#   using allEQ function from Bessal package.

cat("Comparing the random number generator to runif()")
for(n in 1:50) {
  x <- ks.test(runif(10000), isaacUnif(10000))
  cat("test ", n, "p.value ", x$p.value,  "\n")
  if(x$p.value < 0.001) {
    write("WARNING: test indicates distribution different from uniform!!", stderr())
  }
}; cat("\n")
