unitsize(1cm);

pair A = (-5,0);
pair B = (3,0);
pair C = (0,4);

path AB = A -- B;
draw(AB -- C -- cycle);

// write(stdout, AB.distance());

path circleBC = circle((B+C)/2,5/2);
draw(circleBC);
draw(circle((A+C)/2,sqrt(41)/2));

dot("$A$", A, 2SW);
dot("$B$", B, 2SE);
dot("$C$", C, 2N);

pair X = intersectionpoint(AB, circleBC);

dot("$X$", X, 2S);