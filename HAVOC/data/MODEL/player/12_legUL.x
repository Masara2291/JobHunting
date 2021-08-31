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
 205;
 13.57665;-31.46450;8.94430;,
 8.61285;-31.99269;13.50940;,
 8.30025;-38.60769;12.69020;,
 13.05165;-38.04699;8.35641;,
 13.47645;-25.22298;8.98720;,
 8.44305;-25.69908;13.65081;,
 -4.91205;-33.08180;13.50610;,
 -9.86974;-33.55130;8.92270;,
 -8.69755;-40.01889;8.32670;,
 -3.95535;-39.54429;12.69080;,
 -5.50425;-26.94069;13.64470;,
 -10.53465;-27.37939;8.97560;,
 12.92375;-18.82967;-5.85310;,
 7.92865;-19.36147;-10.53499;,
 7.15125;-12.88187;-10.84399;,
 12.02945;-12.28457;-6.17979;,
 13.47535;-25.21958;-5.48540;,
 8.44515;-25.65758;-10.15509;,
 -5.84055;-20.73007;-10.52569;,
 -10.84924;-21.12467;-5.84199;,
 -10.86915;-14.71357;-6.17239;,
 -5.96405;-14.33237;-10.83789;,
 -5.50165;-26.93949;-10.14219;,
 -10.54075;-27.34458;-5.47539;,
 12.93415;-18.91697;8.71851;,
 7.93035;-19.38607;13.40180;,
 12.04675;-12.40667;8.28790;,
 7.15375;-12.90257;12.95510;,
 -5.84515;-20.73827;13.40080;,
 -10.84844;-21.12967;8.71310;,
 -5.97345;-14.32867;12.95980;,
 -10.87015;-14.71247;8.28760;,
 -9.88714;-33.43699;-4.98799;,
 -4.90815;-33.11860;-9.55449;,
 -3.95015;-39.60830;-8.55819;,
 -8.72204;-39.85250;-4.22439;,
 -10.54075;-27.34458;-5.47539;,
 8.61815;-31.88540;-9.57129;,
 13.57635;-31.55960;-4.98249;,
 13.04945;-38.19529;-4.20850;,
 8.30505;-38.45600;-8.57570;,
 13.47535;-25.21958;-5.48540;,
 -10.35735;-33.52970;1.96570;,
 -9.18884;-39.96859;2.04830;,
 -9.88714;-33.43699;-4.98799;,
 -8.72204;-39.85250;-4.22439;,
 -11.01595;-27.39948;1.74980;,
 -10.54075;-27.34458;-5.47539;,
 13.04945;-38.19529;-4.20850;,
 13.57635;-31.55960;-4.98249;,
 14.05425;-31.47100;1.98320;,
 13.52805;-38.07969;2.07730;,
 13.95355;-25.17777;1.75150;,
 13.47535;-25.21958;-5.48540;,
 -11.32724;-21.15707;1.43530;,
 -10.84924;-21.12467;-5.84199;,
 -11.34854;-14.73907;1.05680;,
 -10.86915;-14.71357;-6.17239;,
 12.92375;-18.82967;-5.85310;,
 13.40605;-18.82567;1.43271;,
 12.51435;-12.29217;1.05400;,
 12.02945;-12.28457;-6.17979;,
 5.31655;-0.78407;-11.37530;,
 -5.73464;-2.25647;-11.37969;,
 -5.48625;-0.09707;-11.07789;,
 4.77085;1.32043;-11.05280;,
 -5.96785;6.25073;-6.48739;,
 3.67305;7.55383;-6.51649;,
 8.14995;4.49413;-3.83450;,
 8.85645;1.89443;-6.75160;,
 9.76635;-0.16667;-6.81110;,
 -10.23685;-2.80067;-6.80269;,
 -9.63385;-0.64967;-6.74869;,
 -9.52854;2.04313;-3.72379;,
 8.14995;4.49413;-3.83450;,
 8.26005;2.33973;-0.05589;,
 9.28095;1.95793;0.18491;,
 8.85645;1.89443;-6.75160;,
 10.22895;-0.10777;0.31400;,
 9.76635;-0.16667;-6.81110;,
 8.86575;1.90463;7.12400;,
 9.76955;-0.17377;7.44040;,
 8.46435;4.01803;5.66290;,
 -10.23685;-2.80067;-6.80269;,
 -10.70844;-2.84917;0.32680;,
 -10.07465;-0.70387;0.20200;,
 -9.63385;-0.64967;-6.74869;,
 -9.14415;-0.19967;0.17800;,
 -9.52854;2.04313;-3.72379;,
 -9.65625;-0.64367;7.14670;,
 -9.98105;2.08573;5.41150;,
 -10.24474;-2.78797;7.45330;,
 -5.75705;-2.22347;12.01330;,
 -5.50995;-0.07647;11.44430;,
 -9.65625;-0.64367;7.14670;,
 -5.95255;4.03963;8.88580;,
 -9.98105;2.08573;5.41150;,
 5.31065;-0.75557;12.00950;,
 4.77355;1.34323;11.43770;,
 -5.50995;-0.07647;11.44430;,
 3.86475;5.22933;9.20030;,
 -5.95255;4.03963;8.88580;,
 5.31065;-0.75557;12.00950;,
 8.86575;1.90463;7.12400;,
 4.77355;1.34323;11.43770;,
 8.46435;4.01803;5.66290;,
 -6.38245;8.29823;-1.68669;,
 -5.21125;0.44843;0.21201;,
 4.40365;1.79233;0.12381;,
 3.39155;9.58613;-1.78489;,
 -6.35165;5.82543;5.58550;,
 3.44265;6.98113;6.27250;,
 10.90045;-5.47817;-6.55990;,
 6.19525;-6.10387;-11.21479;,
 12.02945;-12.28457;-6.17979;,
 -5.91125;-7.58807;-11.21109;,
 -10.65675;-8.04707;-6.55159;,
 -10.86915;-14.71357;-6.17239;,
 -5.92775;-7.56557;12.50800;,
 -10.65915;-8.03807;7.85060;,
 10.91085;-5.55157;7.84510;,
 6.19235;-6.09827;12.50320;,
 -11.13785;-8.08207;0.64960;,
 -10.65675;-8.04707;-6.55159;,
 10.90045;-5.47817;-6.55990;,
 11.38095;-5.45537;0.64250;,
 -9.69015;4.94993;-1.10150;,
 -9.14564;-0.19837;0.22040;,
 -9.67644;3.45863;3.22150;,
 8.26005;2.33973;-0.05589;,
 7.45215;5.46193;4.41760;,
 7.41035;7.26083;-1.29709;,
 6.36555;-51.68660;9.07570;,
 -1.19475;-52.43209;9.07210;,
 -0.56205;-54.56220;8.11540;,
 5.85615;-53.87439;8.11880;,
 -0.34535;-54.81260;6.27470;,
 5.65935;-54.15999;6.27230;,
 5.65935;-54.15999;6.27230;,
 8.78005;-53.75149;4.27160;,
 9.40605;-53.48870;4.98130;,
 5.85615;-53.87439;8.11880;,
 10.27205;-51.25389;5.61040;,
 6.36555;-51.68660;9.07570;,
 -1.19475;-52.43209;9.07210;,
 -5.08755;-52.83550;5.58340;,
 -4.09365;-54.93640;4.95620;,
 -0.56205;-54.56220;8.11540;,
 -3.44475;-55.07500;4.26200;,
 -0.34535;-54.81260;6.27470;,
 8.78005;-53.75149;4.27160;,
 8.99675;-53.79560;1.77610;,
 9.85265;-53.43889;1.78431;,
 9.40605;-53.48870;4.98130;,
 10.74195;-51.21520;1.83921;,
 9.42075;-53.48439;-1.41199;,
 10.27575;-51.27439;-1.93159;,
 8.79175;-53.74900;-0.71560;,
 -5.55115;-52.86429;1.83620;,
 -4.51485;-54.97910;1.79260;,
 -4.09365;-54.93640;4.95620;,
 -3.63045;-55.16779;1.79150;,
 -3.44475;-55.07500;4.26200;,
 -4.06935;-54.92990;-1.36990;,
 -3.42435;-55.07109;-0.67750;,
 -5.08535;-52.80169;-1.90869;,
 -1.19265;-52.43390;-5.38459;,
 -0.55385;-54.55510;-4.52439;,
 -4.06935;-54.92990;-1.36990;,
 -0.33415;-54.80989;-2.69170;,
 -3.42435;-55.07109;-0.67750;,
 -1.19265;-52.43390;-5.38459;,
 6.35795;-51.65239;-5.39360;,
 5.85375;-53.86760;-4.54359;,
 -0.55385;-54.55510;-4.52439;,
 5.66255;-54.15789;-2.71869;,
 -0.33415;-54.80989;-2.69170;,
 10.27575;-51.27439;-1.93159;,
 9.42075;-53.48439;-1.41199;,
 8.79175;-53.74900;-0.71560;,
 -0.26705;-54.89540;1.79030;,
 5.59625;-54.25480;1.77321;,
 11.71855;-45.37510;6.99040;,
 7.36575;-45.88510;10.90581;,
 -2.52105;-46.71019;10.90510;,
 -6.86275;-47.15480;6.96020;,
 -6.87885;-47.04159;-3.02900;,
 -2.51815;-46.74920;-6.94869;,
 -3.95015;-39.60830;-8.55819;,
 7.36315;-45.78009;-6.96040;,
 11.71725;-45.47259;-3.02749;,
 13.04945;-38.19529;-4.20850;,
 -7.34805;-47.13710;1.96330;,
 -2.51815;-46.74920;-6.94869;,
 12.19545;-45.37819;1.98310;,
 11.71725;-45.47259;-3.02749;,
 8.99675;-53.79560;1.77610;,
 8.78005;-53.75149;4.27160;,
 -3.44475;-55.07500;4.26200;,
 -3.63045;-55.16779;1.79150;,
 -3.42435;-55.07109;-0.67750;,
 -5.21335;0.47463;0.14860;,
 -9.14415;-0.19967;0.17800;,
 -9.98105;2.08573;5.41150;,
 8.46435;4.01803;5.66290;;
 
 146;
 4;0,1,2,3;,
 4;0,4,5,1;,
 4;6,7,8,9;,
 4;6,10,11,7;,
 4;12,13,14,15;,
 4;12,16,17,13;,
 4;18,19,20,21;,
 4;18,22,23,19;,
 4;24,25,5,4;,
 4;24,26,27,25;,
 4;28,29,11,10;,
 4;28,30,31,29;,
 4;32,33,34,35;,
 4;32,36,22,33;,
 4;37,38,39,40;,
 4;37,17,41,38;,
 4;1,6,9,2;,
 4;1,5,10,6;,
 4;37,33,22,17;,
 4;37,40,34,33;,
 4;8,7,42,43;,
 4;43,42,44,45;,
 4;42,46,47,44;,
 4;7,11,46,42;,
 4;48,49,50,51;,
 4;51,50,0,3;,
 4;50,52,4,0;,
 4;49,53,52,50;,
 4;13,18,21,14;,
 4;13,17,22,18;,
 4;11,29,54,46;,
 4;46,54,55,47;,
 4;54,56,57,55;,
 4;29,31,56,54;,
 4;25,28,10,5;,
 4;25,27,30,28;,
 4;53,58,59,52;,
 4;52,59,24,4;,
 4;59,60,26,24;,
 4;58,61,60,59;,
 4;62,63,64,65;,
 4;65,64,66,67;,
 4;67,68,69,65;,
 4;65,69,70,62;,
 4;63,71,72,64;,
 4;64,72,73,66;,
 4;74,75,76,77;,
 4;77,76,78,79;,
 4;76,80,81,78;,
 4;75,82,80,76;,
 4;83,84,85,86;,
 4;86,85,87,88;,
 4;85,89,90,87;,
 4;84,91,89,85;,
 4;91,92,93,94;,
 4;94,93,95,96;,
 4;92,97,98,99;,
 4;99,98,100,101;,
 4;102,81,103,104;,
 4;104,103,105,100;,
 4;106,107,108,109;,
 4;108,107,110,111;,
 4;112,113,62,70;,
 4;112,114,14,113;,
 4;115,116,71,63;,
 4;115,21,117,116;,
 4;118,119,31,30;,
 4;118,92,91,119;,
 4;120,121,27,26;,
 4;120,81,102,121;,
 4;21,115,113,14;,
 4;113,115,63,62;,
 4;31,119,122,56;,
 4;56,122,123,57;,
 4;122,84,83,123;,
 4;119,91,84,122;,
 4;121,118,30,27;,
 4;121,102,92,118;,
 4;61,124,125,60;,
 4;60,125,120,26;,
 4;125,78,81,120;,
 4;124,79,78,125;,
 4;126,127,107,106;,
 4;107,127,128,110;,
 4;129,108,111,130;,
 4;129,131,109,108;,
 4;132,133,134,135;,
 4;135,134,136,137;,
 4;138,139,140,141;,
 4;141,140,142,143;,
 4;144,145,146,147;,
 4;147,146,148,149;,
 4;150,151,152,153;,
 4;153,152,154,142;,
 4;152,155,156,154;,
 4;151,157,155,152;,
 4;145,158,159,160;,
 4;160,159,161,162;,
 4;159,163,164,161;,
 4;158,165,163,159;,
 4;165,166,167,168;,
 4;168,167,169,170;,
 4;171,172,173,174;,
 4;174,173,175,176;,
 4;172,177,178,173;,
 4;173,178,179,175;,
 4;136,180,181,137;,
 4;181,180,176,175;,
 4;182,183,143,142;,
 4;182,3,2,183;,
 4;184,185,145,144;,
 4;184,9,8,185;,
 4;186,187,166,165;,
 4;186,45,188,187;,
 4;189,190,177,172;,
 4;189,40,191,190;,
 4;9,184,183,2;,
 4;183,184,144,143;,
 4;8,43,192,185;,
 4;185,192,158,145;,
 4;192,186,165,158;,
 4;43,45,186,192;,
 4;189,193,34,40;,
 4;189,172,171,193;,
 4;48,51,194,195;,
 4;195,194,154,156;,
 4;194,182,142,154;,
 4;51,3,182,194;,
 4;196,181,175,179;,
 4;196,197,137,181;,
 4;198,199,180,136;,
 4;180,199,200,176;,
 3;108,201,107;,
 4;101,100,111,110;,
 4;201,202,127,107;,
 4;202,203,128,127;,
 4;203,101,110,128;,
 4;100,204,130,111;,
 3;204,129,130;,
 3;201,108,107;,
 4;67,66,106,109;,
 4;73,202,127,126;,
 4;202,201,107,127;,
 4;66,73,126,106;,
 3;129,68,131;,
 4;68,67,109,131;;
 
 MeshMaterialList {
  9;
  146;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.401600;0.401600;0.401600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.000000;0.608800;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.787200;0.800000;0.016000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.633600;0.373600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.674400;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.184800;0.184800;0.184800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.348000;0.348000;0.398400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  158;
  0.367746;-0.197786;0.908649;,
  0.888925;-0.172333;0.424398;,
  -0.335784;-0.228153;0.913890;,
  -0.867317;-0.248595;0.431232;,
  0.373051;0.004301;-0.927801;,
  0.898964;0.109892;-0.424014;,
  -0.368259;-0.046703;-0.928550;,
  -0.905383;-0.013429;-0.424384;,
  0.362761;0.028729;0.931439;,
  0.900702;0.052751;0.431223;,
  -0.900151;-0.064324;0.430802;,
  -0.364681;-0.018699;0.930945;,
  -0.867177;-0.249055;-0.431249;,
  -0.335687;-0.229964;-0.913472;,
  0.366570;-0.199541;-0.908741;,
  0.888395;-0.173511;-0.425027;,
  0.369130;-0.050547;-0.928002;,
  0.902894;0.016191;-0.429557;,
  -0.896807;-0.100949;-0.430751;,
  -0.357001;-0.098137;-0.928935;,
  -0.906308;0.036968;0.420997;,
  -0.376680;0.063395;0.924172;,
  0.360460;0.113295;0.925869;,
  0.892079;0.159035;0.422970;,
  0.368007;0.139584;-0.919286;,
  0.279090;0.765994;-0.579104;,
  -0.391104;0.087355;-0.916192;,
  -0.473106;0.664449;-0.578514;,
  0.793993;0.569799;-0.211906;,
  0.872191;0.271980;-0.406582;,
  -0.912845;0.368327;-0.176208;,
  -0.903288;0.149795;-0.402036;,
  -0.815411;0.504493;0.283886;,
  -0.898455;0.195212;0.393282;,
  -0.395811;0.194165;0.897571;,
  -0.431773;0.631003;0.644522;,
  0.348821;0.244832;0.904644;,
  0.243745;0.717600;0.652410;,
  0.741868;0.639862;0.200521;,
  0.860024;0.315577;0.400961;,
  0.356343;-0.386983;0.850449;,
  0.143894;-0.986147;0.082518;,
  -0.290886;-0.408740;0.865053;,
  0.067691;-0.994031;0.085559;,
  0.244135;-0.967234;0.069684;,
  0.834379;-0.365555;0.412530;,
  -0.045237;-0.996194;0.074503;,
  -0.797774;-0.422768;0.429913;,
  -0.046245;-0.995981;-0.076701;,
  -0.802990;-0.406997;-0.435385;,
  -0.298696;-0.375072;-0.877555;,
  0.066963;-0.993921;-0.087389;,
  0.355843;-0.350960;-0.866142;,
  0.144166;-0.985933;-0.084574;,
  0.245114;-0.966898;-0.070898;,
  0.838260;-0.348627;-0.419260;,
  -0.882742;0.355130;0.307652;,
  -0.983634;0.180177;-0.000858;,
  -0.408986;0.362771;0.837334;,
  0.306289;0.444063;0.842018;,
  -0.048313;0.513282;0.856859;,
  -0.143833;0.948772;0.281324;,
  0.378242;0.023177;-0.925417;,
  0.897341;0.143577;-0.417331;,
  -0.908432;0.024053;-0.417340;,
  -0.376122;-0.027058;-0.926175;,
  -0.907994;0.074450;0.412315;,
  -0.384567;0.085198;0.919157;,
  0.363411;0.134174;0.921916;,
  0.888944;0.192563;0.415570;,
  0.285093;-0.797771;0.531303;,
  -0.126096;-0.826254;0.549002;,
  0.597392;-0.756253;0.266842;,
  -0.477556;-0.830476;0.286794;,
  0.949144;-0.314837;0.001581;,
  0.602810;-0.749968;-0.272340;,
  0.255404;-0.966834;0.000009;,
  -0.057697;-0.998334;-0.001032;,
  -0.482589;-0.825407;-0.292937;,
  -0.925517;-0.378697;-0.002540;,
  -0.132235;-0.816142;-0.562518;,
  0.340267;-0.662356;-0.667460;,
  0.123049;-0.992401;-0.000195;,
  0.092214;-0.995739;-0.000264;,
  0.362990;-0.298708;0.882617;,
  0.866517;-0.270397;0.419564;,
  -0.839617;-0.328679;0.432452;,
  -0.315243;-0.321285;0.892972;,
  -0.320783;-0.292869;-0.900737;,
  -0.843558;-0.314460;-0.435345;,
  0.868077;-0.257561;-0.424389;,
  0.361469;-0.269724;-0.892518;,
  0.367252;-0.070536;0.927443;,
  0.901216;-0.048821;0.430612;,
  -0.889282;-0.149277;0.432312;,
  -0.354021;-0.111156;0.928608;,
  0.369367;-0.011325;-0.929214;,
  0.900557;0.075328;-0.428162;,
  -0.902157;-0.049407;-0.428568;,
  -0.362890;-0.062404;-0.929740;,
  0.359369;0.088446;0.928995;,
  0.895634;0.120838;0.428062;,
  -0.904325;-0.003032;0.426834;,
  -0.371012;0.038173;0.927843;,
  -0.348500;-0.156185;-0.924205;,
  -0.886076;-0.170022;-0.431233;,
  0.900929;-0.069857;-0.428306;,
  0.369327;-0.115828;-0.922053;,
  -0.975803;-0.218650;-0.000925;,
  -0.996855;-0.079245;0.000206;,
  0.990919;-0.134456;0.001282;,
  0.998744;0.050107;-0.000096;,
  -0.999896;0.014388;-0.000092;,
  0.988745;0.149609;0.000086;,
  0.331509;0.446882;-0.830902;,
  -0.434938;0.370860;-0.820543;,
  0.791456;0.516238;-0.327254;,
  -0.884509;0.383392;-0.265808;,
  0.949930;0.312462;-0.000200;,
  0.789280;0.517614;0.330321;,
  0.869110;0.492402;-0.046789;,
  -0.569495;0.819789;-0.060177;,
  -0.989390;-0.145283;-0.000068;,
  0.999416;-0.034169;0.000317;,
  -0.999647;-0.026574;0.000068;,
  0.993867;0.110581;-0.000049;,
  0.849167;0.527577;-0.024037;,
  -0.922948;0.384857;0.007178;,
  -0.998409;0.056390;-0.000308;,
  0.982393;0.186826;0.000125;,
  0.702777;-0.711410;0.000923;,
  -0.603315;-0.797498;-0.002703;,
  -0.959570;-0.281466;-0.001692;,
  0.975972;-0.217891;0.001765;,
  -0.103078;0.681821;0.724220;,
  -0.062233;0.697847;-0.713538;,
  -0.073784;0.756619;-0.649680;,
  -0.047776;0.235693;0.970653;,
  -0.081992;0.801803;-0.591937;,
  -0.075303;0.783818;-0.616409;,
  -0.035073;0.234612;0.971456;,
  -0.003299;0.238454;0.971148;,
  0.015768;0.243322;0.969818;,
  -0.117416;0.926304;-0.358014;,
  0.105664;-0.983410;-0.147443;,
  0.197844;0.852275;0.484236;,
  -0.421661;0.783670;0.456139;,
  -0.108300;0.903388;-0.414922;,
  -0.676244;0.639264;0.366109;,
  0.739405;0.660058;0.132683;,
  0.143833;-0.948772;-0.281324;,
  0.124461;-0.915552;-0.382459;,
  -0.477037;0.765499;-0.431796;,
  0.253629;0.870083;-0.422644;,
  -0.994563;-0.103965;0.005981;,
  -0.951505;0.220141;-0.214887;,
  0.161522;-0.970885;-0.176896;,
  0.857118;0.487240;-0.167171;;
  146;
  4;93,92,0,1;,
  4;93,9,8,92;,
  4;95,94,3,2;,
  4;95,11,10,94;,
  4;97,96,4,5;,
  4;97,17,16,96;,
  4;99,98,7,6;,
  4;99,19,18,98;,
  4;101,100,8,9;,
  4;101,23,22,100;,
  4;103,102,10,11;,
  4;103,21,20,102;,
  4;105,104,13,12;,
  4;105,18,19,104;,
  4;107,106,15,14;,
  4;107,16,17,106;,
  4;92,95,2,0;,
  4;92,8,11,95;,
  4;107,104,19,16;,
  4;107,14,13,104;,
  4;3,94,122,108;,
  4;108,122,105,12;,
  4;122,109,18,105;,
  4;94,10,109,122;,
  4;15,106,123,110;,
  4;110,123,93,1;,
  4;123,111,9,93;,
  4;106,17,111,123;,
  4;96,99,6,4;,
  4;96,16,19,99;,
  4;10,102,124,109;,
  4;109,124,98,18;,
  4;124,112,7,98;,
  4;102,20,112,124;,
  4;100,103,11,8;,
  4;100,22,21,103;,
  4;17,97,125,111;,
  4;111,125,101,9;,
  4;125,113,23,101;,
  4;97,5,113,125;,
  4;24,26,115,114;,
  4;114,115,27,25;,
  4;25,28,116,114;,
  4;114,116,29,24;,
  4;26,31,117,115;,
  4;115,117,30,27;,
  4;28,120,126,116;,
  4;116,126,118,29;,
  4;126,119,39,118;,
  4;120,38,119,126;,
  4;31,57,127,117;,
  4;117,127,121,30;,
  4;127,56,32,121;,
  4;57,33,56,127;,
  4;33,34,58,56;,
  4;56,58,35,32;,
  4;34,36,59,58;,
  4;58,59,37,35;,
  4;36,39,119,59;,
  4;59,119,38,37;,
  4;140,134,60,141;,
  4;136,135,135,136;,
  4;63,62,24,29;,
  4;63,5,4,62;,
  4;65,64,31,26;,
  4;65,6,7,64;,
  4;67,66,20,21;,
  4;67,34,33,66;,
  4;69,68,22,23;,
  4;69,39,36,68;,
  4;6,65,62,4;,
  4;62,65,26,24;,
  4;20,66,128,112;,
  4;112,128,64,7;,
  4;128,57,31,64;,
  4;66,33,57,128;,
  4;68,67,21,22;,
  4;68,36,34,67;,
  4;5,63,129,113;,
  4;113,129,69,23;,
  4;129,118,39,69;,
  4;63,29,118,129;,
  4;137,137,134,140;,
  4;135,143,138,135;,
  4;139,136,136,139;,
  4;142,142,141,60;,
  4;40,42,71,70;,
  4;70,71,43,41;,
  4;41,44,72,70;,
  4;70,72,45,40;,
  4;42,47,73,71;,
  4;71,73,46,43;,
  4;44,76,130,72;,
  4;72,130,74,45;,
  4;130,75,55,74;,
  4;76,54,75,130;,
  4;47,79,131,73;,
  4;73,131,77,46;,
  4;131,78,48,77;,
  4;79,49,78,131;,
  4;49,50,80,78;,
  4;78,80,51,48;,
  4;50,52,81,80;,
  4;80,144,53,51;,
  4;52,55,75,81;,
  4;81,75,54,53;,
  4;43,83,82,41;,
  4;82,83,51,53;,
  4;85,84,40,45;,
  4;85,1,0,84;,
  4;87,86,47,42;,
  4;87,2,3,86;,
  4;89,88,50,49;,
  4;89,12,13,88;,
  4;91,90,55,52;,
  4;91,14,15,90;,
  4;2,87,84,0;,
  4;84,87,42,40;,
  4;3,108,132,86;,
  4;86,132,79,47;,
  4;132,89,49,79;,
  4;108,12,89,132;,
  4;91,88,13,14;,
  4;91,52,50,88;,
  4;15,110,133,90;,
  4;90,133,74,55;,
  4;133,85,45,74;,
  4;110,1,85,133;,
  4;76,82,53,54;,
  4;76,44,41,82;,
  4;46,77,83,43;,
  4;83,77,48,51;,
  3;60,61,134;,
  4;35,37,145,146;,
  4;61,121,143,134;,
  4;121,147,138,143;,
  4;32,35,146,148;,
  4;37,38,149,145;,
  3;38,120,149;,
  3;150,151,150;,
  4;25,27,152,153;,
  4;30,154,154,155;,
  4;156,150,150,156;,
  4;27,30,155,152;,
  3;120,28,157;,
  4;28,25,153,157;;
 }
 MeshTextureCoords {
  205;
  0.327790;0.114390;,
  0.426580;0.113620;,
  0.428460;0.071510;,
  0.325980;0.072670;,
  0.328300;0.153410;,
  0.426150;0.153220;,
  0.573360;0.114010;,
  0.672320;0.113630;,
  0.674270;0.071540;,
  0.571490;0.072110;,
  0.573880;0.153280;,
  0.671730;0.153250;,
  0.375040;0.568330;,
  0.430430;0.568470;,
  0.414630;0.545770;,
  0.375070;0.545560;,
  0.375010;0.591110;,
  0.412700;0.591110;,
  0.569630;0.568700;,
  0.624960;0.568530;,
  0.624970;0.545930;,
  0.585520;0.546430;,
  0.587290;0.591110;,
  0.624960;0.591110;,
  0.328460;0.181470;,
  0.426390;0.181500;,
  0.328530;0.203750;,
  0.427270;0.203800;,
  0.573720;0.181330;,
  0.671550;0.181610;,
  0.572840;0.203540;,
  0.671460;0.203970;,
  0.625000;0.637070;,
  0.569180;0.636550;,
  0.584220;0.682230;,
  0.625000;0.681120;,
  0.625000;0.593030;,
  0.430530;0.635770;,
  0.375000;0.637580;,
  0.375000;0.682230;,
  0.415130;0.679530;,
  0.375000;0.592930;,
  0.750170;0.114070;,
  0.750310;0.072200;,
  0.841850;0.114800;,
  0.840760;0.070730;,
  0.750020;0.153380;,
  0.842940;0.158890;,
  0.159890;0.067770;,
  0.158450;0.113330;,
  0.250030;0.114040;,
  0.250020;0.072140;,
  0.250020;0.153360;,
  0.157010;0.158890;,
  0.749970;0.181660;,
  0.842740;0.181660;,
  0.749950;0.204050;,
  0.842540;0.204440;,
  0.157240;0.181830;,
  0.250020;0.181610;,
  0.250020;0.203970;,
  0.157480;0.204780;,
  0.435000;0.503340;,
  0.564450;0.503450;,
  0.561310;0.491900;,
  0.438240;0.491650;,
  0.558740;0.458880;,
  0.441010;0.458500;,
  0.393330;0.462040;,
  0.384160;0.467540;,
  0.375000;0.473030;,
  0.624980;0.472730;,
  0.616200;0.467390;,
  0.607430;0.462050;,
  0.162950;0.249960;,
  0.250030;0.249960;,
  0.250010;0.248370;,
  0.160260;0.248360;,
  0.250000;0.241870;,
  0.157560;0.246760;,
  0.339770;0.248380;,
  0.342410;0.246810;,
  0.337120;0.249960;,
  0.842290;0.246830;,
  0.749980;0.241950;,
  0.750280;0.248430;,
  0.839650;0.248410;,
  0.750710;0.250000;,
  0.837010;0.250000;,
  0.660920;0.248440;,
  0.664400;0.250000;,
  0.657430;0.246890;,
  0.579200;0.246820;,
  0.583470;0.248410;,
  0.652940;0.248440;,
  0.587750;0.250000;,
  0.648450;0.250000;,
  0.421490;0.250000;,
  0.424890;0.256370;,
  0.575300;0.254730;,
  0.428290;0.262750;,
  0.571410;0.262650;,
  0.420410;0.246840;,
  0.346900;0.248400;,
  0.424350;0.254790;,
  0.351390;0.250000;,
  0.558740;0.458880;,
  0.557980;0.375030;,
  0.441860;0.374820;,
  0.441010;0.458500;,
  0.571410;0.262650;,
  0.428290;0.262750;,
  0.375000;0.509290;,
  0.432770;0.522680;,
  0.375000;0.545560;,
  0.566920;0.522880;,
  0.624880;0.509140;,
  0.624770;0.545560;,
  0.571180;0.225300;,
  0.671160;0.225600;,
  0.328750;0.225430;,
  0.428740;0.225470;,
  0.749910;0.225650;,
  0.842410;0.225640;,
  0.157520;0.225770;,
  0.250010;0.225560;,
  0.607430;0.462050;,
  0.607800;0.374740;,
  0.608170;0.287430;,
  0.393140;0.374960;,
  0.392950;0.287870;,
  0.393330;0.462040;,
  0.437490;1.000000;,
  0.562970;1.000000;,
  0.559300;0.992120;,
  0.441120;0.992070;,
  0.555630;0.984250;,
  0.444750;0.984140;,
  0.427870;0.000000;,
  0.329970;0.000000;,
  0.324690;0.001560;,
  0.432190;0.001530;,
  0.319400;0.003120;,
  0.436510;0.003060;,
  0.563920;0.003140;,
  0.681500;0.003180;,
  0.677020;0.001590;,
  0.568690;0.001570;,
  0.672540;0.000000;,
  0.573460;0.000000;,
  0.309430;-0.000000;,
  0.248110;-0.000000;,
  0.248990;0.001550;,
  0.314420;0.001560;,
  0.249670;0.010980;,
  0.183570;0.001550;,
  0.180340;0.003100;,
  0.186790;0.000000;,
  0.750090;0.011080;,
  0.749680;0.001620;,
  0.685010;0.001590;,
  0.749160;-0.000000;,
  0.688520;-0.000000;,
  0.814350;0.001640;,
  0.809800;-0.000000;,
  0.818890;0.003280;,
  0.875000;0.003060;,
  0.872450;0.001530;,
  0.820890;0.001640;,
  0.869900;-0.000000;,
  0.822890;-0.000000;,
  0.563840;0.746850;,
  0.444110;0.746650;,
  0.448460;0.762410;,
  0.559650;0.756410;,
  0.451100;0.794920;,
  0.555450;0.765980;,
  0.375000;0.800760;,
  0.383430;0.806720;,
  0.391850;0.812680;,
  0.548120;0.875050;,
  0.452030;0.874750;,
  0.321890;0.036500;,
  0.432580;0.035710;,
  0.567600;0.036140;,
  0.678540;0.035780;,
  0.815590;0.036480;,
  0.875000;0.034360;,
  0.875000;0.065660;,
  0.438100;0.717040;,
  0.375000;0.742720;,
  0.375000;0.684670;,
  0.750290;0.036240;,
  0.574030;0.714540;,
  0.249960;0.036150;,
  0.170110;0.035430;,
  0.392220;0.874760;,
  0.392590;0.936850;,
  0.607600;0.936030;,
  0.606990;0.875060;,
  0.606370;0.814080;,
  0.557980;0.375030;,
  0.607800;0.374740;,
  0.608170;0.287430;,
  0.392950;0.287870;;
 }
}