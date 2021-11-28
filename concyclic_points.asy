unitsize(1cm);

pair A = (-2,-sqrt(21));
pair B = (3,-4);
pair C = (1,sqrt(24));
pair D = (-sqrt(21),2);

path c = circle((0,0),5);
draw(c);
dot("$A$", A, 2SW);
dot("$B$", B, 2SE);
dot("$C$", C, 2NE);
dot("$D$", D, 2NW);