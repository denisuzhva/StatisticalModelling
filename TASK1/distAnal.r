## Gamma distribution with Lambda = 4, Alpha = 1


# Sample the samples
nSamples <- 1000
lambda = 4
alpha = 1
xVal <- rgamma(nSamples, lambda, alpha)

# Make a histogram
png("gamma_hist.png", height = 800, width = 600)
hist(xVal, breaks=20)

# Calculate characteristics
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
