import setup;

point A = point(2,4);
point B = point(-3,-3);
point C = point(3,-5);

draw(A -- B -- C -- cycle);
circle c = circle(A, B, C);

draw(c);

gdot("A", A, 2N);
gdot("B", B, 2SW);
gdot("C", C, 2SE);