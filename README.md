Monte Carlo Stock Simulation 📊

Introduction: 
This was my first personal project ever in R (with a little help from AI!) exploring how randomness, probability, and volatility interact in simulated market behaviour, using simple Monte Carlo methods.

💡 Overview:

This simulation estimates:
- The expected stock price after 252 trading days
- The probability of the stock ending above a target threshold (in this case >$120)

Using Geometric Brownian Motion, it models daily returns based on chosen drift and volatility parameters.

⚙️ Parameters: 
- Initial stock price (S₀): 150
- Expected annual return (μ): 5%
- Volatility (σ): 20%
- Trading days: 252
- Simulations: 1000

📈 Example output: 
Expected stock price after 252 days: 157.82 
Probability of stock ending above $120: 90%
<img width="1610" height="1335" alt="MCSS Plot" src="https://github.com/user-attachments/assets/b8d4864e-0370-458b-baf0-a5899ecbb05d" />


🧠 Methods & Visualisation: 
- Random sampling from a normal distribution to simulate daily returns
- Iterative compounding of stock prices
- Matrix-based simulation of multiple paths
- Each blue line represents one possible stock price path over a year.

🧰 Built With: 
- R (base functions and simulation)
- ggplot2 (for optional plotting and visualisation)


✨ Reflection
This was my first self-led simulation project and almost first real step forward into the quantitative world. I've seen several quant education accounts recommend running a Monte Carlo simulation as a beginner project, and although small, it was a really fun start to applying probablistic thinking to financial modelling. 

It help me understand simulation-based reasoning and market behaviour in a hands-on visual way. Additionally, although confusing at first, I was able to figure out the basics to GitHub and how to push R scripts to a repos (which felt like a big win) 🙏
