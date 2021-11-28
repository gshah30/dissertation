import setup;

unitsize(0.4cm);

pair P = (0.0);
line l = line((3,0), right_angle);

pair C0 = (3,11);
real r0 = sqrt(130);
dot("$C0$", C0, E);

pair C1 = (3,4);
real r1 = 5;
dot("$C1$", C1, E);

pair C2 = (3,0);
real r2 = 3;
dot("$C2$", C2, E);

pair C3 = (3,-4);
real r3 = 5;
dot("$C3$", C3, E);

pair C4 = (3,-11);
real r4 = sqrt(130);
dot("$C4$", C4, E);

path c0 = circle(C0, r0);
path c1 = circle(C1, r1);
path c2 = circle(C2, r2);
path c3 = circle(C3, r3);
path c4 = circle(C4, r4);

dot("$P$", P, 5W);
draw(l);
draw(c0);
draw(c1);
draw(c2);
draw(c3);
draw(c4);

pair X = (6,0);
dot("$X$", X, 5E);