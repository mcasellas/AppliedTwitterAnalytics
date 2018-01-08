# N(mu,sigma)
mu = 61
sigma = 3.15
n = 1

# PREGUNTA 1
prob1 = 0.80
prob2 = 0.85
prob = (prob1+prob2)/2; prob
alfa = 1-prob; alfa
c(mu-qnorm(1-alfa/2)*sigma/sqrt(n),mu+qnorm(1-alfa/2)*sigma/sqrt(n))

# PREGUNTA 2
n = 4
c(mu-qnorm(1-alfa/2)*sigma/sqrt(n),mu+qnorm(1-alfa/2)*sigma/sqrt(n))

# PREGUNTA 3
n = 15
c(mu-qnorm(1-alfa/2)*sigma/sqrt(n),mu+qnorm(1-alfa/2)*sigma/sqrt(n))

# PREGUNTA 4
k1 = 60.4226
k2 = 61.5774
prob = 0.65
alfa = 1 - prob; alfa
n1 = (qnorm(1-alfa/2)*sigma/(mu-k1))^2
n2 = (qnorm(1-alfa/2)*sigma/(k2-mu))^2
n1; n2

