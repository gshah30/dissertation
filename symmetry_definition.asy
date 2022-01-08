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
path perp_path = A.coordinates -- B.coordinates;

draw(perp_path, dashed);

point X = intersectionpoint(perp,axis);
perpendicular(X, SW, A.coordinates-X.coordinates, size=6mm);

draw(A -- X, invisible, single_central_marker);
draw(B -- X, invisible, single_central_marker);

gdot("M", X, 2SW);
