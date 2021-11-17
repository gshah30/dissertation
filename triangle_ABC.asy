import geometry;

unitsize(1cm);

pair A = (3,4);
pair B = (-3,7);
pair C = (1,-5);

line l1 = line(A, false, B, false);
line l2 = line(B, false, C, false);
line l3 = line(C, false, A, false);

triangle t = triangle(l1, l2, l3);

draw(t);
dot("$A$", A, 2NE);
dot("$B$", B, 2NW);
dot("$C$", C, 2S);