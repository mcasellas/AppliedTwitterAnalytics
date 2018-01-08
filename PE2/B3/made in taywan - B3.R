

############################
####### PREGUNTA 1 #########
############################

x = 11-3 #(meses que quieres que dure - meses pasados)
mitjana = 7
lambda = 1/mitjana 
p = 1-pexp(x,lambda)
p

############################
####### PREGUNTA 2 #########
############################

p = pexp(7,lambda)-pexp(1,lambda) #(diferencia de meses: mayor-menor)
p

############################
####### PREGUNTA 3 #########
############################

p = 0.92 #(percentil)
x = qexp(p,lambda)
x

############################
####### PREGUNTA 4 #########
############################
## superior a x
p = 0.79 # (% de componentes dela competencia)
x = 2    # ( numero de meses)
lambda = log(p)/-x
Mitjana = 1/lambda
Mitjana

############################
####### PREGUNTA 5 #########
############################
x = 1.966	# (frecuencia que miramos)
esperanca =  1.96 # (la da el enunciado)
desviacio = 0.05 # (la da el enunciado)
p = pnorm(x,esperanca,desviacio)  
p           # que sigui menor que x
r = 1-p	# que sigui major que x
r

############################
####### PREGUNTA 6 #########
############################
x = 1.946
p = pnorm(x,esperanca,desviacio)
p

############################
####### PREGUNTA 7 #########
############################
p = 0.083
x = qnorm(p,esperanca,desviacio)
x






