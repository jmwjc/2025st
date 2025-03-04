
a = 4.0;
lc = 1;

Point(1) = {0.0, 0.0, 0.0, lc};
Point(2) = {  a, 0.0, 0.0, lc};
Point(3) = {  a,   a, 0.0, lc};
Point(4) = {0.0,   a, 0.0, lc};
Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,1};

Curve Loop(1) = {1,2,3,4};
Surface(1) = {1};

Line(5) = {1,3};
// Point(15) = {0.0,0.5,0.0};
// Point(16) = {a,4.5,0.0};
// Point(17) = {3.75,a,0.0};
// Line(20) = {15,16};
// Line(21) = {16,17};

Physical Surface("Ω") = {1};

Field[1] = Distance;
Field[1].CurvesList = {5};
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

// Mesh.MshFileVersion = 2;
Mesh.Algorithm = 6;
Mesh 2;
