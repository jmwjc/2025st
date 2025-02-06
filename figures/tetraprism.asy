
import three;
import graph3;

settings.outformat = "png";
settings.render = 16;
defaultpen(fontsize(10pt));
size(200);

currentprojection = perspective(1,1,0.5);

surface node = scale3(0.05)*unitsphere;
draw(shift( 1.0,-1/3^0.5,-1/6^0.5)*node, black);
draw(shift(-1.0,-1/3^0.5,-1/6^0.5)*node, black);
draw(shift( 0.0, 2/3^0.5,-1/6^0.5)*node, black);
draw(shift( 0.0,     0.0, 3/6^0.5)*node, black);

draw(shift( 1.0/3,-1/3^0.5/3,-1/6^0.5/3)*node, black);
draw(shift(-1.0/3,-1/3^0.5/3,-1/6^0.5/3)*node, black);
draw(shift( 0.0/3, 2/3^0.5/3,-1/6^0.5/3)*node, black);
draw(shift( 0.0/3,     0.0/3, 3/6^0.5/3)*node, black);

draw(( 1.0,-1/3^0.5,-1/6^0.5)--(-1.0,-1/3^0.5,-1/6^0.5),linewidth(1.0));
draw((-1.0,-1/3^0.5,-1/6^0.5)--(0.0,2/3^0.5,-1/6^0.5),linewidth(1.0));
draw(( 0.0,2/3^0.5,-1/6^0.5)--( 1.0,-1/3^0.5,-1/6^0.5),linewidth(1.0));
draw(( 0.0, 0.0, 3/6^0.5)--( 1.0,-1/3^0.5,-1/6^0.5),linewidth(1.0));
draw(( 0.0, 0.0, 3/6^0.5)--(-1.0,-1/3^0.5,-1/6^0.5),linewidth(1.0));
draw(( 0.0, 0.0, 3/6^0.5)--( 0.0,2/3^0.5,-1/6^0.5),linewidth(1.0));

draw(( 1.0/3,-1/3^0.5/3,-1/6^0.5/3)--(-1.0/3,-1/3^0.5/3,-1/6^0.5/3),linewidth(1.0));
draw((-1.0/3,-1/3^0.5/3,-1/6^0.5/3)--( 0.0/3, 2/3^0.5/3,-1/6^0.5/3),linewidth(1.0));
draw(( 0.0/3, 2/3^0.5/3,-1/6^0.5/3)--( 1.0/3,-1/3^0.5/3,-1/6^0.5/3),linewidth(1.0));
draw(( 0.0/3,     0.0/3, 3/6^0.5/3)--( 1.0/3,-1/3^0.5/3,-1/6^0.5/3),linewidth(1.0));
draw(( 0.0/3,     0.0/3, 3/6^0.5/3)--(-1.0/3,-1/3^0.5/3,-1/6^0.5/3),linewidth(1.0));
draw(( 0.0/3,     0.0/3, 3/6^0.5/3)--( 0.0/3, 2/3^0.5/3,-1/6^0.5/3),linewidth(1.0));

draw(( 1.0,-1/3^0.5,-1/6^0.5)--( 1.0/3,-1/3^0.5/3,-1/6^0.5/3),linewidth(1.0));
draw((-1.0,-1/3^0.5,-1/6^0.5)--(-1.0/3,-1/3^0.5/3,-1/6^0.5/3),linewidth(1.0));
draw(( 0.0, 2/3^0.5,-1/6^0.5)--( 0.0/3, 2/3^0.5/3,-1/6^0.5/3),linewidth(1.0));
draw(( 0.0,     0.0, 3/6^0.5)--( 0.0/3,     0.0/3, 3/6^0.5/3),linewidth(1.0));
