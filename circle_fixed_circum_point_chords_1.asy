import geometry;

unitsize(1cm);

pair O = (0,0);
real r = 5;
path c = circle(O,r);

// pair A = (-5,0);
// pair B = (5,0);

pair F = (5,0);
pair D = (-4,-3);
pair C = (3,4);
pair B = (-3,4);
pair A = (-5,0);

// line l = line(F, true, P, true);

// draw(l);
draw(c);
draw(F -- A);
draw(F -- B);
draw(F -- C);
draw(F -- D);

dot("$O$", O, 2S);
dot("$A$", A, 2NW);
dot("$B$", B, 2NW);
dot("$C$", C, 2NE);
dot("$D$", D, 2SW);
dot("$F$", F, 2E);
// dot("$P$", P, 2N);

// pair[] ps = intersectionpoints(l, c);
// pair Q = ps[1];
// dot("$Q$", Q, 2SE);
