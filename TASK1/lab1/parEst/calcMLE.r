#######################################################
### Gamma distribution with Lambda = 8, Alpha = 0.5 ###
#######################################################



mu <- exp(2.769201)
lambdaEstMLE <- exp(2.060237)
alphaEstMLE <- lambdaEstMLE/mu
print(paste0('Estimated alpha (MLE): ', alphaEstMLE))
print(paste0('Estimated lambda (MLE): ', lambdaEstMLE))
