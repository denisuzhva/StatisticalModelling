### 5.2-9

hypMean <- 16
experData <- c(20, 24, 18, 16, 16, 19, 21, 23)

experMean <- mean(experData)
experSd <- sd(experData)
nSamples <- length(experData)

t <- (experMean - hypMean) / (experSd / sqrt(nSamples))
print(nSamples)
print(t)

### df = r - k - 1 = 8 - 2 - 1 = 5
tCrit <- qt(0.975, nSamples-2-1, ncp=0, lower.tail=TRUE, log.p=FALSE)
print(tCrit)

### t = 3.448613  ->  H0 is rejected (mu is not equal to 16)
