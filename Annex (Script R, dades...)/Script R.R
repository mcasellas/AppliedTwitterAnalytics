###############################################
#         APPLIED TWITTER ANALYTICS           #
###############################################

# DADES
data <- read.delim("clipboard",dec=",")                             # Totes les dades (copiar de la pestaña "R" de l'excel "Dades.xlsx)
datalaboral = subset(data, Laboral.0...Cap.setmana.festiu.1. == 0)  # Dades dies laborals
datafestiu = subset(data, Laboral.0...Cap.setmana.festiu.1. == 1)   # Dades dies festius/cap de setmana

# CÀLCULS
nSL = length(datalaboral$Suma)
nSF = length(datafestiu$Suma)
n = nSL + nSF

ySL = mean(datalaboral$Suma)
ySF = mean(datafestiu$Suma)


s2SL = sum((datalaboral$Suma-ySL)^2)/(nSL-1); s2SL
s2SF = sum((datafestiu$Suma-ySF)^2)/(nSF-1); s2SF

s2 = ((nSL-1)*s2SL + (nSF-1)*s2SF)/(nSL + nSF - 2); s2

# Estadístic
z = ((ySL-ySF)/sqrt((s2SL/nSL)+(s2SF/nSF))); z

# P-valor
pvalor = pnorm(z); pvalor

# Interval de confiança
conf = 0.95
alpha = 1 - conf

ic1 = (ySL-ySF)-qnorm(1-(alpha/2))*sqrt(s2/n)
ic2 = (ySL-ySF)+qnorm(1-(alpha/2))*sqrt(s2/n)

IC = c(ic1,ic2); IC


# RESULTATS
summary(datalaboral$Suma)
summary(datafestiu$Suma)


# GRÁFIQUES

# Boxplot
boxplot(datalaboral$Suma, datafestiu$Suma, ylim = c(0,500), names = c("Laborables", "Festius"), main = "Boxplot S (Rt + Likes)")

# QQnorm
prob = c(0,500)
qqnorm(datalaboral$Suma, prob)
qqline(datalaboral$Suma)

qqnorm(datafestiu$Suma, prob)
qqline(datafestiu$Suma)

      