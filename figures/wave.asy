import three;
import graph3;

settings.outformat = "png";
settings.render = 16;
defaultpen(fontsize(10pt));
size(200);
// currentprojection = perspective(3,2,1);
currentprojection = perspective(-1,-1.5,1);

// real f(pair z) {
//     int n = 3;
//     real r = 0.1;
//     return Jn(n,length(z-(1,1))/r);
// }

real f(pair z) {
    real pi = 3.1415926;
    real a = 1.5;
    real b = 0.1;
    real r = 0.0;
    // if (z.y<5) {
    //     if (a*(z.y-1)<=z.x && z.x<=a*z.y) {
    //         r += b*(1-cos(2*pi*(z.y-z.x/a)));
    //         // if (a*(z.y-8)>=-z.x && a*(z.y-9)<=-z.x) {
    //         //     r -= 0.5*b*(1-cos(2*pi*(z.y+z.x/a)));
    //         // }
    //     }
    // }
    // if (z.y>4) {
    //     // if (a*z.y>=-z.x && a*(z.y-1)<=-z.x) {
    //     if (a*(z.y-8)>=-z.x && a*(z.y-9)<=-z.x) {
    //         r += b*(1-cos(2*pi*(z.y+z.x/a)));
    //     }
    // }

    if (z.y<z.x) {
        return 0;
    } else if (z.x<z.y-1) {
        return 2/pi;
    } else {
        return (1-cos(pi*(z.y - z.x)))/pi;
    }
    return r;
}

surface s = surface(f, (0,0), (4,4), nx=200, ny=200);

// draw(s, surfacepen=gray(0.9));
// draw(s, surfacepen=gray(0.9)+opacity(0.5), nolight);
draw(s, surfacepen=gray(0.9)+opacity(0.5));
// xaxis3(Label(XY()*"$x$",align = -Y),0,5,Arrow3);
// yaxis3(Label(XY()*"$t$",align = -X),0,5,Arrow3);
draw((1,-0.5,0)--(3,-0.5,0), arrow=Arrow3(arrowhead=DefaultHead2,size=6),linewidth(1), L=Label("$x$", position=MidPoint));
draw((-0.5,1,0)--(-0.5,3,0), arrow=Arrow3(arrowhead=DefaultHead2,size=6),linewidth(1), L=Label("$t$", position=MidPoint));

real[][] coord = {
{0.0,0.0,0.0},
{4.0,0.0,0.0},
{0.0,1.0,0.0},
{4.0,1.0,0.0},
{0.0,2.0,0.0},
{4.0,2.0,0.0},
{0.0,3.0,0.0},
{4.0,3.0,0.0},
{0.0,4.0,0.0},
{4.0,4.0,0.0},
{0.3179997781347642,0.0,0.0},
{0.6359995562694706,0.0,0.0},
{0.9881349416050229,0.0,0.0},
{1.472505191816446,0.0,0.0},
{2.143458883781023,0.0,0.0},
{3.046000665591347,0.0,0.0},
{0.0,0.3210552329271151,0.0},
{0.0,0.642110465854877,0.0},
{0.3540276943063825,1.0,0.0},
{0.6712910880413542,1.0,0.0},
{0.9885544817761234,1.0,0.0},
{1.305817875510892,1.0,0.0},
{1.623081269245661,1.0,0.0},
{1.970880549089311,1.0,0.0},
{2.447645719714413,1.0,0.0},
{3.107487573610847,1.0,0.0},
{0.0,1.44463166976017,0.0},
{0.6108464003645109,2.0,0.0},
{1.057249555453197,2.0,0.0},
{1.38791757619151,2.0,0.0},
{1.69395878809405,2.0,0.0},
{1.999999999996633,2.0,0.0},
{2.306041211900828,2.0,0.0},
{2.612082423805066,2.0,0.0},
{2.942750444544523,2.0,0.0},
{3.389153599634401,2.0,0.0},
{4.0,2.55536833023983,0.0},
{0.8925124263849343,3.0,0.0},
{1.552354280279,3.0,0.0},
{2.029119450903067,3.0,0.0},
{2.376918730749335,3.0,0.0},
{2.694182124485238,3.0,0.0},
{3.011445518221141,3.0,0.0},
{3.328708911957044,3.0,0.0},
{3.645972305692947,3.0,0.0},
{4.0,3.35788953414447,0.0},
{4.0,3.678944767072235,0.0},
{0.9539993344029392,4.0,0.0},
{1.856541116208232,4.0,0.0},
{2.527494808175549,4.0,0.0},
{3.011865058390351,4.0,0.0},
{3.364000443728221,4.0,0.0},
{3.682000221864111,4.0,0.0},
{0.5179741215542861,0.7354060488796876,0.0},
{1.157711822502198,0.7191237846752994,0.0},
{1.812663061132477,0.6549587713226899,0.0},
{0.8120672489372469,0.2901770377672407,0.0},
{1.141037425424827,0.314350812946716,0.0},
{0.4829119797279917,0.2913912480902312,0.0},
{1.464449568620628,0.7252418435043053,0.0},
{0.8450138912717832,0.6827772220117818,0.0},
{0.293096008031935,0.4862533640231421,0.0},
{2.594729774686186,0.4089941501139326,0.0},
{0.2449501882222669,0.7538519668666709,0.0},
{1.513646070419568,0.363122627521713,0.0},
{2.209263134401861,0.659554838430487,0.0},
{3.446888270435754,0.4891293179533764,0.0},
{0.6112454462163885,0.496943036734088,0.0},
{0.2328249625772861,0.233650100521839,0.0},
{1.519982847191851,1.733305692296824,0.0},
{2.162253527518261,1.728247569345213,0.0},
{2.791271096125224,1.6652903002111,0.0},
{1.132235685879371,1.287858139178217,0.0},
{0.5126593911738686,1.274758158665263,0.0},
{1.796980909167486,1.287980585213854,0.0},
{0.8880664519024379,1.611771725255491,0.0},
{2.115739298884252,1.329303867719686,0.0},
{1.464362533718051,1.276685162802369,0.0},
{1.222583565822353,1.727851391578429,0.0},
{0.8283663169501421,1.253888774633497,0.0},
{2.459061815847311,1.734960537043933,0.0},
{1.842687975729126,1.686048080719726,0.0},
{3.539472127136629,1.446042087593008,0.0},
{0.4425769905754876,1.600599051594118,0.0},
{2.500172343987173,1.366753044474662,0.0},
{3.165952004807078,1.678724786592576,0.0},
{1.587258055419033,1.490726313601581,0.0},
{1.30154034770945,1.481892608713102,0.0},
{0.231260046019242,1.237789754534016,0.0},
{2.480017151896904,2.266694308022766,0.0},
{1.837746474681109,2.271752428014147,0.0},
{1.208728906684843,2.334709704316858,0.0},
{2.867764317366679,2.712141860174812,0.0},
{3.487340608824995,2.725241841333843,0.0},
{2.203019090826201,2.712019413034327,0.0},
{3.111933555021393,2.38822827185202,0.0},
{1.884260700861782,2.6706961358047,0.0},
{2.535637465385971,2.723314835133679,0.0},
{2.777416434174795,2.272148605531002,0.0},
{2.157312028220145,2.313951921597696,0.0},
{1.540938188660765,2.26503946034944,0.0},
{3.171633684856043,2.746111226574222,0.0},
{0.4605278714891757,2.553957896080158,0.0},
{3.557423007490716,2.399400939998291,0.0},
{1.499827673910897,2.633246974804229,0.0},
{0.8340479850425968,2.321275217456535,0.0},
{2.412741945091408,2.509273677621358,0.0},
{2.698459654339902,2.518107382014022,0.0},
{3.768739946882412,2.762210245914529,0.0},
{3.482025880231095,3.2645939490211,0.0},
{2.842288177520691,3.280876214245706,0.0},
{2.187336941166115,3.34504122695096,0.0},
{3.187932751059286,3.709822962231244,0.0},
{2.858962575202843,3.685649181314051,0.0},
{3.517088020269471,3.7086087519086,0.0},
{2.535550434374279,3.274758154765005,0.0},
{3.154986116573478,3.317222781598743,0.0},
{3.70690399660223,3.513746636940347,0.0},
{1.405270225305586,3.591005926209255,0.0},
{3.755049814023505,3.246148034574621,0.0},
{2.486353925718891,3.636877368368828,0.0},
{1.790736881735966,3.340445151821517,0.0},
{0.5531117201387922,3.51087066816804,0.0},
{3.388754563535488,3.503056965025831,0.0},
{3.767175034311459,3.766349905056549,0.0},


};

int[][] conn = {
{66,68,58},
{29,48,46},
{86,102,53},
{58,91,72},
{58,72,66},
{40,105,42},
{68,69,58},
{56,87,86},
{46,104,29},
{32,86,53},
{47,76,44},
{63,76,47},
{62,89,61},
{58,79,57},
{71,78,50},
{68,74,69},
{60,75,74},
{70,74,68},
{36,104,45},
{57,79,56},
{34,39,38},
{33,45,44},
{60,80,75},
{52,104,36},
{53,102,54},
{32,53,42},
{73,74,70},
{51,105,39},
{60,74,73},
{31,105,51},
{75,83,69},
{74,75,69},
{69,83,79},
{37,62,28},
{69,79,58},
{29,52,6},
{29,104,52},
{42,105,31},
{38,62,37},
{7,29,6},
{26,33,25},
{14,34,13},
{18,31,17},
{39,40,38},
{45,46,44},
{45,84,36},
{6,52,5},
{17,51,16},
{31,51,17},
{57,91,58},
{29,50,48},
{18,42,31},
{46,47,44},
{40,41,38},
{5,52,36},
{44,76,43},
{46,48,47},
{41,62,38},
{40,53,41},
{48,49,47},
{53,54,41},
{19,42,18},
{49,63,47},
{49,64,63},
{49,65,64},
{65,66,64},
{66,72,64},
{65,67,66},
{67,68,66},
{67,70,68},
{64,77,63},
{72,77,64},
{48,78,49},
{49,78,65},
{80,81,75},
{39,85,51},
{33,84,45},
{13,37,12},
{25,43,24},
{27,84,26},
{9,35,8},
{34,85,39},
{15,85,14},
{34,38,37},
{33,44,43},
{5,36,4},
{54,102,81},
{21,55,20},
{79,83,56},
{81,83,75},
{81,98,54},
{28,62,61},
{12,37,28},
{26,84,33},
{65,71,67},
{65,78,71},
{14,85,34},
{11,59,10},
{56,100,55},
{41,89,62},
{16,97,2},
{2,97,15},
{88,91,30},
{61,98,80},
{50,78,48},
{0,99,27},
{4,99,0},
{22,95,3},
{3,95,21},
{1,96,9},
{10,96,1},
{91,92,30},
{55,57,56},
{81,87,83},
{23,92,22},
{24,30,23},
{20,32,19},
{12,28,11},
{54,89,41},
{63,88,76},
{15,97,85},
{27,99,84},
{89,98,61},
{70,82,73},
{83,87,56},
{51,97,16},
{34,37,13},
{33,43,25},
{32,42,19},
{80,98,81},
{81,102,87},
{45,104,46},
{20,55,32},
{39,105,40},
{36,99,4},
{77,88,63},
{84,99,36},
{57,92,91},
{85,97,51},
{80,94,61},
{24,103,30},
{8,101,7},
{30,92,23},
{72,91,77},
{28,59,11},
{73,90,60},
{86,100,56},
{60,94,80},
{55,100,32},
{67,82,70},
{87,102,86},
{73,82,35},
{35,93,8},
{59,96,10},
{54,98,89},
{55,95,57},
{71,82,67},
{35,96,73},
{57,95,92},
{50,93,71},
{9,96,35},
{61,94,90},
{21,95,55},
{73,96,59},
{7,101,29},
{90,94,60},
{71,93,82},
{92,95,22},
{29,101,50},
{28,90,59},
{82,93,35},
{61,90,28},
{76,88,30},
{43,103,24},
{76,103,43},
{93,101,8},
{59,90,73},
{32,100,86},
{30,103,76},
{50,101,93},
{42,53,40},
{77,91,88},

};

// surface node = scale3(0.05)*unitsphere;
// for(real[] xyz: coord) {
//     real x = xyz[0];
//     real y = xyz[1];
//     real[] xy = {x, y};
//     draw(shift(x,y,f((x,y)))*node, black);
// }

for(int[] id: conn) {
    real x1 = coord[id[0]][0];
    real y1 = coord[id[0]][1];
    real x2 = coord[id[1]][0];
    real y2 = coord[id[1]][1];
    real x3 = coord[id[2]][0];
    real y3 = coord[id[2]][1];

    draw((x1,y1,f((x1,y1)))--(x2,y2,f((x2,y2)))--(x3,y3,f((x3,y3)))--(x1,y1,f((x1,y1))),linewidth(0.5));
}