#######################################################
### Gamma distribution with Lambda = 8, Alpha = 0.5 ###
#######################################################



## Sample the samples
nSamples <- 10000
lambda = 8
alpha = 0.5
xVal <- rgamma(nSamples, shape=lambda, rate=alpha)


## Calculate characteristics
xA1 <- mean(xVal) # mean
xM2 <- mean((xVal - xA1)^2) # biased sample variance
xS2 <- nSamples * xM2 / (nSamples - 1) # unbiased sample variance
xSigma <- sd(xVal) # standard deviation (sqrt(m2))
xSem <- xSigma / sqrt(nSamples) # error of mean
xMed <- median(xVal) # median
xMax <- max(xVal) # max value
xMin <- min(xVal) # min value
xQuant <- quantile(xVal) # quantiles
xIqr <- IQR(xVal) # interquartile range
xM3 <- mean((xVal - xA1)^3) # third central moment
xGamma1 <- xM3 / xSigma^3 # skewness
xM4 <- mean((xVal - xA1)^4) # forth central moment
xGamma2 <- xM4 / xSigma^4 # kurtosis


## Parameter estimation (moment method)
print('################################')
# E[x] = lambda / alpha; D[x] = lambda^2 / alpha
alphaEstMM <- xA1 / xM2
lambdaEstMM <- xA1^2 / xM2
print(paste0('Estimated alpha (MM): ', alphaEstMM))
print(paste0('Estimated lambda (MM): ', lambdaEstMM))


## Pearson's chi square test
print('################################')
rNum <- 15
stepSize <- 3
rSeq <- seq(1, rNum-1)
xCountsVect <- vector()
for (i in rSeq)
{
	desiredVals <- xVal[xVal > (stepSize * (i - 1))]
	desiredVals <- desiredVals[desiredVals < (stepSize * i)]
	xCountsVect <- c(xCountsVect, length(desiredVals))
}
desiredVals <- xVal[xVal > stepSize * rNum-1]
xCountsVect <- c(xCountsVect, length(desiredVals))
rSeq <- c(0, rSeq)

gammaCDFOnBreaks <- pgamma(stepSize * rSeq, lambdaEstMM, alphaEstMM)
gammaCDFOnBreaks <- c(gammaCDFOnBreaks, 1)
#print(gammaCDFOnBreaks)
pVect = gammaCDFOnBreaks[2:(rNum+1)] - gammaCDFOnBreaks[1:rNum]
#print(xCountsVect)
#print(round(nSamples * pVect))
numer = (xCountsVect - nSamples * pVect)^2
denom = nSamples * pVect
chiSquare = sum(numer / denom)
print(paste0('Chi square test: ', chiSquare))
