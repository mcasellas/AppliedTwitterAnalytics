#1. Quina ?s l'estimaci? puntual del temps mitj? que els estudiants dediquen
#a l'assignatura en q?esti??
v <- c(107,
       131,
       116,
       123,
       142,
       91,
       93,
       102,
       105,
       135,
       120,
       97,
       122,
       103,
       124,
       117,
       141,
       128,
       131,
       126,
       122,
       139,
       116,
       108,
       118,
       106,
       101,
       145,
       145,
       122,
       116,
       117,
       134,
       143,
       137,
       127);
mean(v)

#2. Amb la mostra disponible, doneu una estimaci? de l'error de la mitjana 
#(error tipus, o standard error, la magnitud de la variaci? d'origen aleatori 
#que ?s propi de la mitjana mostral).
sd(v)/sqrt(length(v))

#3. Es demana que trobeu una estimaci? per interval de confian?a al 95% de la 
#mitjana poblacional de la variable "Temps dedicat a l'assignatura". 
#Assumiu que la desviaci? poblacional val $SG$.
A = 14   #desviaci? poblacional
confiansa = 0.90
confiansa = 1-(1-confiansa)/2
confiansa
a = mean(v)-qnorm(confiansa)*A/sqrt(length(v)); 
b = mean(v)+qnorm(confiansa)*A/sqrt(length(v));
a ; b


#4. Calculeu una altra estimaci? per al mateix par?metre, per? sense assumir 
#coneguda la desviaci? poblacional. Feu l'interval amb confian?a $Cnf$%.
x = 98/100    # interval de confian?a
t.test(v,conf.level=x) 

#5. Volem trobar un interval de confian?a al $Cnf2$% per a la mitjana, 
#Suposem tamb? que l'aut?ntica desviaci? ?s s=$SG$, i es desitja que 
#l'amplada de l'interval sigui de 10 hores, com a molt. 
#Quantes observacions necessitem recollir?

amp = 5
confiansa = 0.90
confiansa = 1-(1-confiansa)/2
confiansa
sigma = 14

ceiling(((2*qnorm(confiansa)*sigma)/amp)^2)

