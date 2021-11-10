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
