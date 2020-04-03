### 6.1-6

beforeData <- c(12, 15, 6, 20, 2, 5, 9, 16, 14, 17, 8, 5)
afterData <- c(11, 13, 3, 21, 5, 7, 6, 10, 9, 72, 4, 1)

nSamples <- length(beforeData)
df <- nSamples - 1

dArray <- beforeData - afterData
dSqArray <- dArray^2

dOverline <- sum(dArray) / nSamples
sD <- sqrt((sum(dSqArray - sum(dArray)^2/nSamples))/ df)

t <- dOverline / (sD / sqrt(nSamples))
print(df)
print(t)

### df = 11
tCrit <- qt(0.975, df, ncp=0, lower.tail=TRUE, log.p=FALSE)
print(tCrit)

### t = -0.6951115  ->  H0 is rejected (the movie did not affect the people)
