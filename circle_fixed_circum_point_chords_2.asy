import geometry;

unitsize(1cm);

pair O = (0,0);
real r = 5;
path c = circle(O,r);

pair F = (5,0);
pair P = (-4,-3);
pair Q = (-3,4);

// line FP = line(F, true, P, true);
// line FQ = line(F, true, Q, true);

path FP = F -- P;
path FQ = F -- Q;

draw(FP);
draw(FQ);
draw(c);

dot("$O$", O, 2W);
dot("$F$", F, 2N);
dot("$P$", P, 2N);
dot("$Q$", Q, 2N);

// pair[] ps = intersectionpoints(FP, c);
// pair X = ps[1];
// dot("$X$", X, 2SE);

// pair[] ps = intersectionpoints(FQ, c);
// pair Y = ps[1];
// dot("$Y$", Y, 2SE);

draw(P -- O -- F, p=dashed);
draw(Q -- O -- F, p=dashed);

markangle(F, O, P, radius=-21, n=2);
markangle(F, O, Q, radius=18);