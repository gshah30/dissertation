unitsize(1cm);

pair A = (-3,6);
pair M = (1/2,-1);
pair B = (4,-8);

dot("$A$", A, 2NE);
dot("$M$", M, 2NE);
dot("$B$", B, 2NE);

draw(A -- M -- B);