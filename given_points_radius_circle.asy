import setup;

point A = point(-3,0);
point B = point(3,0);

point O = point(0,4);

draw(A -- O, dashed);
draw(B -- O, dashed);

draw(circle(O,5), p=light_pen);

dot("$O$", O, 2N, p=light_pen);
dot("$A$", A, 2SW);
dot("$B$", B, 2SE);