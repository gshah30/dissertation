// import geometry;

unitsize(1cm);

pair A = (4,4);
pair B = (-6,7);
pair D = (1,-5);
pair C = (-5,-6);

// line l1 = line(A, false, B, false);
// line l2 = line(B, false, C, false);
// line l3 = line(C, false, D, false);
// line l3 = line(D, false, A, false);

draw(A -- B);
draw(B -- C);
draw(C -- D);
draw(D -- A);

// triangle t = triangle(l1, l2, l3);

// draw(t);
dot("$A$", A, 2NE);
dot("$B$", B, 2NW);
dot("$C$", C, 2S);
dot("$D$", D, 2S);