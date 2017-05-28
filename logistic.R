args <- commandArgs(TRUE)
file <- args[1]
r <- as.double(args[1])
x <- as.double(args[2])
n <- as.integer(args[3])
logistic <- function(r,x) {r*x*(1.0-x)}
for (i in 1:n){ x <- logistic(r, x)
print(x)}
