a <- 5
l <- 3

N <- 100000
cent_x <- a * runif(N)
cent_y <- a * runif(N)
alpha <- runif(N, min=0, max=pi/2)

mn <- mean(cent_x < l*cos(alpha))
print(mn)
new_pi <- 2 * l / (mn * a)
print(new_pi)
