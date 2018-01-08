## EL REPARADOR
El tiempo estipulado para reparar una aver?a de un tipo determinado en el 
taller de reparaci?n de ordenadores es de 2.5 horas, aunque en realidad este 
tiempo es variable, siguiendo una distribuci?n Normal, con esta media, pero 
con desviaci?n tipo igual a 32 minutos.

En las siguientes preguntas vamos a explorar temas relacionados con la 
distribuci?n del tiempo para una reparaci?n al azar, para varias reparaciones 
independientes, y para el tiempo promedio de un conjunto de reparaciones.	
#NORMAL
esperanca = 2 #horas de media en reparar
desviacio = 41/60 #me lo dan en minutos y lo paso a horas

## PREGUNTA 1

x = 117/60 #minutos pasados a horas
p = pnorm(x,esperanca,desviacio)   #menos de sin (1-), m?s de con (1-).
p        # para menos de
r = 1-p  # para mas de
r



## PREGUNTA 2
p = 0.8 #% en probabilidad 
q = qnorm(p,esperanca,desviacio)*60 #multiplico * 60 pq me piden minutos
q


## PREGUNTA 3
n = 19 #numero de averias
esperanca_n = esperanca*n #esperanza para n averias
esperanca_n
desviacio_n = desviacio*sqrt(n) #desviacion para n averias
desviacio_n

## PREGUNTA 4
n = 9   #nuevo numero de averias
x = 143  #tiempo promedio de reparacion
esperanca_minutos = esperanca*60 #la esperanza inicial en minutos
desviacio_nueva = (desviacio*60)/sqrt(n)
p = 1-pnorm(x,esperanca_minutos,desviacio_nueva)
p
 
## PREGUNTA 5
##A ojo la esperanza (es la linea vertical que nos dibujan)
##A ojo el numero q esta un poco mas a la derexa de la esperanza y haces
## el numero un poco mas a la derecha - esperanza.

# En el ejemplo adjunto: esperanza = 130
# Tenemos marcados el 140 y el 160 despues de la esperanza
# Cojemos un numero que est? un m?s all? de la mitad de 140 y 160,
#      pero que no llegue q 160 -> por ejemplo 158
# Le restamos la esperanza: 158-130 = 22
# Deber?a ser bastante aproximado, en nuestro caso nos ha dado 22 y el
#      valor correcto es 22.5