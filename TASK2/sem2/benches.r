N = 20
n = 9
p1 = 5 / 20
p2 = 6 / 20
p3 = 9 / 20

X <- t(as.matrix(expand.grid(0:n, 0:n)))
X <- X[, colSums(X) <= n]
X <- rbind(X, n - colSums(X))
dimnames(X) <- list(letters[1:3])
mul <- X[1,] * X[2,]
mul <- mul * X[3,]
mul_nonzero_idx = which(mul!=0, arr.ind=T)
Y <- X[, mul_nonzero_idx]

result <- round(apply(Y, 2, function(x) dmultinom(x, prob=c(p1, p2, p3))), 4)

print(sum(result))
