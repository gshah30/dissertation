import geometry;
import math;

// settings.outformat = "png";

srand((int) time("%S") * (int) time("%M"));
unitsize(1cm);
// size(10cm);

real spread = 11;
real canvas = 10 * spread/11;

void fix_canvas_size() {
  fill(circle((spread, spread), 0.01));
  fill(circle((-spread, 0), 0.01));
  fill(circle((-spread, -spread), 0.01));
  fill(circle((0, -spread), 0.01));
}

fix_canvas_size();

point get_random_canvas_pair() {
  real x = 2 * canvas * unitrand() - canvas;
  real y = 2 * canvas * unitrand() - canvas;

  return (x, y);
}

point get_point(pair p) {
  return point(p, 1.0);
}

void draw_point(pair p) {
  point pnt = get_point(p);

  write(stdout, "[draw_point] Drawing point at " + (string)p + '\n');
  dot(pnt);
}

void draw_point(pair p, string s) {
  point pnt = get_point(p);

  write(stdout, "[draw_point] Drawing point " + s + " at " + (string)p + '\n');
  dot("$" + s + "$", pnt, NW);
}

void draw_point(point p, string s) {
  write(stdout, "[draw_point] Drawing point " + s + " at " + (string)p.coordinates + '\n');
  dot("$" + s + "$", p, NW);
}

void draw_random_point(string s) {
  pair p = get_random_canvas_pair();
  draw_point(p, s);
}

line get_line(pair p1, pair p2) {
  return line(p1, true, p2, true);
}

line get_random_line() {
  pair loc1 = get_random_canvas_pair();
  pair loc2 = get_random_canvas_pair();

  return line(loc1, true, loc2, true);
}

void draw_line(line l, string s1, string s2) {
  draw_point(l.A.coordinates, s1);
  draw_point(l.B.coordinates, s2);

  draw(l);
}

void draw_random_line(string s1, string s2) {
  pair loc1 = get_random_canvas_pair();
  pair loc2 = get_random_canvas_pair();

  line l = get_line(loc1, loc2);

  // draw_point(loc1, s1);
  // draw_point(loc2, s2);
  // draw(l);
  draw_line(l, s1, s2);
}

point[] get_collinear_points(point p1, point p2, int n = 1) {
  real slope = (p2.y - p1.y)/(p2.x - p1.x);
  point[] ps;
  ps.push(p1);

  for(int i = 0; i < n; ++i) {
    real x_diff = p2.x - p1.x;
    real r = unitrand();

    point p = point((p1.x + x_diff * r, p1.y + x_diff * r * slope), 1.0);
    ps.push(p);
  }

  ps.push(p2);
  return ps;
}

triangle get_triangle(pair loc1, pair loc2, pair loc3) {
  line l1 = get_line(loc1, loc2);
  line l2 = get_line(loc2, loc3);
  line l3 = get_line(loc3, loc1);

  return triangle(l1, l2, l3);
}

triangle get_random_triangle() {
  pair loc1 = get_random_canvas_pair();
  pair loc2 = get_random_canvas_pair();
  pair loc3 = get_random_canvas_pair();

  return get_triangle(loc1, loc2, loc3);
}

void draw_traingle(triangle t, string[] names = {"A", "B", "C"}) {
  draw(t);

  for(int i = 0; i < 3; ++i) {
    dot("$" + names[i] + "$", t.point(i+1).coordinates, NW);
  }
}

pair loc(string q) {
  real x;
  real y;

  real x_position = unitrand() * 2 * canvas/3 - canvas/3;
  real y_position = unitrand() * 2 * canvas/3 - canvas/3;

  if (q == "tr") {
    x = x_position + 2 * canvas/3;
    y = y_position + 2 * canvas/3;
  } else if (q == "tm") {
    x = x_position;
    y = y_position + 2 * canvas/3;
  } else if (q == "tl") {
    x = x_position - 2 * canvas/3;
    y = y_position + 2 * canvas/3;
  } else if (q == "mr") {
    x = x_position + 2 * canvas/3;
    y = y_position;
  } else if (q == "mm") {
    x = x_position;
    y = y_position;
  } else if (q == "ml") {
    x = x_position - 2 * canvas/3;
    y = y_position;
  } else if (q == "br") {
    x = x_position + 2 * canvas/3;
    y = y_position - 2 * canvas/3;
  } else if (q == "bm") {
    x = x_position;
    y = y_position - 2 * canvas/3;
  } else if (q == "bl") {
    x = x_position - 2 * canvas/3;
    y = y_position - 2 * canvas/3;
  }

  return (x, y);
}
