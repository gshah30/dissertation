import geometry;

unitsize(1cm);

pair O = (0,0);
real r = 5;
path c = circle(O,r);

pair A = (-5,0);
pair B = (5,0);

pair F = (7,0);
pair P = (-3,4);

line l = line(F, true, P, true);

draw(l);
draw(c);
draw(F -- A -- B);

dot("$O$", O, 2S);
dot("$A$", A, 2NW);
dot("$B$", B, 2SE);
dot("$F$", F, 2N);
dot("$P$", P, 2N);

pair[] ps = intersectionpoints(l, c);
pair Q = ps[1];
dot("$Q$", Q, 2SE);
