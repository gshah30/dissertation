import geometry;

unitsize(1cm);

pair O = (0,0);
real r = 5;
path c = circle(O,r);

pair F = (3,0);
pair P = (4,3);
pair Q = (-4,3);

line FP = line(F, true, P, true);
line FQ = line(F, true, Q, true);

draw(FP);
draw(FQ);
draw(c);

dot("$O$", O, 2S);
dot("$F$", F, 2N);
dot("$P$", P, 2N);
dot("$Q$", Q, 2N);

pair[] ps = intersectionpoints(FP, c);
pair X = ps[1];
dot("$X$", X, 2SE);

pair[] ps = intersectionpoints(FQ, c);
pair Y = ps[1];
dot("$Y$", Y, 2SE);

draw(P -- O -- X, p=dashed);
draw(Q -- O -- Y, p=dashed);

markangle(X, O, P, radius=25, n=2);
markangle(Y, O, Q, radius=18);