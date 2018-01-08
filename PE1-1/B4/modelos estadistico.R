# distribuci?n t-Student
gradosT = 8
gradosS = 4
gradosR = 13
gradosQ = 90

# distribuci?n Chi-Cuadrado
gradosX = 8
gradosY = 17
gradosU = 6

# PREGUNTA 1: 
k = 2.306
1-pt(k,gradosT)		# Prob(T>k) = 1-Prob(T<=k)
pt(k,gradosT)		# Prob(T<k)


# PREGUNTA 2: k?
prob = 0.95
qt(prob,gradosS)		# P(S<k)
qt(1-prob,gradosS)	# P(S>k)

# PREGUNTA 3
k = 1.35
2*(1-pt(k,gradosR))	# Prob(|R|>k) = 2*(1-Prob(R<=k))
pt(k,gradosR)		# Prob(|R|<k)

# PREGUNTA 4
prob = 0.22556
# p-valor = prob/2
# grados de livertad = gradosQ
qt(prob,gradosQ)	# Prob(|Q|<?)
1-qt(1-prob,gradosQ)	# Prob(|Q|>?)

k = 0.22556
x = 2*(1-pt(k,gradosQ))	# Prob(|R|>k) = 2*(1-Prob(R<=k))
pt(k,gradosQ)		# Prob(|R|<k)

# PREGUNTA 5
k = 17.535
pchisq(k,gradosX)		# Prob(X<k)
1-pchisq(k,gradosX)	# Prob(X>k)

# PREGUNTA 6
prob = 0.05 
qchisq(prob,gradosY)	# P(Y<k)
qchisq(1-prob,gradosY)	# P(Y>k)

# PREGUNTA 7
k1 = 45.7
k2 = 53.13
pchisq(k2,gradosU)-pchisq(k1,gradosU)
