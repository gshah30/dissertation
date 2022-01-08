import setup;

fix_canvas(s=15.0);
// fix_canvas(15, 15, -15, -15);

point A = point(-3,0);
point B = point(3,0);

point O = point(0,4);
line l = line(O, 0);

draw(A -- O, dashed);
draw(B -- O, dashed);
draw(l);

draw(circle(O,5), p=light_pen);

dot("$O$", O, 2N, p=light_pen);
dot("$A$", A, 2SW);
dot("$B$", B, 2SE);