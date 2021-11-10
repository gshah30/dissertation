import setup;

point get_random_canvas_pair() {
  real x = 2 * canvas * unitrand() - canvas;
  real y = 2 * canvas * unitrand() - canvas;

  return (x, y);
}

point get_point(pair p) {
  return point(p, 1.0);
}

point get_point() {
  pair p = get_random_canvas_pair();
  return get_point(p);
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

line get_line(point p1, point p2) {
  return line(p1, true, p2, true);
}

line get_line() {
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

  draw_line(l, s1, s2);
}

point[] get_collinear_points(point ep1, point ep2, int n = 1, string placement = "middle") {
  point p1;
  point p2;

  if (ep1.x < ep2.x) {
    p1 = ep1;
    p2 = ep2;
  } else {
    p1 = ep2;
    p2 = ep1;
  }

  real slope = (p2.y - p1.y)/(p2.x - p1.x);
  real x_diff = p2.x - p1.x;

  point[] ps = {p1, p2};

  for(int i = 0; i < n; ++i) {
    real displacement;
    if (placement == "middle") {
      displacement = x_diff/4 + unitrand() * x_diff/2;
    } else if (placement == "internal") {
      displacement = x_diff * unitrand();
    } else if (placement == "any") {
      displacement = (unitrand() * 2 * canvas) - (p1.x + canvas);
    } else if (placement == "left") {
      displacement = -1 * unitrand() * (p1.x + canvas);
    } else if (placement == "right") {
      displacement = x_diff + unitrand() * (canvas - p2.x);
    } else if (placement== "right-near") {
      displacement = 3/2 * x_diff + unitrand() * x_diff/2;
    }

    point p = point((p1.x + displacement, p1.y + displacement * slope), 1.0);
    ps.push(p);
  }

  bool order_by_x(point p1, point p2) {
    return p1.x < p2.x;
  }

  return sort(ps, order_by_x);
}

bool check_collinear_points(point[] ps) {
  point first_point = ps[0];
  point last_point = ps[ps.length-1];
  real slope = (last_point.y - first_point.y)/(last_point.x - first_point.x);

  for(int i = 0; i < ps.length-1; ++i) {
    if (slope != (ps[i+1].y - ps[i].y)/(ps[i+1].x - ps[i].x)) {
      return false;
    }
  }
  return true;
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
