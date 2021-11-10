import setup;

line l = get_line();
point[] ps = get_collinear_points(l.A, l.B, 1);

string names[] = {"A", "O", "B"};

for(int i = 1; i < ps.length - 1; ++i) {
  draw_point(ps[i].coordinates, names[i]);
}

draw_line(l, names[0], names[names.length-1]);