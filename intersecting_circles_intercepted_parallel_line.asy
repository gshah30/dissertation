import setup;
import geometry;

unitsize(0.4cm);

pair O = (0,0);

pair C1 = (-3.5,0);
real r1 = 5;
dot("$C1$", C1, 2E);

pair C2 = (9,0);
real r2 = 13;
dot("$C2$", C2, 2E);

path c1 = circle(C1, r1);
path c2 = circle(C2, r2);

path clipper = arc(C1, r1+0.1, 90, 270) -- arc(C2, r2+0.1,-150, 150) -- cycle;

draw(c1);
draw(c2);

line vert_line = line(O, right_angle);
draw(vert_line);

point[] ps1 = intersectionpoints(vert_line, c1);
point[] ps2 = intersectionpoints(vert_line, c2);

pair P = ps1[0].coordinates;
pair Q = ps1[1].coordinates;
dot("$P$", P, 2NE);
dot("$Q$", Q, 2SE);


pair R = ps2[0].coordinates;
pair S = ps2[1].coordinates;
dot("$R$", R, 2SE);
dot("$S$", S, 2NE);

draw(P -- R, p=invisible, single_light_central_marker);
draw(Q -- S, p=invisible, single_light_central_marker);

// real angle_with_x_axis = 12;
// line l1 = line(P, angle_with_x_axis);
// line l2 = line(Q, angle_with_x_axis);

// draw(l1, single_central_marker, arrow=near_end_path_arrow);
// draw(l2, single_central_marker, arrow=near_end_path_arrow);

clip(clipper);