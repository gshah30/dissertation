import setup;

unitsize(1cm);

pair A = (0,4);
pair O = (0,0);
pair B = (3,0);

path triangle = A -- O -- B -- cycle;

path c = circle((A+B)/2,distance(A, B)/2);

draw(triangle);
draw(c);

// dot(triangle);
dot("$A$", A, 2NW);
dot("$O$", O, 2SW);
dot("$B$", B, 2SE);

dot("$C$", (A+B)/2, 2NE);