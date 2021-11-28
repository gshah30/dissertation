import setup;

unitsize(0.25cm);

pair C1 = (-5,0);
pair C2 = (9,0);

real r1 = 13;
real r2 = 15;

path c1 = circle(C1, r1);
path c2 = circle(C2, r2);

path clipper = arc(C1, r1, aSin(12/13), 360+aSin(-12/13)) -- arc(C2, r2,180-aSin(-12/15)-360, 180-aSin(12/15)) -- cycle;
// draw(clipper1, linewidth(5pt));
// draw(clipper2, linewidth(5pt));

// draw(clipper1--clipper2, linewidth(5pt));

draw(c1);
draw(c2);

pair A = (0,12);
pair B = (0,-12);
// pair P = (-10,-12);
// pair Q = (18,-12);

point Ap = point(A, 1.0);
line l10 = line(Ap, 10);
line ln5 = line(Ap, -5);
line l0 = line(Ap, 0);
line l25 = line(Ap, 25);
line ln30 = line(Ap, -30);

draw(l10);
draw(ln5);
draw(l0);
draw(l25);
draw(ln30);

draw(C1 -- C2);

dot("$C1$", C1, 2W);
dot("$C2$", C2, 2E);

// draw(A -- P);
// draw(A -- Q);

dot("$A$", A, 2N);
dot("$B$", B, 2S);

// dot("$P$", P, 2SW);
// dot("$Q$", Q, 2SE);

// draw(P -- B -- Q, light_pen);
clip(clipper);