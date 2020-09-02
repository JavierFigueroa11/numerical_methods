function respuesta = Aproximacion_Discreta(f, xs, y)
syms x;
f1(x)=f(1);
f2(x)=f(2);
f3(x)=f(3);

A = [f1(xs(1))  f2(xs(1))  f3(xs(1));
     f1(xs(2))  f2(xs(2))  f3(xs(2));
     f1(xs(3))  f2(xs(3))  f3(xs(3));
     f1(xs(4))  f2(xs(4))  f3(xs(4));
     f1(xs(5))  f2(xs(5))  f3(xs(5));
     f1(xs(6))  f2(xs(6))  f3(xs(6));
     f1(xs(7)) f2(xs(7)) f3(xs(7));
     f1(xs(8)) f2(xs(8)) f3(xs(8));
     f1(xs(9)) f2(xs(9)) f3(xs(9))]


AtA = transpose(A)*A;

aux=((inv(AtA))*(transpose(A)*transpose(y)))
f = aux(1) + aux(2)*x + aux(3)*x^2;
respuesta = f;