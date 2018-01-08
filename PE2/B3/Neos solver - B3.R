
############################
####### PREGUNTA 1 #########
############################
x = 1       #num problemas que queremos ver
promedio = 1
lambda = promedio    # es el promedio
p=ppois(x-1, lambda)  
p		# que sea menor que
r = 1-ppois(x,lambda)
r		# que sea mayor que


############################
####### PREGUNTA 2 #########
############################
#exactamente! (primera columna de la diapo wapa)
x =  2  #numero de llegadas que nos dicen
p = dpois(x,lambda)
p

############################
####### PREGUNTA 3 #########
############################
x = 4    #num. de problemas
cspromig = promedio
promedio = promedio*2   #en 1 hora son 2.8, pues en 2 son 12
promedio
lambda = promedio
p = dpois(x,lambda)
p


############################
####### PREGUNTA 4 #########
############################
#exponencial
 # el promedio que nos han dado inicialmente
promedio = (1/cspromig) * 60 # es *60 pq me piden minutos
promedio

############################
####### PREGUNTA 5 ######### restaaaaaaar!
############################

x = cspromig   #promedio por hora
n=  34      #minutos que dan
lambda = n/60 #me lo dan en minutos y paso a horas
p = 1- pexp(x,lambda) #menys de 
p

############################
####### PREGUNTA 6 #########
############################
p = 0.06  #probabilidad de cada servidor
n = 10    #numero de servidores
k = 3    #servidores recibiendo
pr = 1-pbinom(k,n,p)  # tener mas de k servidores
pr