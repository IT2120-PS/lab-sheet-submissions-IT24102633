setwd("C:\\Users\\Osura\\OneDrive\\Desktop\\LABS\\ps\\IT24102633_Lab_6")

# 1
# (i) Distribution
# X ~ Binomial(n = 50, p = 0.85)
n <- 50; p <- 0.85

# (ii) P(X >= 47)
prob_ge_47 <- 1 - pbinom(46, size = n, prob = p)
prob_ge_47

# 2) Call center (λ = 12 calls/hour)
# (i) X = number of calls in one hour
# (ii) X ~ Poisson(λ = 12)
lambda <- 12


# (iii) P(X = 15)
prob_eq_15 <- dpois(15, lambda = lambda)              
prob_eq_15