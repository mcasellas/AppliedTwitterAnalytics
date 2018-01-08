###M'han regalat 1.000.000###
Tots rebem molts missatges sorprenents, encara que mai tenim tanta sort.
Com les nostres adreces de correu s?n a l'abast de molta gent que vol viure b? 
sense treballar gaire, cada dia entra a la nostra b?stia de correu un gran 
nombre (i molt variable) de "spam". En el cas de cert usuari, s'ha estimat 
que una distribuci? de Poisson amb par?metre 4.4
#### segons enunciat: ####
lambda = 4.2   # par?metre de la distribuci? de Poisson


###########################
####### pregunta 1 ########
###########################
#exactamente
x = 1   #numero de missatges que ens diuen
p = dpois(x,lambda)
p


###########################
####### pregunta 2 ########
###########################
x = 1
p = ppois(x,lambda)
p


###########################
####### pregunta 3 ########     0.5511838
###########################
x = 3  # volem que rebi al menys x -> probabilitat de que rebi m?s de (x-1) en un dia
y = x-1
p = ppois(y,lambda)
p	 #  probabilitat de rebre menys de y
r = 1-p
r      # que en rebem m?s de y


###########################
####### pregunta 4 ########
###########################
lambda = 4.2
x = 3 	# trobem x missatges nous
y = 15 	# en y hores
xx = 5	# missatges que volem contar
yy = 24	# en aquest per?ode de hores totals
L = (lambda/24)*(yy-y)
L  	# nova lambda 
X = xx-x-1  # volem que sigui el numero que resta
            # per tant ha de ser menor o igual a aquest numero menys 1
X
# usant taules calculem el resultat per a L i X
# resultat = 1-probabilitat que hem trobat
# Nota: si L esta entre dos valors de la taula, agafem el que ?s m?s proper
# resultat proper a 
p = 1-ppois(X,L)
	p
# (aix? serveix de guia per veure si anem ben encaminats amb el resultat trobat)

###########################
####### pregunta 5 ########
###########################
lambda  # la original
x = 2   # P(|Y-lambda|<x)???
# usant taules:
# prenem diversos valors de Y (el 0, 1, 2, 3, ...) i els hi restem lambda
# comprobem er quins resultats es compleix que |Y-lambda|<x -> en aquest cas 
# temin una X1 = 8, i una X2 = 11.
# hem de trobar P(Y<=X2)-P(Y<=(X1-1)) , ?s a dir:
# probabilitat de que sigui menor o igual que X2 (que ?s el m?xim que hem trobat)
# menys probabilitat que sigui inferior a X1, per tant <= X1-1, que ?s el minim.
# (la lambda ?s la original, resultat en valor absolut)


###########################
####### pregunta 6 ########
###########################
# El nombre de missatges no desitjats que es reben no sobrepassa una certa 
# fita N amb probabilitat 0.304: dit d'una altra manera, poden arribar m?s 
# de N missatges amb probabilitat 1-0.304). Qu? val la fita N? 
q = 0.451
lambda   # la original
p = qpois(q,lambda)
p
