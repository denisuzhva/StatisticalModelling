a <- 5
r <- 2

n <- 100000
centX <- a * runif(n)
centY <- a * runif(n)

ifx <- ((centX < r) | (centX > (a-r))) 
ify <- ((centY < r) | (centY < (a-r)))
p <- mean(ifx | ify)

print(p)
