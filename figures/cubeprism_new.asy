
import three;
import graph3;

settings.outformat = "png";
settings.render = 16;
defaultpen(fontsize(10pt));
size(200);

// currentprojection = perspective(-1,-1,2);

surface node = scale3(0.05)*unitsphere;
draw(shift(-1.0,-1.0,-1.0)*node, black);
draw(shift( 1.0,-1.0,-1.0)*node, black);
draw(shift( 1.0, 1.0,-1.0)*node, black);
draw(shift(-1.0, 1.0,-1.0)*node, black);
draw(shift(-1.0,-1.0, 1.0)*node, black);
draw(shift( 1.0,-1.0, 1.0)*node, black);
draw(shift( 1.0, 1.0, 1.0)*node, black);
draw(shift(-1.0, 1.0, 1.0)*node, black);

draw((-1.0,-1.0,-1.0)--( 1.0,-1.0,-1.0),linewidth(1.0));
draw(( 1.0,-1.0,-1.0)--( 1.0, 1.0,-1.0),linewidth(1.0));
draw(( 1.0, 1.0,-1.0)--(-1.0, 1.0,-1.0),linewidth(1.0));
draw((-1.0, 1.0,-1.0)--(-1.0,-1.0,-1.0),linewidth(1.0));

draw((-1.0,-1.0, 1.0)--( 1.0,-1.0, 1.0),linewidth(1.0));
draw(( 1.0,-1.0, 1.0)--( 1.0, 1.0, 1.0),linewidth(1.0));
draw(( 1.0, 1.0, 1.0)--(-1.0, 1.0, 1.0),linewidth(1.0));
draw((-1.0, 1.0, 1.0)--(-1.0,-1.0, 1.0),linewidth(1.0));

draw((-1.0,-1.0,-1.0)--(-1.0,-1.0, 1.0),linewidth(1.0));
draw(( 1.0,-1.0,-1.0)--( 1.0,-1.0, 1.0),linewidth(1.0));
draw(( 1.0, 1.0,-1.0)--( 1.0, 1.0, 1.0),linewidth(1.0));
draw((-1.0, 1.0,-1.0)--(-1.0, 1.0, 1.0),linewidth(1.0));

// draw(shift(-0.5,-0.5,-0.5)*node, black);
// draw(shift( 0.5,-0.5,-0.5)*node, black);
// draw(shift( 0.5, 0.5,-0.5)*node, black);
// draw(shift(-0.5, 0.5,-0.5)*node, black);
// draw(shift(-0.5,-0.5, 0.5)*node, black);
// draw(shift( 0.5,-0.5, 0.5)*node, black);
// draw(shift( 0.5, 0.5, 0.5)*node, black);
// draw(shift(-0.5, 0.5, 0.5)*node, black);

// draw((-0.5,-0.5,-0.5)--( 0.5,-0.5,-0.5),linewidth(1.0));
// draw(( 0.5,-0.5,-0.5)--( 0.5, 0.5,-0.5),linewidth(1.0));
// draw(( 0.5, 0.5,-0.5)--(-0.5, 0.5,-0.5),linewidth(1.0));
// draw((-0.5, 0.5,-0.5)--(-0.5,-0.5,-0.5),linewidth(1.0));

// draw((-0.5,-0.5, 0.5)--( 0.5,-0.5, 0.5),linewidth(1.0));
// draw(( 0.5,-0.5, 0.5)--( 0.5, 0.5, 0.5),linewidth(1.0));
// draw(( 0.5, 0.5, 0.5)--(-0.5, 0.5, 0.5),linewidth(1.0));
// draw((-0.5, 0.5, 0.5)--(-0.5,-0.5, 0.5),linewidth(1.0));

// draw((-0.5,-0.5,-0.5)--(-0.5,-0.5, 0.5),linewidth(1.0));
// draw(( 0.5,-0.5,-0.5)--( 0.5,-0.5, 0.5),linewidth(1.0));
// draw(( 0.5, 0.5,-0.5)--( 0.5, 0.5, 0.5),linewidth(1.0));
// draw((-0.5, 0.5,-0.5)--(-0.5, 0.5, 0.5),linewidth(1.0));

// draw((-1.0,-1.0,-1.0)--(-0.5,-0.5,-0.5),linewidth(1.0));
// draw(( 1.0,-1.0,-1.0)--( 0.5,-0.5,-0.5),linewidth(1.0));
// draw(( 1.0, 1.0,-1.0)--( 0.5, 0.5,-0.5),linewidth(1.0));
// draw((-1.0, 1.0,-1.0)--(-0.5, 0.5,-0.5),linewidth(1.0));

// draw((-1.0,-1.0, 1.0)--(-0.5,-0.5, 0.5),linewidth(1.0));
// draw(( 1.0,-1.0, 1.0)--( 0.5,-0.5, 0.5),linewidth(1.0));
// draw(( 1.0, 1.0, 1.0)--( 0.5, 0.5, 0.5),linewidth(1.0));
// draw((-1.0, 1.0, 1.0)--(-0.5, 0.5, 0.5),linewidth(1.0));

real dx = 3.0;
real dy = 1.0;
draw(shift(-1.0-dx,-1.0+dy,-1.0)*node, gray);
draw(shift( 1.0-dx,-1.0+dy,-1.0)*node, gray);
draw(shift( 1.0-dx, 1.0+dy,-1.0)*node, gray);
draw(shift(-1.0-dx, 1.0+dy,-1.0)*node, gray);
draw(shift(-1.0-dx,-1.0+dy, 1.0)*node, gray);
draw(shift( 1.0-dx,-1.0+dy, 1.0)*node, gray);
draw(shift( 1.0-dx, 1.0+dy, 1.0)*node, gray);
draw(shift(-1.0-dx, 1.0+dy, 1.0)*node, gray);

draw((-1.0-dx,-1.0+dy,-1.0)--( 1.0-dx,-1.0+dy,-1.0),gray+linewidth(1.0));
draw(( 1.0-dx,-1.0+dy,-1.0)--( 1.0-dx, 1.0+dy,-1.0),gray+linewidth(1.0));
draw(( 1.0-dx, 1.0+dy,-1.0)--(-1.0-dx, 1.0+dy,-1.0),gray+linewidth(1.0));
draw((-1.0-dx, 1.0+dy,-1.0)--(-1.0-dx,-1.0+dy,-1.0),gray+linewidth(1.0));

draw((-1.0-dx,-1.0+dy, 1.0)--( 1.0-dx,-1.0+dy, 1.0),gray+linewidth(1.0));
draw(( 1.0-dx,-1.0+dy, 1.0)--( 1.0-dx, 1.0+dy, 1.0),gray+linewidth(1.0));
draw(( 1.0-dx, 1.0+dy, 1.0)--(-1.0-dx, 1.0+dy, 1.0),gray+linewidth(1.0));
draw((-1.0-dx, 1.0+dy, 1.0)--(-1.0-dx,-1.0+dy, 1.0),gray+linewidth(1.0));

draw((-1.0-dx,-1.0+dy,-1.0)--(-1.0-dx,-1.0+dy, 1.0),gray+linewidth(1.0));
draw(( 1.0-dx,-1.0+dy,-1.0)--( 1.0-dx,-1.0+dy, 1.0),gray+linewidth(1.0));
draw(( 1.0-dx, 1.0+dy,-1.0)--( 1.0-dx, 1.0+dy, 1.0),gray+linewidth(1.0));
draw((-1.0-dx, 1.0+dy,-1.0)--(-1.0-dx, 1.0+dy, 1.0),gray+linewidth(1.0));

draw((-1.0,-1.0,-1.0)--(-1.0-dx,-1.0+dy,-1.0),dashed+gray+linewidth(1.0));
draw(( 1.0,-1.0,-1.0)--( 1.0-dx,-1.0+dy,-1.0),dashed+gray+linewidth(1.0));
draw(( 1.0, 1.0,-1.0)--( 1.0-dx, 1.0+dy,-1.0),dashed+gray+linewidth(1.0));
draw((-1.0, 1.0,-1.0)--(-1.0-dx, 1.0+dy,-1.0),dashed+gray+linewidth(1.0));
draw((-1.0,-1.0, 1.0)--(-1.0-dx,-1.0+dy, 1.0),dashed+gray+linewidth(1.0));
draw(( 1.0,-1.0, 1.0)--( 1.0-dx,-1.0+dy, 1.0),dashed+gray+linewidth(1.0));
draw(( 1.0, 1.0, 1.0)--( 1.0-dx, 1.0+dy, 1.0),dashed+gray+linewidth(1.0));
draw((-1.0, 1.0, 1.0)--(-1.0-dx, 1.0+dy, 1.0),dashed+gray+linewidth(1.0));

real a = 0.5;
draw((2,3,0)--(2-a*dx,3+a*dy,0), arrow=Arrow3(arrowhead=DefaultHead2,size=6),linewidth(1), L=Label("$t$", position=MidPoint));