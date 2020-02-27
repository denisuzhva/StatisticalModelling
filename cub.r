n_experiments <- 100
result <- 0
exper <- 0

while (exper <= n_experiments) 
{
	n_samples <- 100
	samples <- runif(n_samples)
	counter <- 1
	for (sample in samples) 
	{
		if (sample <= 1/6) 
		{
			result = result + counter
			break
		}
		else
		{
			counter = counter + 1
		}
	}
	exper = exper + 1
}

result = result / n_experiments
print(result)

