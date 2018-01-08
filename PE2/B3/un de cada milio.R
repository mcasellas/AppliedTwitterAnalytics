#### UN DE CADA MILIO ####
# El proveidor de discs durs de l?any passat comercialitza ara un model de
# $size$ GB, i estem analitzant si ens conv?. Aquest fabricant ha fet proves per
# quantificar l?aparici? de sectors defectuosos, que no sol ser un problema
# mentre sigui un nombre petit, i ha determinat que la probabilitat que no
# s?observi cap defecte en un disc tipus de 100 GB durant un any de funcionament
# ?s $prob$.

size = 325
prob = 0.0169
 

######################
##### Pregunta 1 #####
######################
# Una d'aquestes distribucions correspon al nombre de sectors defectuosos
# d'un disc de $size$ GB en un any (es mostren els valors corresponents al 99%
# central). Selecciona la distribuci? correcta (1, 2 o 3).

lambda = -log(prob) * size / 100
print(paste("lambda:", lambda))
 
for(i in -1:1){
    print(paste("Probabilitat de", floor(lambda+i), ":",
    dpois(floor(lambda+i), lambda)))
}


### RESPOSTA: per identificar quina de les 3 grafiques que ens donen es la
### bona, hem de mirar els diferents valors que hem obtingut per certes
### lambdes. En el nostre cas tenim les grafiques << veure pdf >> y els valors
### per a les 3 lambdes seguents:
	# "Probabilitat de 3 : 0.142636470606913"
	# "Probabilitat de 4 : 0.176861444841945"
	# "Probabilitat de 5 : 0.175438837141639"
### La unica grafica que te lambda = 3, 4, i 5 per amb aquestes probabilitats,
### es la grafica 3.

   
######################
##### Pregunta 2 #####
######################
# Quin seria el nombre esperat de defectes en el disc que es comercialitza,
# per a un hipot?tic periode de $years$ anys d?activitat?
# 2 decimals correctes.

anys = 3
mesos = 9
years = anys+(mesos/12)
years
n = lambda * years
n

######################
##### Pregunta 3 #####
######################
# Segurament ?s preferible tenir una mesura de quin ?s el risc en una
# situaci? m?s extrema. Per exemple, saber quin ?s el m?xim nombre previst
# de sectors defectuosos, amb un error del $error$%, per discos amb $years$
# anys d'antiguitat. Respon amb un nombre enter, arrodonit per exc?s.
anys = 3
mesos = 9
years = anys+(mesos/12)
error = 2
ceiling(qnorm(1 - (error/100), lambda*years, sqrt(lambda*years)))
     

######################
##### Pregunta 4 #####
######################
# La garantia dels discs estableix que es reempla?aran de franc, i per
# un ?nic cop, els discos avariats dins del per?ode de garantia, entenent-se
# per avariat un disc amb m?s de 'n' sectors defectuosos. Calculeu quin ha de
# ser el valor de 'n' per tal que, en promig, nom?s calgui substituir, com a
# m?xim, un 1% dels discos al llarg d'un per?ode de garantia de $years2$ anys.

years2 = 3
     
p4 = ceiling(qnorm(0.99, lambda*years2, sqrt(lambda*years2)));
p4
 
######################
##### Pregunta 5 #####
######################   
# En lloc d?una garantia de $years2$ anys, s?ofereix una alternativa:
# $years3$ anys,
# tenint en compte que s?enten com a disc avariat si presenta $n$ sectors
# defectuosos com a m?nim. Si un client agafa aquest garantia, quina ?s la
# probabilitat que li hagin de reempla?ar el disc? ?s preferible aquesta
# garantia, des del punt de vista del client?
# Poseu ?S? per ?S?? i ?N? per ?No?, despr?s de la probabilitat, i separats
# per un espai en blanc.       
# A la probabilitat, almenys quatre decimals correctes.

years3 = 2.5	# nova garantia
n = 48		# sectors defectuosos
p5 = pnorm(n, lambda*years3, sqrt(lambda*years3))
p6 = pnorm(p4, lambda*years2, sqrt(lambda*years2))
better = "S"
     
if(p5 > p6)
    better = "N"
     
paste(1-p5, better)
 

######################
##### Pregunta 6 #####
######################   
# Calculeu el valor esperat del cost per substituci? en garantia per
# disc venut, si el per?ode de garantia ?s de $years4$ anys, 'n' = $n2$ i el
# cost d'un disc ?s de $price$ euros.
years4 = 3
n2 = 54
price = 1445  
     
price * (1 - pnorm(n2, lambda * years4, sqrt(lambda*years4)))






