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

gdot("O", c.C, 2N);
// gdot("E", (c.r,0), 2N);
// write(stdout, distance(p1=c.C, p2=A));

// draw(c.C.coordinates -- (c.C.x + c.r, c.C.y));