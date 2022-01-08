import setup;

fix_canvas(s=40);
// fix_canvas(40, 40, -40, -40);

point A = point(-3,0);
point B = point(3,0);

dot("$A$", A, 4W);
dot("$B$", B, 4E);

string[] labels = {"A", "B", "C", "D", "E", "F", "I", "J"};
point[] centers = {};

for(int i=-0; i<6; i=i+1) {
  circle c = circle(A, B, point(0, -10+4*i));
  draw(c, p=dashed);
  dot("$" + labels[i] + "$", c.C, 2E, light_pen);

  centers.push(c.C);
}

line locus = line(centers[0], centers[1]);
draw(locus, light_pen);