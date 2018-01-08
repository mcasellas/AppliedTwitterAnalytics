dades <- c(44,143,97,116,45,102,49,69)
n = length(dades); n


# PREGUNTA 1 bona
error = sd(dades)/sqrt(length(dades)); error

# PREGUNTA 2
s = sd(dades);s
s^2

# PREGUNTA 3
a = 57.4
b = 108.8


valor = (b-mean(dades))*sqrt(length(dades))/sd(dades); valor
((pt(valor, length(dades)-1)*2)-1)*100


# PREGUNTA 4
mu_new = 100
Z = (mean(dades)-mu_new)/(sd(dades)/sqrt(length(dades))); Z
pt(Z,n-1)

# PREGUNTA 5
conf = 95
conf = 1-(1-(conf/100))/2; conf
c(mean(dades)-qt(conf, length(dades)-1)*sd(dades)/sqrt(length(dades)),mean(dades)+qt(conf, length(dades)-1)*sd(dades)/sqrt(length(dades)))


prob = 0.99
alfa = 1-prob
s2 = (sum(dades^2)-sum(dades)^2/n)/(n-1); s2
c(sqrt(s2*(n-1)/(qchisq(1-alfa/2,n-1))),sqrt(s2*(n-1)/(qchisq(alfa/2,n-1))))
