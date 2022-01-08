import setup;
import geometry;

unitsize(1cm);

fix_canvas(s=10);

point A = point(-7,0);
line axis = line(point(0,5), true, point(0,-5), true);
point B = point(7,0);

gdot("A", A, 2W);
gdot("B", B, 2E);
draw(axis);

line perp = perpendicular(A, axis);
draw(perp, dashed);

point X = intersectionpoint(perp,axis);
perpendicular(X, SW, A.coordinates-X.coordinates, size=6mm);

point[] ps = {point(0,6), point(0,-2), point(0,-5)};

for(int i=0; i < ps.length; i+=1) {
  gdot("P" + (string)(i+1), ps[i], 2NE);
  draw(line(A,false,ps[i],false), marker(markinterval(n=1, f=stickframe(n=i+1), rotated=true)));
  draw(line(B,false,ps[i],false), marker(markinterval(n=1, f=stickframe(n=i+1), rotated=true)));
}