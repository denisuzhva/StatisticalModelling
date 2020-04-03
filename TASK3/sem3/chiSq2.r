### 6.2-4

hypoPerc <- c(0.44, 0.42, 0.1, 0.04)
experData <- c(58, 65, 55, 22)
nSamples <- length(experData)
nPartic <- sum(experData)

hypoData <- hypoPerc * nPartic

chiSquare <- sum((experData - hypoData)^2 / hypoData)
print(chiSquare)

### m = r - k - 1 = 4 - 1 = 3
chiSquareCritical <- qchisq(0.9, nSamples-1, ncp=0, lower.tail=TRUE, log.p=FALSE) 
print(chiSquareCritical)

### chiSquare = 100.2749  ->  H0 is accepted (the dataset does not obey the hypothetical percentage)
