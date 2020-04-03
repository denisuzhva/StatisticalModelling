### 5.2-1 

p <- 0.29
nSamples <- 83
pHat <- 17

z <- (pHat - p*nSamples) / (sqrt(nSamples * p * (1 - p)))
print(z)

### 1 - alpha / 2 = 1 - 0.025 = 0.975
zCrit <- qnorm(0.975, mean=0, sd=1, lower.tail = TRUE, log.p = FALSE)
print(zCrit)

### z = -1.710221  ->  H0 is accepted (mu = 29%)
