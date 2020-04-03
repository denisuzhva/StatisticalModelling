X <- t(as.matrix(expand.grid(0:4, 0:4)))
X <- X[, colSums(X) <= 4]
X <- rbind(X, 4 - colSums(X))
dimnames(X) <- list(letters[1:3])

fun <- (function(x){y = x^2})
Y <- apply(X, 2, fun)
print(Y)
