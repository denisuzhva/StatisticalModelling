#########################
### Shapiro Wilk test ###
#########################



## Sample the samples
nSamples <- 50
mean = 0
sd = 1
xVal <- rnorm(nSamples, mean, sd)


## Shapiro-Wilk test
shapiro.test(xVal)
