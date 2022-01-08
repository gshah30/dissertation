import setup;

fix_canvas(s=15);


line l1 = line(point(-3,-2), true, point(3,-1.5), true);
line l2 = line(point(-3,3), true, point(3,2), true);
line l3 = line(point(-3,5), true, point(3,4.5), true);

draw(l1);
draw(l2);
draw(l3);

line transversal = line(point(-1,9), true, point(1,-9), true);
draw(transversal);