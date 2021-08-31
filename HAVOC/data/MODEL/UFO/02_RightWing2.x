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
 42;
 146.59121;-4.30290;242.32531;,
 132.91810;-19.60070;249.18741;,
 90.80120;-29.20610;161.08120;,
 110.39770;-7.28000;151.24691;,
 114.14761;-14.00560;258.38471;,
 63.89740;-21.18620;174.26360;,
 109.04810;6.88800;260.71991;,
 56.58940;8.75910;177.61170;,
 122.72121;22.18580;253.85849;,
 76.18660;30.68520;167.77670;,
 141.49310;16.59070;244.66119;,
 103.09040;22.66530;154.59361;,
 146.59121;-4.30290;242.32531;,
 110.39770;-7.28000;151.24691;,
 44.20290;-38.15140;64.59530;,
 69.25660;-10.11990;52.02190;,
 9.80770;-27.89850;81.44850;,
 0.46480;10.38590;85.72760;,
 25.51850;38.41740;73.15420;,
 59.91440;28.16380;56.30100;,
 69.25660;-10.11990;52.02190;,
 18.27280;-28.13300;18.02640;,
 36.97540;-7.20720;8.64010;,
 -7.40530;-20.47920;30.60820;,
 -14.37940;8.10110;33.80300;,
 4.32390;29.02760;24.41670;,
 30.00130;21.37380;11.83490;,
 36.97540;-7.20720;8.64010;,
 132.91810;-19.60070;249.18741;,
 146.59121;-4.30290;242.32531;,
 209.72280;2.31420;412.44770;,
 114.14761;-14.00560;258.38471;,
 109.04810;6.88800;260.71991;,
 122.72121;22.18580;253.85849;,
 141.49310;16.59070;244.66119;,
 36.97540;-7.20720;8.64010;,
 18.27280;-28.13300;18.02640;,
 -0.12180;-0.30380;0.14070;,
 -7.40530;-20.47920;30.60820;,
 -14.37940;8.10110;33.80300;,
 4.32390;29.02760;24.41670;,
 30.00130;21.37380;11.83490;;
 
 30;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 4;3,2,14,15;,
 4;2,5,16,14;,
 4;5,7,17,16;,
 4;7,9,18,17;,
 4;9,11,19,18;,
 4;11,13,20,19;,
 4;15,14,21,22;,
 4;14,16,23,21;,
 4;16,17,24,23;,
 4;17,18,25,24;,
 4;18,19,26,25;,
 4;19,20,27,26;,
 3;28,29,30;,
 3;31,28,30;,
 3;32,31,30;,
 3;33,32,30;,
 3;34,33,30;,
 3;29,34,30;,
 3;35,36,37;,
 3;36,38,37;,
 3;38,39,37;,
 3;39,40,37;,
 3;40,41,37;,
 3;41,35,37;;
 
 MeshMaterialList {
  7;
  30;
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
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "C:\\Users\\gsp012\\Desktop\\UFO_Triangle_v1_L2.123c33ed20b0-6dc4-4836-9410-f5bf4abee507\\13885_UFO_Triangle_diffuse - Copy.jpg";
   }
  }
  Material {
   0.204000;0.225600;0.501600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.238400;0.599200;0.156800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.533600;0.210400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.060000;0.207200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.138400;0.197600;1.000000;;
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
  32;
  0.670993;-0.704045;-0.232572;,
  -0.185956;-0.960921;0.205065;,
  -0.814384;-0.256925;0.520354;,
  -0.587574;0.704055;0.398826;,
  0.268181;0.962609;-0.038248;,
  0.664346;-0.705050;-0.248092;,
  -0.193721;-0.962450;0.190162;,
  -0.823203;-0.257468;0.506011;,
  -0.596005;0.705062;0.384273;,
  0.261082;0.963832;-0.053521;,
  0.610624;-0.706354;-0.358053;,
  -0.251257;-0.965063;0.074319;,
  -0.883057;-0.259224;0.391169;,
  -0.652143;0.706346;0.275289;,
  0.210484;0.964841;-0.157413;,
  0.498504;-0.224203;-0.837393;,
  -0.034924;-0.824987;-0.564071;,
  -0.769900;-0.607563;-0.195244;,
  -0.971228;0.216127;-0.100030;,
  -0.433377;0.819283;-0.375447;,
  0.301318;0.596436;-0.743957;,
  0.674938;-0.703336;-0.223109;,
  -0.500959;-0.523973;-0.688834;,
  0.898521;0.258871;-0.354465;,
  0.892126;0.259065;-0.370129;,
  0.841730;0.258386;-0.474054;,
  -0.181211;-0.959858;0.214094;,
  -0.808913;-0.256555;0.528998;,
  -0.582370;0.703345;0.407617;,
  0.272460;0.961731;-0.028964;,
  0.902282;0.258718;-0.344895;,
  -0.263314;0.498234;-0.826092;;
  30;
  4;0,0,5,5;,
  4;1,1,6,6;,
  4;2,2,7,7;,
  4;3,3,8,8;,
  4;4,4,9,9;,
  4;23,23,24,24;,
  4;5,5,10,10;,
  4;6,6,11,11;,
  4;7,7,12,12;,
  4;8,8,13,13;,
  4;9,9,14,14;,
  4;24,24,25,25;,
  4;10,10,16,15;,
  4;11,11,17,16;,
  4;12,12,18,17;,
  4;13,13,19,18;,
  4;14,14,20,19;,
  4;25,25,15,20;,
  3;0,0,21;,
  3;1,1,26;,
  3;2,2,27;,
  3;3,3,28;,
  3;4,4,29;,
  3;23,23,30;,
  3;15,16,22;,
  3;16,17,22;,
  3;17,18,22;,
  3;18,19,31;,
  3;19,20,31;,
  3;20,15,31;;
 }
 MeshTextureCoords {
  42;
  0.375000;0.687500;,
  0.416670;0.687500;,
  0.416670;0.562190;,
  0.375000;0.562190;,
  0.458330;0.687500;,
  0.458330;0.562190;,
  0.500000;0.687500;,
  0.500000;0.562190;,
  0.541670;0.687500;,
  0.541670;0.562190;,
  0.583330;0.687500;,
  0.583330;0.562190;,
  0.625000;0.687500;,
  0.625000;0.562190;,
  0.416670;0.436870;,
  0.375000;0.436870;,
  0.458330;0.436870;,
  0.500000;0.436870;,
  0.541670;0.436870;,
  0.583330;0.436870;,
  0.625000;0.436870;,
  0.416670;0.311560;,
  0.375000;0.311560;,
  0.458330;0.311560;,
  0.500000;0.311560;,
  0.541670;0.311560;,
  0.583330;0.311560;,
  0.625000;0.311560;,
  0.421880;0.979070;,
  0.578120;0.979070;,
  0.500000;0.850000;,
  0.343750;0.843750;,
  0.421880;0.708430;,
  0.578120;0.708430;,
  0.656250;0.843750;,
  0.578120;0.020930;,
  0.421880;0.020930;,
  0.500000;0.162500;,
  0.343750;0.156250;,
  0.421880;0.291570;,
  0.578120;0.291570;,
  0.656250;0.156250;;
 }
}