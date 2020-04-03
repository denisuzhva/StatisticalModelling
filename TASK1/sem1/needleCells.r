a <- 5.0
l <- 2.0

N <- 10000
centX <- a/2 * runif(N)
centY <- a/2 * runif(N)
alpha <- runif(N, min=0, max=pi/2)

if (l < a) {
	ifx <- centX < l*cos(alpha)/2 
	ify <- centY < l*sin(alpha)/2
	p <- mean(ifx | ify)
	print(p)
	newPi <- l^2 / (a^2 * p)
	print(newPi)
}
