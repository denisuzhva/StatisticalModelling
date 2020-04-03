#######################################################
### Gamma distribution with Lambda = 8, Alpha = 0.5 ###
#######################################################



## Sample the samples
nSamples <- 10000
lambda = 8
alpha = 0.5
xVal <- rgamma(nSamples, shape=lambda, rate=alpha)


## Make a histogram
png("gamma_hist.png", height = 800, width = 600)
xHist <- hist(xVal, breaks=20)


## Calculate characteristics
xA1 <- mean(xVal) # mean
xM2 <- mean((xVal - xA1)^2) # biased sample variance
xS2 <- nSamples * xM2 / (nSamples - 1) # unbiased sample variance
xS22 <- var(xVal) # unbiased sample variance
xSigma2 <- sqrt(xS22)
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

print(paste0('Mean: ', xA1))
print(paste0('Biased sample variance: ', xM2))
print(paste0('Unbiased sample variance: ', xS2))
print(paste0('Unbiased sample variance 2: ', xS22))
print(paste0('Standard deviation: ', xSigma))
print(paste0('Standard deviation 2: ', xSigma2))
print(paste0('Error of mean: ', xSem))
print(paste0('Median: ', xMed))
print(paste0('Max value: ', xMax))
print(paste0('Min value: ', xMin))
cat('Quantiles: ', xQuant, '\n')
print(paste0('Interquantile range: ', xIqr))
print(paste0('Skewness: ', xGamma1))
print(paste0('Kurtosis: ', xGamma2))


