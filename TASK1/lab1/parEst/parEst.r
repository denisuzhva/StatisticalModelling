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
alphaEstMM <- xA1 / xS2
lambdaEstMM <- xA1^2 / xS2
print(paste0('Estimated alpha (MM): ', alphaEstMM))
print(paste0('Estimated lambda (MM): ', lambdaEstMM))


## Parameter estimation (maximum likelihood)
library(dglm)
fit <- dglm(xVal~1, family=Gamma(link="log"), mustart=mean(xVal))
summary(fit)



