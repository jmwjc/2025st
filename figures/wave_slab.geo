
a = 4.0;
lc = 1;

Point(1) = {0.0, 0.0, 0.0, lc};
Point(2) = {  a, 0.0, 0.0, lc};
Line(1) = {1,2};


// Additional lines
// Point(5) = {0.1, 1.0, 0.0};
// Point(6) = {5.9, 1.0, 0.0};
// Line(5) = {5,6};
// Curve{5} In Surface{1};
For i In {1:Round(a)}
    Point(2+2*i-1) = {0.0, i, 0.0};
    Point(2+2*i)   = {  a, i, 0.0};
    Line(1+3*i-2) = {2*i-1, 2+2*i-1};
    Line(1+3*i-1) = {2*i, 2+2*i};
    Line(1+3*i) = {2+2*i-1, 2+2*i};
    Curve Loop(i) = {3*i-2,3*i,-3*i-1,-3*i+1};
    Surface(i) = {i};
EndFor

Physical Surface("Ω") = {1:4};

Line(20) = {1,10};

Field[1] = Distance;
Field[1].CurvesList = {20};
Field[1].Sampling = 100;
Field[2] = Threshold;
Field[2].InField = 1;
Field[2].SizeMin = lc/3;
Field[2].SizeMax = lc;
Field[2].DistMin = 0.5;
Field[2].DistMax = 1.0;

Background Field = 2;

Mesh.MeshSizeExtendFromBoundary = 0;
Mesh.MeshSizeFromPoints = 0;
Mesh.MeshSizeFromCurvature = 0;

Mesh.Algorithm = 6;
Mesh 2;
