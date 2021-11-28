import markers;
import geometry;
unitsize(1cm);

real right_angle = 90;
pen light_pen = gray(0.75);

marker single_central_marker = marker(markinterval(n=1, f=stickframe(n=1), rotated=true));
marker single_light_central_marker = marker(markinterval(n=1, f=stickframe(p=light_pen), rotated=true));

marker two_single_marker = marker(markinterval(n=2, f=stickframe(n=1), rotated=true));

marker double_central_marker = marker(markinterval(n=1, f=stickframe(n=2), rotated=true));
marker double_light_central_marker = marker(markinterval(n=1, f=stickframe(n=2, p=light_pen), rotated=true));

marker two_double_light_marker = marker(markinterval(n=2, f=stickframe(n=2, p=light_pen), rotated=true));

marker triple_central_marker = marker(markinterval(n=1, f=stickframe(n=3), rotated=true));
marker triple_light_central_marker = marker(markinterval(n=1, f=stickframe(n=3, light_pen), rotated=true));

marker triple_light_central_marker = marker(markinterval(n=1, f=stickframe(n=3, light_pen), rotated=true));
marker two_triple_light_marker = marker(markinterval(n=2, f=stickframe(n=3, light_pen), rotated=true));

arrowbar mid_path_arrow = ArcArrow(TeXHead, position=0.5, size=1mm);
arrowbar near_end_path_arrow = ArcArrow(TeXHead, position=0.75, size=1mm);

defaultpen(0.7);
pen thicker_pen = linewidth(1.2);
pen thick_pen = linewidth(1.6);

real distance(pair p1, pair p2) {
	return length(segment(point(p1, 1.0), point(p2, 1.0)));
}