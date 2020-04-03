a <- 5.0
l <- 8.0

n <- 10000
centX <- a/2 * runif(n)
alpha <- runif(n, min=0, max=pi/2)

if (l < a) {
	ifa <- (centX <= l*cos(alpha) / 2) 
	p <- mean(ifa)
	print(p)
	newPi <- 2 * l / (p * a)
	print(newPi)
} else {
	minArr <- vector()
	for (i in seq(1, n))
	{
		minArr <- c(minArr, min(c(l*cos(alpha[i])/2, a/2)))
	}
	ifa <- (centX <= minArr)
	p <- mean(ifa)
	print(p)
	newPi <- 2 * l / ((p-1) * a) - 2 * (sqrt(l^2-a^2) + a*asin(a/l)) / ((p-1) * a)
	print(newPi)
}


