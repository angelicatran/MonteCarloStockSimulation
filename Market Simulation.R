library(ggplot2)

# Parameters
S0 <- 150       
mu <- 0.05      
sigma <- 0.2    
days <- 252     
n_sim <- 1000   

# Conversions
mu_daily <- mu / days
sigma_daily <- sigma / sqrt(days)

# Path Simulation
set.seed(50)
S <- matrix(NA, nrow=days+1, ncol=n_sim)
S[1,] <- S0

for (i in 2:(days+1)) {
  Z <- rnorm(n_sim)
  S[i,] <- S[i-1,] * exp((mu_daily - 0.5*sigma_daily^2) + sigma_daily*Z)
}

# Expected price and probability
expected_price <- mean(S[days+1,])
prob_above_120 <- mean(S[days+1,] > 120) * 100

# Print results
cat("Expected stock price after", days, "days:", round(expected_price,2), "\n")
cat("Probability of stock ending above $120:", round(prob_above_120,2), "%\n")

# Plot
matplot(S, type="l", lty=1, col=rgb(0,0,1,0.1), xlab="Days", ylab="Stock Price")