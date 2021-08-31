xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 102;
 64.63260;17.86680;-83.57240;,
 0.34880;17.86680;-100.79750;,
 -8.03630;65.95090;-65.89850;,
 58.41130;65.95090;-48.09340;,
 -21.47480;91.12240;-15.74690;,
 44.97370;91.12240;2.05800;,
 -37.42190;77.71350;43.77000;,
 29.02640;77.71350;61.57430;,
 -47.75920;28.91700;82.34940;,
 18.68910;28.91700;100.15370;,
 -48.06110;-28.77150;83.47640;,
 18.38710;-28.77150;101.28080;,
 -42.09530;-82.58150;57.60640;,
 22.18780;-82.58150;74.83160;,
 116.77270;-513.33752;-359.46390;,
 66.83940;-513.33752;-372.84299;,
 61.61910;-459.76819;-351.06250;,
 112.93100;-459.76819;-337.31351;,
 117.70460;-560.38568;-362.94199;,
 67.77140;-560.38568;-376.32129;,
 111.84860;-592.27271;-341.08829;,
 61.91630;-592.27271;-354.46811;,
 83.64790;-529.06958;-228.02820;,
 32.33630;-529.06958;-241.77730;,
 41.47970;-573.35449;-278.19891;,
 91.41230;-573.35449;-264.82010;,
 100.74390;-339.94540;-274.60999;,
 46.39200;-339.94540;-289.17310;,
 31.10690;-220.41150;-226.80969;,
 88.65110;-220.41150;-211.39090;,
 52.33170;-306.36551;-75.84310;,
 -5.21350;-306.36551;-91.26270;,
 13.46810;-417.86301;-166.29990;,
 67.82060;-417.86301;-151.73579;,
 131.42130;-459.72470;-320.87851;,
 118.86210;-489.44730;-274.00571;,
 123.92710;-537.34857;-303.02359;,
 134.80380;-511.60721;-343.61649;,
 129.48660;-572.41443;-323.77060;,
 136.29269;-556.30798;-349.16959;,
 84.14480;53.43240;-33.48330;,
 66.97830;12.80600;30.58360;,
 70.91800;-37.07310;0.00980;,
 89.12170;6.00830;-67.92960;,
 71.82120;80.04820;12.50850;,
 60.54800;53.36790;54.58180;,
 -46.88580;-37.07310;-31.55610;,
 -65.09050;-80.15560;36.38410;,
 -71.96030;-27.82080;62.02230;,
 -54.79360;12.80600;-2.04460;,
 -72.49710;26.68700;64.02680;,
 -61.22330;53.36790;21.95350;,
 37.98200;-572.41443;-348.28830;,
 31.17630;-588.52112;-322.88919;,
 21.54610;-563.08972;-286.94919;,
 32.42360;-537.34857;-327.54169;,
 12.26960;-519.17078;-252.32919;,
 24.82940;-489.44730;-299.20200;,
 -7.22050;-409.77289;-179.59000;,
 -26.60540;-300.12650;-107.24270;,
 -11.02820;-263.26010;-165.37880;,
 6.90080;-376.35391;-232.29021;,
 106.50340;-376.35391;-205.60210;,
 120.62460;-342.93521;-258.30231;,
 110.00290;-226.39500;-195.25861;,
 94.42550;-263.26010;-137.12260;,
 131.52060;-585.24878;-331.36401;,
 57.80180;70.69080;64.83080;,
 40.01710;-585.24878;-355.88181;,
 -63.97040;70.69080;32.20260;,
 -46.07620;-190.68130;-34.57770;,
 -28.95740;-150.16650;-98.46740;,
 36.47640;-195.10330;0.34780;,
 -24.07250;-195.10330;-15.87580;,
 99.12210;-109.65300;-132.62489;,
 82.00320;-150.16650;-68.73590;,
 15.84170;-100.64270;-164.83701;,
 76.39060;-100.64270;-148.61270;,
 49.27420;26.68700;96.65510;,
 49.81110;-27.82080;94.65040;,
 52.71330;-80.15560;67.94920;,
 64.88320;-190.68130;-4.84620;,
 78.84840;-300.12650;-78.98650;,
 92.38260;-409.77289;-152.90120;,
 106.30250;-519.17078;-227.13361;,
 113.05070;-563.08972;-262.43069;,
 101.83620;-597.93951;-303.72229;,
 122.68070;-588.52112;-298.37070;,
 -11.83780;-109.65300;-162.35640;,
 -28.68180;6.00830;-99.49540;,
 4.54880;-226.39500;-223.51480;,
 21.02200;-342.93521;-284.99069;,
 37.38880;-459.72470;-346.07379;,
 43.30030;-511.60721;-368.13449;,
 44.78790;-556.30798;-373.68750;,
 51.90390;-597.93951;-317.10211;,
 -49.95040;80.04820;-20.11980;,
 -37.62640;53.43240;-66.11160;,
 104.09200;-543.34583;-312.14139;,
 54.15980;-543.34583;-325.52060;,
 96.12440;-562.20068;-282.40689;,
 46.19230;-562.20068;-295.78699;;
 
 105;
 4;0,1,2,3;,
 4;3,2,4,5;,
 4;5,4,6,7;,
 4;7,6,8,9;,
 4;9,8,10,11;,
 4;11,10,12,13;,
 4;14,15,16,17;,
 4;18,19,15,14;,
 4;20,21,19,18;,
 4;22,23,24,25;,
 4;26,27,28,29;,
 4;30,31,32,33;,
 4;34,35,36,37;,
 4;37,36,38,39;,
 4;40,41,42,43;,
 4;44,45,41,40;,
 4;46,47,48,49;,
 4;49,48,50,51;,
 4;52,53,54,55;,
 4;55,54,56,57;,
 4;58,59,60,61;,
 4;62,63,64,65;,
 3;66,39,38;,
 3;67,45,44;,
 3;68,53,52;,
 3;69,51,50;,
 4;59,70,71,60;,
 4;72,73,31,30;,
 4;65,64,74,75;,
 4;28,76,77,29;,
 4;17,16,27,26;,
 4;35,34,63,62;,
 4;32,23,22,33;,
 4;57,56,58,61;,
 4;70,47,46,71;,
 4;13,12,73,72;,
 4;43,42,75,74;,
 4;76,1,0,77;,
 4;74,64,29,77;,
 4;43,74,77,0;,
 4;3,40,43,0;,
 4;5,44,40,3;,
 4;7,67,44,5;,
 4;9,78,67,7;,
 4;11,79,78,9;,
 4;13,80,79,11;,
 4;72,81,80,13;,
 4;30,82,81,72;,
 4;33,83,82,30;,
 4;22,84,83,33;,
 4;25,85,84,22;,
 4;86,87,85,25;,
 4;20,66,87,86;,
 4;18,39,66,20;,
 4;14,37,39,18;,
 4;17,34,37,14;,
 4;63,34,17,26;,
 4;64,63,26,29;,
 4;76,88,89,1;,
 4;28,90,88,76;,
 4;27,91,90,28;,
 4;16,92,91,27;,
 4;92,16,15,93;,
 4;93,15,19,94;,
 4;94,19,21,68;,
 4;68,21,95,53;,
 4;53,95,24,54;,
 4;54,24,23,56;,
 4;58,56,23,32;,
 4;59,58,32,31;,
 4;70,59,31,73;,
 4;47,70,73,12;,
 4;48,47,12,10;,
 4;50,48,10,8;,
 4;69,50,8,6;,
 4;96,69,6,4;,
 4;97,96,4,2;,
 4;89,97,2,1;,
 3;68,52,94;,
 4;94,52,55,93;,
 4;93,55,57,92;,
 4;92,57,61,91;,
 4;60,90,91,61;,
 4;71,88,90,60;,
 4;46,89,88,71;,
 4;89,46,49,97;,
 4;97,49,51,96;,
 3;69,96,51;,
 3;66,38,87;,
 4;36,85,87,38;,
 4;35,84,85,36;,
 4;83,84,35,62;,
 4;82,83,62,65;,
 4;81,82,65,75;,
 4;42,80,81,75;,
 4;41,79,80,42;,
 4;45,78,79,41;,
 3;67,78,45;,
 4;98,99,21,20;,
 4;100,25,24,101;,
 4;98,100,101,99;,
 4;21,99,101,95;,
 4;86,100,98,20;,
 3;86,25,100;,
 3;24,95,101;;
 
 MeshMaterialList {
  4;
  105;
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2;;
  Material {
   0.329600;0.524000;0.228800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.135200;0.329600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.207200;0.207200;0.207200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.765600;0.800000;0.276000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  146;
  -0.229638;0.489181;-0.841409;,
  -0.268868;0.686459;-0.675637;,
  -0.327529;0.919430;-0.217654;,
  -0.965921;-0.000037;-0.258837;,
  -0.965923;-0.000012;-0.258831;,
  -0.965926;0.000003;-0.258820;,
  -0.965926;-0.000001;-0.258819;,
  0.972428;-0.052615;0.227192;,
  0.970071;-0.029885;0.240974;,
  0.965927;0.000004;0.258816;,
  0.965926;-0.000000;0.258819;,
  0.133276;0.305974;0.942665;,
  0.192936;-0.222386;0.955678;,
  0.222501;-0.472571;0.852742;,
  -0.180598;0.398048;-0.899412;,
  -0.159774;0.230169;-0.959945;,
  -0.156673;-0.224662;-0.961759;,
  -0.965921;-0.000022;-0.258836;,
  -0.965923;-0.000007;-0.258828;,
  -0.965924;0.000005;-0.258826;,
  -0.965924;0.000002;-0.258826;,
  0.971031;-0.038371;0.235852;,
  0.968810;-0.019847;0.247007;,
  0.965925;-0.000015;0.258821;,
  0.965930;-0.000040;0.258804;,
  0.333930;-0.893520;0.300188;,
  0.234941;-0.690357;0.684259;,
  0.210934;-0.564949;0.797709;,
  -0.206570;0.431274;-0.878255;,
  -0.965926;-0.000002;-0.258817;,
  0.221839;-0.527494;0.820084;,
  0.970965;-0.037764;0.236222;,
  -0.194927;0.433290;-0.879922;,
  0.970988;-0.037976;0.236094;,
  0.212268;-0.529982;0.821013;,
  -0.965926;0.000003;-0.258820;,
  -0.216111;0.434978;-0.874123;,
  -0.965926;-0.000002;-0.258817;,
  0.227808;-0.522260;0.821796;,
  0.971315;-0.041055;0.234226;,
  0.434639;0.454247;-0.777656;,
  0.436999;0.459132;-0.773453;,
  0.429564;0.518583;-0.739288;,
  0.378866;0.742411;-0.552528;,
  0.215890;0.973856;-0.070682;,
  0.020255;0.841878;0.539288;,
  -0.055362;0.331877;0.941697;,
  -0.030105;-0.225465;0.973786;,
  -0.000658;-0.499553;0.866283;,
  0.007337;-0.557677;0.830025;,
  0.004812;-0.562966;0.826466;,
  -0.000064;-0.563784;0.825922;,
  0.003079;-0.601157;0.799125;,
  0.091982;-0.690626;0.717339;,
  0.418173;-0.737762;-0.529942;,
  0.443206;-0.251090;-0.860536;,
  0.445830;0.232440;-0.864411;,
  0.431939;0.413770;-0.801388;,
  0.430224;0.454534;-0.779940;,
  -0.006394;0.529812;-0.848091;,
  0.005756;0.468311;-0.883545;,
  0.011095;0.462678;-0.886457;,
  0.017061;0.462925;-0.886233;,
  0.027222;0.422298;-0.906048;,
  0.046624;0.237142;-0.970355;,
  0.046429;-0.251086;-0.966851;,
  -0.097186;-0.737757;-0.668034;,
  -0.439289;-0.893519;0.093001;,
  -0.438498;-0.686394;0.580158;,
  -0.402211;-0.594027;0.696677;,
  -0.413555;-0.556174;0.720863;,
  -0.418966;-0.555103;0.718560;,
  -0.424018;-0.548809;0.720429;,
  -0.436271;-0.487558;0.756277;,
  -0.462013;-0.217797;0.859714;,
  -0.422899;0.331878;0.843216;,
  -0.287183;0.841878;0.456911;,
  -0.151629;0.973855;-0.169157;,
  -0.054210;0.747321;-0.662249;,
  -0.965924;-0.000006;-0.258828;,
  -0.965925;0.000003;-0.258823;,
  -0.965925;0.000000;-0.258824;,
  -0.965926;0.000001;-0.258820;,
  -0.965926;-0.000001;-0.258818;,
  -0.965926;-0.000000;-0.258818;,
  -0.965926;0.000001;-0.258819;,
  -0.965926;0.000001;-0.258819;,
  -0.965924;-0.000017;-0.258828;,
  0.965927;-0.000015;0.258815;,
  0.968811;-0.019848;0.247004;,
  0.971031;-0.038370;0.235853;,
  0.970988;-0.037976;0.236092;,
  0.970965;-0.037763;0.236222;,
  0.971314;-0.041057;0.234229;,
  0.972427;-0.052617;0.227196;,
  0.970070;-0.029887;0.240978;,
  0.965926;0.000000;0.258820;,
  -0.220711;-0.522321;0.823692;,
  0.135194;-0.852737;-0.504542;,
  0.624838;0.417307;-0.659873;,
  0.620026;0.414834;-0.665944;,
  0.619840;0.467735;-0.630097;,
  0.572881;0.676803;-0.462326;,
  0.392468;0.919433;-0.024733;,
  0.175459;0.809473;0.560328;,
  0.507115;-0.782842;-0.360545;,
  0.616549;-0.224669;-0.754580;,
  0.620029;0.220937;-0.752828;,
  0.610687;0.381078;-0.694147;,
  0.612289;0.416714;-0.671901;,
  -0.258916;-0.782833;-0.565804;,
  -0.546279;-0.684588;0.482616;,
  -0.581772;-0.551424;0.597891;,
  -0.595760;-0.515333;0.616037;,
  -0.605199;-0.512131;0.609472;,
  -0.613151;-0.504696;0.607724;,
  -0.625956;-0.448803;0.637773;,
  -0.646589;-0.207477;0.734082;,
  -0.586754;0.305974;0.749733;,
  -0.432118;0.809472;0.397529;,
  -0.965924;-0.000005;-0.258827;,
  -0.965926;0.000001;-0.258820;,
  -0.965925;-0.000002;-0.258822;,
  -0.965926;-0.000000;-0.258819;,
  -0.965926;-0.000001;-0.258819;,
  -0.965926;0.000001;-0.258820;,
  -0.965926;0.000002;-0.258820;,
  -0.965926;-0.000000;-0.258818;,
  -0.965925;-0.000022;-0.258824;,
  0.965929;-0.000015;0.258808;,
  0.968812;-0.019849;0.247002;,
  0.971031;-0.038369;0.235854;,
  0.970989;-0.037975;0.236091;,
  0.970965;-0.037762;0.236221;,
  0.971313;-0.041059;0.234232;,
  0.972425;-0.052620;0.227201;,
  0.970069;-0.029890;0.240983;,
  0.965925;-0.000004;0.258824;,
  0.135199;-0.852722;-0.504565;,
  0.135189;-0.852751;-0.504519;,
  0.965924;-0.000002;0.258827;,
  0.965925;0.000003;0.258822;,
  -0.965926;-0.000008;-0.258820;,
  -0.965924;-0.000003;-0.258826;,
  -0.965927;-0.000013;-0.258813;,
  0.965926;0.000007;0.258818;;
  105;
  4;42,59,78,43;,
  4;43,78,77,44;,
  4;44,77,76,45;,
  4;45,76,75,46;,
  4;46,75,74,47;,
  4;47,74,73,48;,
  4;56,64,63,57;,
  4;55,65,64,56;,
  4;54,66,65,55;,
  4;52,69,68,53;,
  4;58,62,61,40;,
  4;50,71,70,51;,
  4;21,90,89,22;,
  4;22,89,88,23;,
  4;8,95,94,7;,
  4;9,96,95,8;,
  4;85,6,5,86;,
  4;86,5,4,87;,
  4;79,18,19,80;,
  4;80,19,20,81;,
  4;35,29,83,82;,
  4;91,33,31,92;,
  3;24,23,88;,
  3;10,96,9;,
  3;17,18,79;,
  3;3,87,4;,
  4;29,37,84,83;,
  4;49,72,71,50;,
  4;92,31,39,93;,
  4;61,60,41,40;,
  4;57,63,62,58;,
  4;90,21,33,91;,
  4;70,69,52,51;,
  4;81,20,35,82;,
  4;37,6,85,84;,
  4;48,73,72,49;,
  4;7,94,93,39;,
  4;60,59,42,41;,
  4;99,100,40,41;,
  4;101,99,41,42;,
  4;43,102,101,42;,
  4;44,103,102,43;,
  4;45,104,103,44;,
  4;46,11,104,45;,
  4;47,12,11,46;,
  4;48,13,12,47;,
  4;49,38,13,48;,
  4;50,30,38,49;,
  4;51,34,30,50;,
  4;52,27,34,51;,
  4;53,26,27,52;,
  4;25,25,26,53;,
  4;54,105,25,25;,
  4;55,106,105,54;,
  4;56,107,106,55;,
  4;57,108,107,56;,
  4;109,108,57,58;,
  4;100,109,58,40;,
  4;60,36,0,59;,
  4;61,28,36,60;,
  4;62,32,28,61;,
  4;63,14,32,62;,
  4;14,63,64,15;,
  4;15,64,65,16;,
  4;16,65,66,110;,
  4;110,66,67,67;,
  4;67,67,68,111;,
  4;111,68,69,112;,
  4;113,112,69,70;,
  4;114,113,70,71;,
  4;115,114,71,72;,
  4;116,115,72,73;,
  4;117,116,73,74;,
  4;118,117,74,75;,
  4;119,118,75,76;,
  4;2,119,76,77;,
  4;1,2,77,78;,
  4;0,1,78,59;,
  3;17,79,120;,
  4;120,79,80,121;,
  4;121,80,81,122;,
  4;122,81,82,123;,
  4;83,124,123,82;,
  4;84,125,124,83;,
  4;85,126,125,84;,
  4;126,85,86,127;,
  4;127,86,87,128;,
  3;3,128,87;,
  3;24,88,129;,
  4;89,130,129,88;,
  4;90,131,130,89;,
  4;132,131,90,91;,
  4;133,132,91,92;,
  4;134,133,92,93;,
  4;94,135,134,93;,
  4;95,136,135,94;,
  4;96,137,136,95;,
  3;10,137,96;,
  4;97,97,97,97;,
  4;98,138,138,98;,
  4;139,98,98,139;,
  4;140,140,141,141;,
  4;142,142,143,143;,
  3;142,144,142;,
  3;145,141,141;;
 }
 MeshTextureCoords {
  102;
  0.416670;0.594460;,
  0.416670;0.406480;,
  0.437500;0.406480;,
  0.437500;0.594460;,
  0.458330;0.406480;,
  0.458330;0.594460;,
  0.479170;0.406480;,
  0.479170;0.594460;,
  0.500000;0.406480;,
  0.500000;0.594460;,
  0.520830;0.406480;,
  0.520830;0.594460;,
  0.541670;0.406480;,
  0.541670;0.594460;,
  0.437500;0.594460;,
  0.437500;0.406480;,
  0.416670;0.406480;,
  0.416670;0.594460;,
  0.458330;0.594460;,
  0.458330;0.406480;,
  0.239580;0.297230;,
  0.739580;0.203240;,
  0.541670;0.594460;,
  0.541670;0.406480;,
  0.520830;0.406480;,
  0.520830;0.594460;,
  0.416670;0.594460;,
  0.416670;0.406480;,
  0.416670;0.406480;,
  0.416670;0.594460;,
  0.541670;0.594460;,
  0.541670;0.406480;,
  0.541670;0.406480;,
  0.541670;0.594460;,
  0.416670;0.688440;,
  0.479170;0.688440;,
  0.479170;0.688440;,
  0.437500;0.688440;,
  0.479170;0.688440;,
  0.458330;0.688440;,
  0.437500;0.688440;,
  0.479170;0.688440;,
  0.479170;0.688440;,
  0.416670;0.688440;,
  0.458330;0.688440;,
  0.479170;0.688440;,
  0.479170;0.312500;,
  0.541670;0.312500;,
  0.520830;0.312500;,
  0.479170;0.312500;,
  0.500000;0.312500;,
  0.479170;0.312500;,
  0.479170;0.312500;,
  0.500000;0.312500;,
  0.520830;0.312500;,
  0.479170;0.312500;,
  0.541670;0.312500;,
  0.479170;0.312500;,
  0.541670;0.312500;,
  0.541670;0.312500;,
  0.479170;0.312500;,
  0.479170;0.312500;,
  0.479170;0.688440;,
  0.416670;0.688440;,
  0.416670;0.688440;,
  0.479170;0.688440;,
  0.479170;0.688440;,
  0.479170;0.688440;,
  0.479170;0.312500;,
  0.479170;0.312500;,
  0.541670;0.312500;,
  0.479170;0.312500;,
  0.541670;0.594460;,
  0.541670;0.406480;,
  0.416670;0.688440;,
  0.479170;0.688440;,
  0.416670;0.406480;,
  0.416670;0.594460;,
  0.500000;0.688440;,
  0.520830;0.688440;,
  0.541670;0.688440;,
  0.541670;0.688440;,
  0.541670;0.688440;,
  0.541670;0.688440;,
  0.541670;0.688440;,
  0.520830;0.688440;,
  0.500000;0.594460;,
  0.500000;0.688440;,
  0.416670;0.312500;,
  0.416670;0.312500;,
  0.416670;0.312500;,
  0.416670;0.312500;,
  0.416670;0.312500;,
  0.437500;0.312500;,
  0.458330;0.312500;,
  0.500000;0.406480;,
  0.458330;0.312500;,
  0.437500;0.312500;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.327260;0.745180;,
  0.698920;0.627070;;
 }
}