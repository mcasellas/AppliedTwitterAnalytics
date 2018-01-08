k = 3:17
p = c(0.002,
0.007,
0.017,
0.033,
0.055,
0.081,
0.103,
0.118,
0.119,
0.112,
0.097,
0.082,
0.068,
0.058,
0.048
)
E = sum(k*p)
E; #solución pregunta 1

V = sum(((k - E)^2)*p)
o = sqrt(V)
o; #solución pregunta 2

p3 = sum(p[3],p[4],p[5],p[6],p[7],p[8])
p3 #solución pregunta 3

const = 1.23
p4 = 1/const
p4; #solución pregunta 4

t1 = 93.5/60
t2 = 24
p5 = -exp(-const*t2)-(-exp(-const*t1))
p5 #solución pregunta 5


