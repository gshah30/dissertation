import geometry;

unitsize(1cm);

pair O = (0,0);
real r = 5;
path c = circle(O,r);

pair F = (7,0);
pair P = (-3,4);
pair Q = (0,-5);

line FP = line(F, true, P, true);
line FQ = line(F, true, Q, true);

draw(FP);
draw(FQ);
draw(c);

dot("$O$", O, 2W);
dot("$F$", F, 2N);
dot("$P$", P, 2N);
dot("$Q$", Q, 2N);

pair[] ps1 = intersectionpoints(FP, c);
pair X = ps1[0];
dot("$X$", X, 2SE);

pair[] ps2 = intersectionpoints(FQ, c);
pair Y = ps2[2];
dot("$Y$", Y, 2SE);
write(stdout, ps2);

draw(P -- O -- X, p=dashed);
draw(Q -- O -- Y, p=dashed);

markangle(X, O, P, radius=25, n=2);
markangle(Y, O, Q, radius=-18);