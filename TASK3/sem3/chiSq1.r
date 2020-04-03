### 6.2-2

experData <- c(28, 32, 15, 14, 38, 43, 19)
nSamples <- length(experData)
experMean <- mean(experData)

chiSquare <- sum((experData - experMean)^2 / experMean)
print(chiSquare)

### df = r - k - 1 = 7 - 1 = 6 
chiSquareCritical <- qchisq(0.95, nSamples-1, ncp=0, lower.tail=TRUE, log.p=FALSE) 
print(chiSquareCritical)

### chiSquare = 28.88889  ->  H0 is rejected (the dataset is not uniformly distributed)
