import setup;

line l1 = get_line();
point[] ps = get_collinear_points(l1.A, l1.B, 1);

point o = ps[1];
real l1_len = sqrt(abs(l1.A.x - l1.B.x)^2 + abs(l1.A.y - l1.B.y)^2);


// C is to the left of O at some distance but not too much
point c = get_point((o.x - l1_len/2 - unitrand() * abs(l1.A.x - l1.B.x)/2, o.y));

point[] ps = get_collinear_points(c, o, 1, placement = "right-near");
point d = ps[2];

line l2 = get_line(c, d);

draw_line(l1, "A", "B");
draw_line(l2, "C", "D");
draw_point(o, "O");