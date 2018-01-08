v <- c(44,143,97,116,45,102,49,69)


### PREGUNTA 1 ###
# La l?nea gris indica la estimaci?n puntual observada del tiempo promedio
# entre dos pulsaciones para este usuario. Halle el valor estimado.

m = mean(v)
m



### PREGUNTA 2 ###
# Seguidamente, con la muestra observada, estime el error t?pico de la media
# muestral

error = sd(v)/sqrt(length(v))
error



### PREGUNTA 3 ###
# Se pide a continuaci?n una estimaci?n por intervalo de confianza de 90%
# para el par?metro ?tiempo esperado entre dos caracteres?, correspondiente a
# nuestro usuario. No asuma que conoce el valor de la desviaci?n t?po
# poblacional (es sd(v)).

x=99/100 #confianza de 90%
y=(1-x)/2
n=length(v)-1
x; y; n;
tp = 3.250
	# per trobar 'tp' agafem a la taula t-student el valor per v=n i prob=y
	# si y no surt a la taula, equival a prob=1-y
minim = mean(v)-(tp*(error)); minim
maxim = mean(v)+(tp*(error)); maxim



### PREGUNTA 4 ###
# El sistema supone, a partir de la informaci?n registrada previamente,
# que el tiempo medio del supuesto usuario es 102. Si pusiera a prueba que
# la entrada que se acaba de hacer proviene efectivamente de tal usuario,
# diga cu?l es el valor P que hallar?a.

m_new = 81
n = length(v)
Z = (mean(v)-m_new)/(sd(v)/sqrt(n)); Z
2*(1-pt(Z,n-1)) # o b? 2*(pt(Z,n-1)) si l'anterior ?s >1



### PREGUNTA 5 ###
# Obtenga un intervalo de confianza de 99% para la desviaci?n tipo del tiempo,
# seg?n la muestra disponible.

C2 = 80
riesgo2 = 1 - C2/100
numerad = sd(v)^2 * (length(v)-1)
sqrt(numerad/qchisq(1-riesgo2/2, length(v)-1)); sqrt(numerad/qchisq(riesgo2/2, length(v)-1))








.