import setup;

fix_canvas(15,15,-15,-15);

real r = 5;
circle c = circle(origin,r);
circle tmp_circle = circle(origin,3);

draw(c);
// draw(tmp_circle);

line[] lines = {};
for(int i = 10; i < 360; i = i + 70) {
  lines.push(line(origin, i));
}

// line l1 = line(origin, 30);
// line l2 = line(origin, 90);
// line l3 = line(origin, 240);
// line l4 = line(origin, 330);

// draw(l1);
// draw(l2);
// draw(l3);
// draw(l4);

string[] labels = {"A", "B", "C", "D", "E", "F", "I", "J", "K", "L", "M", "N"};

point[][] pointss = {};
line[] chords = {};
point[] points = {};

for(int i=0; i < lines.length; i=i+1) {
  pointss.push(intersectionpoints(lines[i],tmp_circle));
  line chord1 = line(pointss[i][0], aTan(-1/lines[i].slope));
  line chord2 = line(pointss[i][1], aTan(-1/lines[i].slope));
  chords.push(chord1);
  chords.push(chord2);

  dot("$" + labels[2*i] + "$", pointss[i][0], align=(pointss[i][0].x * 1.1, pointss[i][0].x * 1.1));
  dot("$" + labels[2*i+1] + "$", pointss[i][1], align=(pointss[i][1].x * 1.1, pointss[i][1].y * 1.1));

  points.push(pointss[i][0]);
  points.push(pointss[i][1]);
  draw(chord1);
  draw(chord2);
}

// for (int i=0; i < points.length; i = i+1) {
//   dot()
// }
// point[] ps1 = intersectionpoints(l1,tmp_circle);
// point[] ps2 = intersectionpoints(l2,tmp_circle);
// point[] ps3 = intersectionpoints(l3,tmp_circle);
// point[] ps4 = intersectionpoints(l4,tmp_circle);

// line chord1 = line(ps1[0], aTan(-1/l1.slope));
// line chord2 = line(ps2[0], aTan(-1/l2.slope));
// line chord3 = line(ps3[0], aTan(-1/l3.slope));
// line chord4 = line(ps4[0], aTan(-1/l4.slope));

// write(stdout, l1.slope);
// write(stdout, -1/l1.slope);
// write(stdout, chord1.slope);

// draw(chord1);
// draw(chord2);
// draw(chord3);
// draw(chord4);

clip((path)circle(origin,r+0.01));