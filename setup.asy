import markers;
import geometry;
unitsize(1cm);

real right_angle = 90;

defaultpen(gray(0)+linewidth(1.5));
pen thick_pen_0 = gray(0)+linewidth(1.2);
pen thick_pen_1 = gray(0)+linewidth(1.4);
pen thick_pen_2 = gray(0)+linewidth(1.6);

pen light_pen = gray(0);

marker single_central_marker = marker(markinterval(n=1, f=stickframe(n=1), rotated=true));
marker single_light_central_marker = marker(markinterval(n=1, f=stickframe(p=light_pen), rotated=true));

marker two_single_marker = marker(markinterval(n=2, f=stickframe(n=1), rotated=true));

marker double_central_marker = marker(markinterval(n=1, f=stickframe(n=2), rotated=true));
marker double_light_central_marker = marker(markinterval(n=1, f=stickframe(n=2, p=light_pen), rotated=true));

marker two_double_light_marker = marker(markinterval(n=2, f=stickframe(n=2, p=light_pen), rotated=true));

marker triple_central_marker = marker(markinterval(n=1, f=stickframe(n=3, thick_pen_0), rotated=true));
marker triple_light_central_marker = marker(markinterval(n=1, f=stickframe(n=3, light_pen), rotated=true));

marker triple_light_central_marker = marker(markinterval(n=1, f=stickframe(n=3, light_pen), rotated=true));
marker two_triple_light_marker = marker(markinterval(n=2, f=stickframe(n=3, light_pen), rotated=true));

marker quadruple_central_marker = marker(markinterval(n=1, f=stickframe(n=4), rotated=true));
marker quadruple_light_central_marker = marker(markinterval(n=1, f=stickframe(n=4, light_pen), rotated=true));

arrowbar mid_path_arrow = ArcArrow(TeXHead, position=0.5, size=1mm);
arrowbar near_mid_path_arrow = ArcArrow(TeXHead, position=0.6, size=1mm);
arrowbar near_end_path_arrow = ArcArrow(TeXHead, position=0.75, size=1mm);

arrowbar parallel_marker(real pos) {
	return ArcArrow(TeXHead, position=pos, size=1mm);
}

real distance(pair p1, pair p2) {
	return length(segment(point(p1, 1.0), point(p2, 1.0)));
}

real distance(point p1, point p2) {
	return length(segment(p1, p2));
}

point point(real x = 0, real y = 0) {
	return point(defaultcoordsys, (x,y), 1.0);
}

point origin = point(0,0);

void fix_canvas(real t = 10, real r = 10, real b = -10, real l = -10) {
	dot((l,0), invisible);
	dot((r,0), invisible);
	dot((0,t), invisible);
	dot((0,b), invisible);
}

void fix_canvas(real s) {
	fix_canvas(s, s, -s, -s);
}

void gdot(string s, point pt, align a, pen p=black+linewidth(4.0)) {
	dot("$" + s + "$", pt, a, p);
}
