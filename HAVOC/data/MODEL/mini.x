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
 282;
 166.06030;77.11990;95.65950;,
 151.57610;115.80600;51.96230;,
 38.14420;151.11960;92.20910;,
 161.10249;80.00700;-127.01220;,
 144.47980;94.76970;-117.50970;,
 196.30560;90.87830;-82.24860;,
 25.85700;58.13180;-121.34910;,
 161.10249;80.00700;-127.01220;,
 161.10249;7.07260;-127.01220;,
 55.47420;7.07260;-122.58920;,
 15.29750;151.11960;93.16570;,
 38.14420;151.11960;92.20910;,
 136.98030;195.77670;-20.41930;,
 67.38830;195.77670;18.85890;,
 -102.48400;7.07260;35.35630;,
 -99.84130;7.07260;98.46320;,
 -99.84130;16.47200;98.46320;,
 15.25000;7.07260;-120.90480;,
 -60.58480;7.07260;-117.72950;,
 -55.80160;24.45690;-117.92960;,
 -29.84120;118.80280;-119.01670;,
 -28.47220;123.77900;-119.07400;,
 -27.56220;123.77900;-119.11220;,
 -27.56220;123.77900;-119.11220;,
 -28.47220;123.77900;-119.07400;,
 -30.95490;123.77900;-107.73980;,
 -136.93221;7.07260;-33.71280;,
 -131.34210;73.85650;99.78230;,
 -71.31590;28.25310;-117.28000;,
 -81.00920;30.62480;-116.87430;,
 -68.78920;33.77000;-117.38570;,
 -83.50450;113.61160;52.99950;,
 -95.05830;110.63750;53.48330;,
 -85.89360;108.39520;53.09950;,
 -26.67260;123.77900;41.56300;,
 -44.00500;123.77900;51.34550;,
 -20.72810;123.77900;94.67420;,
 -9.69230;48.98120;-119.86050;,
 40.51970;7.07260;-121.96320;,
 -84.66110;121.06810;-39.90510;,
 -56.30550;123.77900;-22.76030;,
 -98.53050;123.77900;-97.50840;,
 -49.30980;80.45820;-163.78239;,
 -41.70220;75.69810;-118.51990;,
 -98.53050;123.77900;-97.50840;,
 -3.88730;109.41180;-120.10350;,
 -12.22120;123.77900;-119.75440;,
 11.12630;123.77900;-120.73220;,
 11.12630;123.77900;-120.73220;,
 -12.22120;123.77900;-119.75440;,
 -40.50330;96.93940;-82.42300;,
 -160.26711;108.53930;55.44840;,
 -160.23520;108.92450;56.21250;,
 -101.71330;108.98920;53.76190;,
 -88.14540;28.78820;-116.57530;,
 -108.80980;23.46980;-115.71000;,
 -164.23930;37.42710;-134.74980;,
 -87.06880;31.64130;-162.20120;,
 -101.71330;108.98920;53.76190;,
 -160.23520;108.92450;56.21250;,
 -98.98730;111.59860;53.64780;,
 -169.16080;112.26540;56.58620;,
 -108.80980;23.46980;-115.71000;,
 -167.33170;9.01650;-113.25960;,
 -167.33170;9.01650;-113.25960;,
 -86.25790;123.77900;53.11480;,
 -169.16080;123.77900;56.58620;,
 -53.30380;123.77900;-5.71350;,
 -70.60400;123.77900;25.17030;,
 -42.62440;72.34650;-118.48150;,
 -40.32410;74.54780;-118.57770;,
 -116.71420;125.24370;-32.19450;,
 -59.65380;57.87430;-163.34930;,
 117.93740;41.89670;44.56430;,
 117.93740;7.07260;44.56430;,
 114.37620;7.07260;-40.48400;,
 163.32010;7.07260;-74.05050;,
 170.05130;58.52220;86.68590;,
 -44.13010;40.11680;-118.41850;,
 31.60800;7.07260;-121.58990;,
 50.11820;7.07260;-103.45130;,
 48.72540;7.07260;-104.14850;,
 48.16490;7.07260;-105.36500;,
 31.60800;7.07260;-121.58990;,
 40.51970;7.07260;-121.96320;,
 15.25000;7.07260;-120.90480;,
 163.32010;7.07260;-74.05050;,
 114.37620;7.07260;-40.48400;,
 30.92430;80.66780;92.51140;,
 31.62580;80.09880;92.95810;,
 33.02240;79.75220;92.42350;,
 -20.72810;123.77900;94.67420;,
 -44.00500;123.77900;51.34550;,
 -60.19080;119.61260;52.02330;,
 117.93740;41.89670;44.56430;,
 170.05130;58.52220;86.68590;,
 -76.69960;123.77900;45.60440;,
 -78.84770;123.77900;52.80450;,
 -69.74040;123.77900;52.42310;,
 -104.53030;123.77900;43.23980;,
 -86.25790;123.77900;53.11480;,
 -170.58749;123.77900;22.51930;,
 -169.16080;123.77900;56.58620;,
 -50.70350;42.98460;-118.14320;,
 -52.05380;38.07730;-118.08670;,
 -62.25940;48.02620;-117.65920;,
 -68.13510;49.75850;-162.99400;,
 105.85160;123.77900;-124.69880;,
 144.47980;115.80600;-117.50970;,
 144.47980;94.76970;-117.50970;,
 94.22570;117.34650;-124.21200;,
 86.90730;123.77900;-123.90550;,
 105.85160;123.77900;-124.69880;,
 86.90730;123.77900;-123.90550;,
 143.37900;168.43610;-104.34600;,
 -72.84710;24.90990;-117.21590;,
 -68.18780;27.48760;-117.41100;,
 -52.59290;36.11650;-118.06400;,
 -198.67360;7.07260;-108.15540;,
 -167.33170;7.07260;-113.25960;,
 -105.08790;7.07260;-115.86580;,
 -81.01730;7.07260;-116.87370;,
 -136.93221;7.07260;-33.71280;,
 -191.73610;97.28280;57.53170;,
 -131.34210;73.85650;99.78230;,
 -85.46950;105.23480;97.86150;,
 -81.06500;107.67180;97.67700;,
 29.12700;172.61180;-9.39700;,
 -198.67360;7.07260;-108.15540;,
 -191.73610;97.28280;57.53170;,
 -81.01730;7.07260;-116.87370;,
 -105.08790;7.07260;-115.86580;,
 16.46470;74.32440;-120.95570;,
 -17.52530;55.51870;-119.53250;,
 -53.82370;123.77900;51.75660;,
 -65.87250;127.95460;33.76050;,
 -53.82370;123.77900;51.75660;,
 -66.00450;123.77900;52.26670;,
 -69.74040;123.77900;52.42310;,
 -60.84160;119.89650;52.05050;,
 -62.36660;119.05280;52.11450;,
 -46.43440;39.52370;-118.32190;,
 -44.81970;40.41750;-118.38960;,
 166.06030;77.11990;95.65950;,
 151.57610;115.80600;51.96230;,
 144.47980;115.80600;-117.50970;,
 161.10249;7.07260;-127.01220;,
 -99.84130;7.07260;98.46320;,
 -102.48400;7.07260;35.35630;,
 119.12060;7.07260;89.29480;,
 -60.58480;7.07260;-117.72950;,
 -169.16080;112.26540;56.58620;,
 -164.23930;37.42710;-134.74980;,
 -78.84770;123.77900;52.80450;,
 -142.32460;123.77900;-59.29860;,
 -169.16080;123.77900;56.58620;,
 -170.58749;123.77900;22.51930;,
 55.47420;7.07260;-122.58920;,
 117.93740;7.07260;44.56430;,
 15.29750;151.11960;93.16570;,
 119.12060;7.07260;89.29480;,
 -66.00450;123.77900;52.26670;,
 -142.32460;123.77900;-59.29860;,
 -142.32460;123.77900;-59.29860;,
 -99.84130;7.07260;98.46320;,
 -99.84130;16.47200;98.46320;,
 -167.33170;7.07260;-113.25960;,
 -167.33170;7.07260;-113.25960;,
 -26.67450;254.89700;-109.66270;,
 -26.90380;254.90640;-109.58350;,
 -26.76080;255.00079;-109.46070;,
 -26.67450;254.89700;-109.66270;,
 -26.87410;254.80479;-109.76600;,
 -26.67450;254.89700;-109.66270;,
 -26.69360;254.77280;-109.87040;,
 -26.67450;254.89700;-109.66270;,
 -26.49900;254.83411;-109.81890;,
 -26.67450;254.89700;-109.66270;,
 -26.43590;254.94310;-109.64940;,
 -26.67450;254.89700;-109.66270;,
 -26.55270;255.01700;-109.49010;,
 -26.67450;254.89700;-109.66270;,
 -26.76080;255.00079;-109.46070;,
 -4.19680;115.60660;-29.13030;,
 -8.26290;120.48490;-19.63670;,
 -14.98710;116.04540;-25.40880;,
 -4.19680;115.60660;-29.13030;,
 -13.58610;111.27550;-33.98340;,
 -4.19680;115.60660;-29.13030;,
 -5.11470;109.76690;-38.90350;,
 -4.19680;115.60660;-29.13030;,
 4.04760;112.65560;-36.46430;,
 -4.19680;115.60660;-29.13030;,
 7.00180;117.76660;-28.50250;,
 -4.19680;115.60660;-29.13030;,
 1.52300;121.25090;-21.01350;,
 -4.19680;115.60660;-29.13030;,
 -8.26290;120.48490;-19.63670;,
 -43.38780;232.54939;-90.16300;,
 -30.45990;241.05400;-79.05260;,
 -40.68330;223.30690;-106.59990;,
 -24.38210;220.28590;-115.98600;,
 -6.75950;225.76190;-111.25310;,
 -1.08590;235.61090;-95.96540;,
 -11.63350;242.41660;-81.63500;,
 -30.45990;241.05400;-79.05260;,
 19.44500;278.25861;-123.64660;,
 19.22190;278.27081;-123.69030;,
 19.28000;278.39600;-123.52350;,
 19.44500;278.25861;-123.64660;,
 19.33190;278.13651;-123.82440;,
 19.44500;278.25861;-123.64660;,
 19.52720;278.09439;-123.82410;,
 19.44500;278.25861;-123.64660;,
 19.66070;278.17542;-123.69060;,
 19.44500;278.25861;-123.64660;,
 19.63210;278.31931;-123.52360;,
 19.44500;278.25861;-123.64660;,
 19.46250;278.41711;-123.44950;,
 19.44500;278.25861;-123.64660;,
 19.28000;278.39600;-123.52350;,
 -0.23800;94.08820;-47.79210;,
 -8.00200;100.53840;-42.01080;,
 -10.73560;94.66820;-49.85410;,
 -0.23800;94.08820;-47.79210;,
 -5.56440;88.36150;-56.14480;,
 -0.23800;94.08820;-47.79210;,
 3.61770;86.36670;-56.14580;,
 -0.23800;94.08820;-47.79210;,
 9.89620;90.18620;-49.85660;,
 -0.23800;94.08820;-47.79210;,
 8.54350;96.94400;-42.01270;,
 -0.23800;94.08820;-47.79210;,
 0.57810;101.55090;-38.52110;,
 -0.23800;94.08820;-47.79210;,
 -8.00200;100.53840;-42.01080;,
 -3.27950;248.71060;-115.70720;,
 1.97020;259.95529;-100.61720;,
 6.64880;236.48990;-127.75720;,
 24.27910;232.49590;-127.69310;,
 36.33560;239.73560;-115.56280;,
 33.73920;252.75830;-100.50110;,
 18.44530;261.75690;-93.84980;,
 1.97020;259.95529;-100.61720;,
 169.34090;321.98489;22.69990;,
 169.46370;321.96249;22.38210;,
 169.31441;322.28421;22.42640;,
 169.34090;321.98489;22.69990;,
 169.52110;321.65781;22.57710;,
 169.34090;321.98489;22.69990;,
 169.44250;321.60049;22.86480;,
 169.34090;321.98489;22.69990;,
 169.28740;321.83191;23.02820;,
 169.34090;321.98489;22.69990;,
 169.17270;322.17950;22.94510;,
 169.34090;321.98489;22.69990;,
 169.18440;322.37979;22.67670;,
 169.34090;321.98489;22.69990;,
 169.31441;322.28421;22.42640;,
 -64.32570;35.88010;-28.42560;,
 -65.58910;49.91160;-41.28620;,
 -58.54050;34.81140;-43.37090;,
 -64.32570;35.88010;-28.42560;,
 -55.84770;20.51610;-34.20120;,
 -64.32570;35.88010;-28.42560;,
 -59.53930;17.79000;-20.68240;,
 -64.32570;35.88010;-28.42560;,
 -66.83460;28.68550;-12.99450;,
 -64.32570;35.88010;-28.42560;,
 -72.24090;44.99890;-16.92630;,
 -64.32570;35.88010;-28.42560;,
 -71.68650;54.44510;-29.51730;,
 -64.32570;35.88010;-28.42560;,
 -65.58910;49.91160;-41.28620;,
 142.37000;271.95181;-13.27420;,
 128.77521;300.91559;-9.27830;,
 147.41980;244.32220;4.32210;,
 140.12120;238.83360;30.26000;,
 125.97000;259.61819;45.00830;,
 115.62300;291.02509;37.46050;,
 116.87160;309.40439;13.30080;,
 128.77521;300.91559;-9.27830;;
 
 270;
 3;0,1,2;,
 3;3,4,5;,
 4;6,7,8,9;,
 4;10,11,12,13;,
 3;14,15,16;,
 3;17,18,19;,
 3;20,21,22;,
 3;23,24,25;,
 4;26,14,16,27;,
 3;28,29,30;,
 3;31,32,33;,
 3;34,35,36;,
 4;36,10,13,34;,
 4;37,6,9,38;,
 3;39,25,40;,
 4;40,25,24,41;,
 3;42,20,43;,
 4;44,21,20,42;,
 3;45,46,47;,
 3;48,49,50;,
 3;51,52,53;,
 4;54,55,56,57;,
 3;57,29,54;,
 4;58,59,32,60;,
 3;60,61,58;,
 3;51,62,63;,
 3;64,55,54;,
 4;65,66,61,60;,
 4;67,39,40,68;,
 3;69,43,70;,
 3;71,39,67;,
 4;72,42,43,69;,
 3;73,74,75;,
 4;75,76,77,73;,
 4;78,37,38,79;,
 3;80,81,82;,
 3;83,84,82;,
 4;82,81,85,83;,
 3;80,86,87;,
 3;88,89,90;,
 4;88,91,92,93;,
 3;94,95,90;,
 3;96,97,98;,
 3;96,68,99;,
 4;99,100,97,96;,
 4;101,102,100,99;,
 4;103,104,30,105;,
 4;105,72,69,103;,
 3;106,72,105;,
 4;107,108,109,110;,
 3;110,111,107;,
 3;112,113,114;,
 3;115,28,116;,
 3;117,19,116;,
 3;118,119,120;,
 4;120,121,122,118;,
 3;123,124,125;,
 3;126,33,125;,
 4;127,13,12,114;,
 4;128,26,27,129;,
 3;115,130,131;,
 4;132,6,37,133;,
 4;133,70,45,132;,
 4;134,35,34,135;,
 4;135,34,13,127;,
 4;127,50,71,135;,
 4;136,137,138,139;,
 4;139,93,92,136;,
 3;140,93,139;,
 3;117,104,141;,
 4;140,31,33,126;,
 4;141,104,103,142;,
 3;142,78,141;,
 4;133,37,78,142;,
 3;143,5,144;,
 3;144,5,145;,
 3;5,4,145;,
 3;76,146,77;,
 3;146,3,77;,
 3;77,3,143;,
 3;3,5,143;,
 3;147,148,149;,
 3;148,122,149;,
 3;122,121,149;,
 3;121,150,149;,
 3;150,85,149;,
 3;85,81,149;,
 3;151,152,51;,
 3;152,62,51;,
 3;51,53,151;,
 3;32,31,60;,
 3;60,31,65;,
 3;31,153,65;,
 3;70,43,45;,
 3;43,20,45;,
 3;45,20,46;,
 3;20,22,46;,
 3;71,50,39;,
 3;39,50,25;,
 3;50,49,23;,
 3;23,25,50;,
 3;152,151,154;,
 3;151,155,156;,
 3;156,154,151;,
 3;82,84,80;,
 3;80,84,86;,
 3;84,157,86;,
 3;157,8,86;,
 3;149,81,158;,
 3;158,81,87;,
 3;81,80,87;,
 3;95,0,90;,
 3;0,2,90;,
 3;90,2,88;,
 3;88,2,91;,
 3;2,159,91;,
 3;160,158,89;,
 3;158,94,89;,
 3;94,90,89;,
 3;96,98,68;,
 3;98,161,68;,
 3;161,67,68;,
 3;101,99,162;,
 3;99,68,162;,
 3;162,68,41;,
 3;68,40,41;,
 3;29,57,30;,
 3;30,57,105;,
 3;57,106,105;,
 3;163,44,56;,
 3;56,44,57;,
 3;44,42,57;,
 3;57,42,106;,
 3;42,72,106;,
 3;11,1,12;,
 3;1,108,12;,
 3;12,108,114;,
 3;108,112,114;,
 3;18,130,19;,
 3;130,115,19;,
 3;115,116,19;,
 3;116,28,117;,
 3;28,30,117;,
 3;30,104,117;,
 3;123,125,59;,
 3;59,125,32;,
 3;125,33,32;,
 3;164,160,165;,
 3;160,89,165;,
 3;165,89,124;,
 3;124,89,125;,
 3;89,126,125;,
 3;6,132,7;,
 3;132,110,7;,
 3;110,109,7;,
 3;132,45,110;,
 3;45,47,110;,
 3;47,111,110;,
 3;50,127,48;,
 3;127,114,48;,
 3;114,113,48;,
 3;129,52,128;,
 3;52,51,128;,
 3;51,63,128;,
 3;63,166,128;,
 3;167,64,131;,
 3;131,64,115;,
 3;64,54,115;,
 3;115,54,28;,
 3;54,29,28;,
 3;71,67,135;,
 3;161,134,67;,
 3;134,135,67;,
 3;31,140,153;,
 3;140,139,153;,
 3;139,138,153;,
 3;79,17,78;,
 3;17,19,78;,
 3;19,117,78;,
 3;117,141,78;,
 3;126,89,140;,
 3;140,89,93;,
 3;89,88,93;,
 3;142,103,133;,
 3;103,69,133;,
 3;69,70,133;,
 3;168,169,170;,
 3;171,172,169;,
 3;173,174,172;,
 3;175,176,174;,
 3;177,178,176;,
 3;179,180,178;,
 3;181,182,180;,
 3;183,184,185;,
 3;186,185,187;,
 3;188,187,189;,
 3;190,189,191;,
 3;192,191,193;,
 3;194,193,195;,
 3;196,195,197;,
 4;198,185,184,199;,
 4;199,170,169,198;,
 4;200,187,185,198;,
 4;198,169,172,200;,
 4;201,189,187,200;,
 4;200,172,174,201;,
 4;202,191,189,201;,
 4;201,174,176,202;,
 4;203,193,191,202;,
 4;202,176,178,203;,
 4;204,195,193,203;,
 4;203,178,180,204;,
 4;205,197,195,204;,
 4;204,180,182,205;,
 3;206,207,208;,
 3;209,210,207;,
 3;211,212,210;,
 3;213,214,212;,
 3;215,216,214;,
 3;217,218,216;,
 3;219,220,218;,
 3;221,222,223;,
 3;224,223,225;,
 3;226,225,227;,
 3;228,227,229;,
 3;230,229,231;,
 3;232,231,233;,
 3;234,233,235;,
 4;236,223,222,237;,
 4;237,208,207,236;,
 4;238,225,223,236;,
 4;236,207,210,238;,
 4;239,227,225,238;,
 4;238,210,212,239;,
 4;240,229,227,239;,
 4;239,212,214,240;,
 4;241,231,229,240;,
 4;240,214,216,241;,
 4;242,233,231,241;,
 4;241,216,218,242;,
 4;243,235,233,242;,
 4;242,218,220,243;,
 3;244,245,246;,
 3;247,248,245;,
 3;249,250,248;,
 3;251,252,250;,
 3;253,254,252;,
 3;255,256,254;,
 3;257,258,256;,
 3;259,260,261;,
 3;262,261,263;,
 3;264,263,265;,
 3;266,265,267;,
 3;268,267,269;,
 3;270,269,271;,
 3;272,271,273;,
 4;274,261,260,275;,
 4;275,246,245,274;,
 4;276,263,261,274;,
 4;274,245,248,276;,
 4;277,265,263,276;,
 4;276,248,250,277;,
 4;278,267,265,277;,
 4;277,250,252,278;,
 4;279,269,267,278;,
 4;278,252,254,279;,
 4;280,271,269,279;,
 4;279,254,256,280;,
 4;281,273,271,280;,
 4;280,256,258,281;;
 
 MeshMaterialList {
  2;
  270;
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
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
   1.000000;0.561000;0.949000;0.625000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.150000;0.084150;0.142350;;
  }
  Material {
   0.483200;0.483200;0.483200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  277;
  0.041837;-0.000001;0.999124;,
  -0.999124;0.000000;0.041840;,
  -0.745241;0.535861;-0.396824;,
  0.000000;-1.000000;-0.000000;,
  0.311789;0.053060;-0.948669;,
  -0.041836;-0.000001;-0.999124;,
  0.695405;0.659745;0.284865;,
  0.905087;0.423986;-0.032447;,
  0.180242;0.354324;0.917588;,
  -0.040755;0.226048;-0.973263;,
  0.499914;0.562248;-0.658759;,
  0.806680;0.536518;0.247822;,
  0.041834;-0.000007;0.999125;,
  -0.142838;0.240677;-0.960038;,
  -0.041841;0.000012;-0.999124;,
  -0.211931;0.971321;-0.107803;,
  -0.153447;-0.983409;0.096755;,
  0.661160;0.652432;-0.370406;,
  0.305427;0.736462;0.603604;,
  0.021869;0.995702;0.089998;,
  0.604490;0.787343;-0.121172;,
  -0.041831;-0.000039;-0.999125;,
  -0.041834;0.000002;-0.999125;,
  -0.237403;0.904805;0.353507;,
  -0.041834;-0.000001;-0.999125;,
  -0.041835;0.000003;-0.999125;,
  -0.279579;0.940299;0.194096;,
  -0.943966;-0.297353;0.143210;,
  0.038038;-0.075852;0.996393;,
  -0.215663;-0.959423;0.181649;,
  0.031025;-0.997261;0.067137;,
  0.003080;-0.794041;0.607856;,
  -0.041839;-0.000000;-0.999124;,
  -0.041840;-0.000006;-0.999124;,
  0.041837;0.000001;0.999125;,
  -0.041827;-0.000040;-0.999125;,
  0.000000;1.000000;0.000000;,
  -0.292117;-0.946026;0.140368;,
  0.000000;-1.000000;-0.000000;,
  -0.082063;0.095021;-0.992087;,
  -0.041883;0.000008;-0.999123;,
  -0.675296;-0.662329;0.324493;,
  0.041836;0.000001;0.999125;,
  -0.041837;-0.000006;-0.999124;,
  0.041839;-0.000009;0.999124;,
  -0.041837;-0.000006;-0.999124;,
  -0.254500;0.880234;-0.400521;,
  -0.000559;-0.972362;0.233477;,
  -0.237088;0.955191;0.177197;,
  -0.316030;0.948137;0.034092;,
  -0.041839;0.000004;-0.999124;,
  0.934330;-0.300471;-0.191688;,
  -0.041838;-0.000006;-0.999124;,
  0.213771;0.801672;0.558232;,
  0.080707;-0.996447;0.024076;,
  0.041837;-0.000001;0.999124;,
  -0.122639;0.320894;-0.939141;,
  -0.041575;0.112272;-0.992807;,
  0.983407;0.054082;-0.173164;,
  -0.218384;0.859900;-0.461389;,
  -0.032538;0.972950;-0.228713;,
  0.147070;-0.983632;-0.104110;,
  0.099518;-0.113737;-0.988514;,
  -0.041844;0.000007;-0.999124;,
  -0.201575;0.960740;0.190646;,
  -0.043472;0.999044;0.004616;,
  0.452042;-0.878615;-0.153928;,
  0.755252;-0.533658;-0.380531;,
  -0.048036;-0.966188;0.253325;,
  -0.041844;0.000035;-0.999124;,
  0.999124;0.000000;-0.041836;,
  -0.162778;0.191782;0.967845;,
  -0.041862;0.000017;-0.999123;,
  0.070194;-0.090263;-0.993441;,
  0.373215;0.812170;0.448431;,
  -0.041845;-0.000018;-0.999124;,
  0.597285;-0.462582;-0.655185;,
  0.093900;0.683823;0.723581;,
  0.684135;-0.720042;-0.116182;,
  -0.190039;-0.971035;0.144830;,
  0.068262;0.153121;-0.985847;,
  -0.015042;-0.014444;-0.999783;,
  -0.075067;0.644113;-0.761238;,
  -0.305993;0.672755;0.673624;,
  -0.041848;0.000007;-0.999124;,
  -0.041862;0.000010;-0.999123;,
  -0.041838;0.000001;-0.999124;,
  -0.335795;0.925611;-0.174604;,
  -0.041838;0.000001;-0.999125;,
  -0.041836;-0.000002;-0.999124;,
  -0.190711;0.917336;0.349463;,
  0.003015;0.149335;0.988782;,
  -0.319070;0.928046;0.192159;,
  -0.163723;0.980002;0.113095;,
  -0.041835;0.000011;-0.999125;,
  0.041839;0.000075;0.999124;,
  -0.041851;-0.000004;-0.999124;,
  -0.041837;0.000001;-0.999124;,
  0.013139;0.949376;0.313867;,
  0.946653;-0.262640;-0.186732;,
  -0.233791;0.464564;-0.854121;,
  -0.236525;0.235007;-0.942776;,
  0.024959;0.802626;0.595961;,
  0.024953;0.802628;0.595958;,
  0.246729;-0.967541;-0.054682;,
  0.059051;0.996073;0.065962;,
  0.041836;-0.000002;0.999125;,
  0.036044;-0.113861;0.992843;,
  -0.228529;0.842668;-0.487530;,
  0.041774;0.000247;0.999127;,
  0.951964;0.196161;0.235126;,
  -0.041854;0.000034;-0.999124;,
  -0.158886;-0.983889;0.081956;,
  0.920506;-0.337818;-0.196337;,
  0.038857;-0.995701;0.084086;,
  0.052539;-0.845984;0.530613;,
  -0.154953;-0.040889;0.987075;,
  -0.154961;-0.040887;0.987074;,
  -0.255685;-0.061638;0.964793;,
  -0.002840;-0.432547;0.901607;,
  0.684140;-0.720037;-0.116183;,
  0.119146;-0.086468;-0.989104;,
  -0.088374;0.189063;0.977980;,
  -0.316902;0.943467;0.097174;,
  -0.230998;0.902272;-0.364068;,
  -0.536004;-0.738805;0.408492;,
  -0.041839;0.000001;-0.999124;,
  -0.041835;-0.000004;-0.999125;,
  -0.163025;0.943791;-0.287543;,
  0.041827;0.000031;0.999125;,
  0.041838;0.000005;0.999124;,
  -0.222061;0.940014;0.258965;,
  -0.633618;0.761625;0.135854;,
  0.919162;0.393837;0.005822;,
  0.562523;0.000000;-0.826781;,
  0.999125;-0.000017;-0.041835;,
  0.999125;-0.000008;-0.041837;,
  0.996723;0.073222;-0.034375;,
  0.999124;0.000000;-0.041839;,
  0.317404;-0.948093;-0.019360;,
  -0.512494;-0.856511;0.061141;,
  -0.238439;-0.748067;0.619308;,
  0.041844;0.000035;0.999124;,
  0.007212;-0.866457;0.499200;,
  0.880504;0.119464;0.458738;,
  0.955843;-0.071073;0.285154;,
  -0.602435;0.563098;-0.565679;,
  -0.978405;0.195535;-0.067001;,
  -0.999124;0.000000;0.041843;,
  -0.908096;-0.406782;-0.099450;,
  -0.641150;-0.734762;-0.221477;,
  -0.028119;-0.223349;0.974333;,
  0.041834;0.000003;0.999125;,
  0.640264;0.767968;-0.016936;,
  0.489060;0.000000;0.872250;,
  0.135323;-0.117775;0.983777;,
  0.613536;-0.760075;-0.214149;,
  -0.306018;0.339514;-0.889428;,
  -0.041850;0.000005;-0.999124;,
  -0.041874;0.000019;-0.999123;,
  0.997200;0.072810;0.017054;,
  0.997154;0.002005;0.075371;,
  0.041835;0.000000;0.999124;,
  0.041836;0.000002;0.999125;,
  0.041836;0.000001;0.999125;,
  0.041840;0.000008;0.999124;,
  0.041843;0.000018;0.999124;,
  0.411788;0.773645;-0.481564;,
  -0.429153;0.850638;-0.303713;,
  -0.327282;0.835581;-0.441238;,
  -0.316443;0.837664;-0.445178;,
  -0.101467;0.000000;-0.994839;,
  -0.160738;0.000000;-0.986997;,
  -0.041837;-0.000027;-0.999124;,
  -0.193247;-0.980244;0.042160;,
  -0.323544;-0.946209;-0.002927;,
  -0.137276;0.855843;-0.498686;,
  -0.274579;0.956560;-0.097975;,
  -0.521504;0.793242;-0.314324;,
  -0.464236;0.623205;-0.629365;,
  -0.157609;0.573377;-0.803989;,
  0.169367;0.676328;-0.716865;,
  0.280788;0.857904;-0.430301;,
  0.086526;0.984600;-0.151906;,
  0.137143;-0.855936;0.498563;,
  0.137141;-0.855939;0.498558;,
  0.137136;-0.855940;0.498558;,
  0.137133;-0.855938;0.498562;,
  0.137138;-0.855935;0.498566;,
  0.137144;-0.855934;0.498566;,
  0.137144;-0.855937;0.498562;,
  0.137140;-0.855937;0.498562;,
  -0.379924;0.661289;0.646803;,
  -0.941928;0.294024;0.162241;,
  -0.824523;-0.096637;-0.557516;,
  -0.119074;-0.216560;-0.968980;,
  0.642971;0.023130;-0.765541;,
  0.890970;0.442988;-0.099673;,
  0.436528;0.727421;0.529435;,
  -0.931693;-0.025752;0.362334;,
  -0.345043;0.363010;0.865546;,
  -0.808907;-0.444838;-0.384432;,
  -0.069264;-0.578777;-0.812539;,
  0.730480;-0.326733;-0.599704;,
  0.988112;0.121640;0.094014;,
  0.509403;0.428638;0.746176;,
  0.165222;0.761002;-0.627358;,
  0.165377;0.760848;-0.627504;,
  -0.101918;0.659021;-0.745188;,
  -0.071229;0.526021;-0.847484;,
  0.281346;0.482779;-0.829319;,
  0.543729;0.574277;-0.612018;,
  0.552044;0.777750;-0.300587;,
  0.165636;0.761267;-0.626926;,
  -0.165269;-0.761106;0.627219;,
  -0.165254;-0.761109;0.627220;,
  -0.165266;-0.761111;0.627214;,
  -0.165278;-0.761104;0.627219;,
  -0.165276;-0.761105;0.627219;,
  -0.165272;-0.761111;0.627213;,
  -0.165275;-0.761114;0.627208;,
  -0.165270;-0.761109;0.627216;,
  -0.719474;0.558785;0.412452;,
  -0.913811;0.226015;-0.337442;,
  -0.431075;-0.074491;-0.899236;,
  0.386659;-0.165557;-0.907241;,
  0.939875;0.015705;-0.341157;,
  0.855711;0.351959;0.379319;,
  0.310047;0.683675;0.660651;,
  -0.987642;-0.018729;-0.155605;,
  -0.751343;0.268588;0.602780;,
  -0.601381;0.779807;0.173901;,
  -0.806111;0.572988;-0.147887;,
  -0.519465;-0.336828;-0.785304;,
  0.376585;-0.449766;-0.809873;,
  0.955207;-0.243049;-0.168843;,
  0.807256;0.088515;0.583527;,
  0.062151;0.319610;0.945509;,
  0.168617;0.856476;0.487870;,
  -0.388709;0.339216;0.856644;,
  0.876695;0.365263;0.313032;,
  0.876464;0.364742;0.314282;,
  0.973901;0.219389;0.058180;,
  0.992113;0.078617;0.097622;,
  0.896440;0.075009;0.436770;,
  0.699916;0.241355;0.672210;,
  0.877164;0.365046;0.311969;,
  0.876421;0.365721;0.313263;,
  -0.896072;-0.065769;-0.439010;,
  -0.876411;-0.365896;-0.313087;,
  -0.876403;-0.365910;-0.313094;,
  -0.876405;-0.365902;-0.313098;,
  -0.876408;-0.365901;-0.313091;,
  -0.876407;-0.365900;-0.313094;,
  -0.896069;-0.065776;-0.439014;,
  -0.876407;-0.365899;-0.313096;,
  0.118236;0.517488;-0.847483;,
  0.528400;-0.013373;-0.848890;,
  0.866469;-0.420861;-0.268526;,
  0.716177;-0.443870;0.538582;,
  0.163514;-0.061993;0.984591;,
  -0.385075;0.468018;0.795410;,
  -0.560934;0.673598;0.481268;,
  0.296537;-0.131189;-0.945968;,
  -0.008365;0.132866;-0.991099;,
  0.180163;0.692879;-0.698183;,
  0.466909;0.330937;-0.820047;,
  0.716400;-0.585299;-0.379731;,
  0.566399;-0.633174;0.527526;,
  -0.069657;-0.187908;0.979714;,
  -0.637625;0.333374;0.694476;,
  -0.100824;0.558708;0.823213;,
  -0.779531;0.517149;0.353395;,
  -0.292630;0.770358;0.566495;,
  -0.630046;0.556878;-0.541229;,
  -0.407840;0.762311;-0.502542;,
  -0.147673;0.896792;-0.417081;;
  270;
  3;11,6,8;,
  3;17,10,20;,
  4;25,97,5,22;,
  4;23,8,18,26;,
  3;27,1,27;,
  3;33,14,32;,
  3;39,13,40;,
  3;98,36,36;,
  4;37,27,27,41;,
  3;45,35,43;,
  3;42,34,44;,
  3;48,19,49;,
  4;49,23,26,48;,
  4;50,25,22,52;,
  3;47,54,54;,
  4;36,36,36,46;,
  3;51,99,51;,
  4;100,13,39,101;,
  3;63,24,57;,
  3;102,103,64;,
  3;59,15,60;,
  4;61,16,29,66;,
  3;66,104,61;,
  4;60,15,105,65;,
  3;106,28,107;,
  3;59,108,56;,
  3;109,109,109;,
  4;55,0,28,106;,
  4;58,110,58,58;,
  3;62,111,69;,
  3;68,47,112;,
  4;67,51,51,113;,
  3;70,7,70;,
  4;114,30,31,115;,
  4;72,50,52,75;,
  3;38,38,38;,
  3;38,38,38;,
  4;38,38,38,38;,
  3;38,30,114;,
  3;77,53,74;,
  4;116,117,118,71;,
  3;115,31,119;,
  3;36,36,36;,
  3;36,36,36;,
  4;36,36,36,36;,
  4;36,36,36,36;,
  4;73,21,43,76;,
  4;76,67,62,73;,
  3;78,67,120;,
  4;80,4,121,81;,
  3;81,9,80;,
  3;80,9,82;,
  3;89,45,88;,
  3;84,32,88;,
  3;79,3,38;,
  4;38,38,37,79;,
  3;83,122,90;,
  3;92,123,90;,
  4;87,26,124,82;,
  4;79,37,41,125;,
  3;89,126,127;,
  4;86,25,50,94;,
  4;94,69,63,86;,
  4;19,19,48,93;,
  4;93,48,26,87;,
  4;87,64,128,93;,
  4;129,12,130,95;,
  4;95,71,118,129;,
  3;91,71,95;,
  3;84,21,85;,
  4;131,132,123,92;,
  4;85,21,73,96;,
  3;96,72,85;,
  4;94,50,72,96;,
  3;11,20,6;,
  3;6,20,133;,
  3;134,10,4;,
  3;135,136,137;,
  3;136,138,137;,
  3;137,17,11;,
  3;139,139,139;,
  3;38,38,38;,
  3;38,37,38;,
  3;37,38,38;,
  3;38,38,38;,
  3;38,38,38;,
  3;38,38,38;,
  3;140,29,141;,
  3;29,16,141;,
  3;141,107,28;,
  3;34,42,106;,
  3;106,42,55;,
  3;42,142,55;,
  3;69,111,63;,
  3;111,39,63;,
  3;63,39,24;,
  3;39,40,24;,
  3;68,143,47;,
  3;110,144,144;,
  3;64,103,98;,
  3;145,144,144;,
  3;146,147,2;,
  3;147,148,149;,
  3;149,150,140;,
  3;38,38,38;,
  3;38,38,30;,
  3;38,38,30;,
  3;38,3,30;,
  3;38,38,38;,
  3;38,38,114;,
  3;38,38,114;,
  3;31,151,119;,
  3;151,8,119;,
  3;119,8,116;,
  3;116,8,117;,
  3;8,152,117;,
  3;153,7,53;,
  3;154,154,155;,
  3;115,119,155;,
  3;36,36,36;,
  3;36,36,36;,
  3;36,36,36;,
  3;36,36,36;,
  3;36,36,36;,
  3;36,36,46;,
  3;36,36,46;,
  3;104,66,156;,
  3;156,66,76;,
  3;66,78,76;,
  3;2,46,146;,
  3;146,46,157;,
  3;46,101,157;,
  3;157,101,158;,
  3;101,159,158;,
  3;8,6,18;,
  3;6,133,160;,
  3;160,133,161;,
  3;4,80,82;,
  3;14,126,32;,
  3;126,89,32;,
  3;89,88,32;,
  3;88,45,84;,
  3;45,43,84;,
  3;43,21,84;,
  3;83,90,15;,
  3;15,90,105;,
  3;90,123,105;,
  3;162,163,164;,
  3;163,155,164;,
  3;164,155,122;,
  3;122,155,165;,
  3;155,166,165;,
  3;25,86,97;,
  3;86,81,97;,
  3;167,10,17;,
  3;86,63,81;,
  3;63,57,81;,
  3;57,9,81;,
  3;64,87,168;,
  3;87,82,168;,
  3;82,9,57;,
  3;169,15,170;,
  3;15,59,170;,
  3;59,56,170;,
  3;56,171,172;,
  3;171,56,127;,
  3;127,56,89;,
  3;56,173,89;,
  3;89,173,45;,
  3;173,35,45;,
  3;68,112,174;,
  3;36,19,36;,
  3;175,174,112;,
  3;42,91,142;,
  3;91,95,142;,
  3;95,130,142;,
  3;75,33,72;,
  3;33,32,72;,
  3;32,84,72;,
  3;84,85,72;,
  3;92,53,131;,
  3;91,53,71;,
  3;53,77,71;,
  3;96,73,94;,
  3;73,62,94;,
  3;62,69,94;,
  3;176,178,177;,
  3;176,179,178;,
  3;176,180,179;,
  3;176,181,180;,
  3;176,182,181;,
  3;176,183,182;,
  3;176,177,183;,
  3;191,184,185;,
  3;191,185,186;,
  3;191,186,187;,
  3;191,187,188;,
  3;191,188,189;,
  3;191,189,190;,
  3;191,190,184;,
  4;193,199,200,192;,
  4;192,177,178,193;,
  4;194,201,199,193;,
  4;193,178,179,194;,
  4;195,202,201,194;,
  4;194,179,180,195;,
  4;196,203,202,195;,
  4;195,180,181,196;,
  4;197,204,203,196;,
  4;196,181,182,197;,
  4;198,205,204,197;,
  4;197,182,183,198;,
  4;192,200,205,198;,
  4;198,183,177,192;,
  3;206,208,207;,
  3;206,209,208;,
  3;206,210,209;,
  3;206,211,210;,
  3;206,212,211;,
  3;206,213,212;,
  3;206,207,213;,
  3;221,214,215;,
  3;221,215,216;,
  3;221,216,217;,
  3;221,217,218;,
  3;221,218,219;,
  3;221,219,220;,
  3;221,220,214;,
  4;223,229,230,222;,
  4;222,231,232,223;,
  4;224,233,229,223;,
  4;223,208,209,224;,
  4;225,234,233,224;,
  4;224,209,210,225;,
  4;226,235,234,225;,
  4;225,210,211,226;,
  4;227,236,235,226;,
  4;226,211,212,227;,
  4;228,237,236,227;,
  4;227,212,238,228;,
  4;222,230,237,239;,
  4;228,238,231,222;,
  3;240,242,241;,
  3;240,243,242;,
  3;240,244,243;,
  3;240,245,244;,
  3;240,246,245;,
  3;240,247,246;,
  3;240,241,247;,
  3;255,248,249;,
  3;255,249,250;,
  3;255,250,251;,
  3;255,251,252;,
  3;255,252,253;,
  3;255,253,254;,
  3;255,254,248;,
  4;257,263,264,256;,
  4;256,265,266,257;,
  4;258,267,263,257;,
  4;257,242,243,258;,
  4;259,268,267,258;,
  4;258,243,244,259;,
  4;260,269,268,259;,
  4;259,244,245,260;,
  4;261,270,269,260;,
  4;260,245,271,261;,
  4;262,272,270,261;,
  4;261,271,273,262;,
  4;274,248,254,275;,
  4;275,276,265,256;;
 }
 MeshTextureCoords {
  282;
  0.000000;0.331480;,
  0.000000;0.000000;,
  0.200390;0.000000;,
  0.000000;0.375060;,
  0.000000;0.180250;,
  0.220480;0.213590;,
  0.613090;0.562500;,
  1.000000;0.375060;,
  1.000000;1.000000;,
  0.747930;1.000000;,
  0.000000;0.475720;,
  0.000000;0.200390;,
  0.378080;0.165820;,
  0.163880;0.489570;,
  0.108610;1.000000;,
  0.000000;1.000000;,
  0.000000;0.919460;,
  0.564800;1.000000;,
  0.219550;1.000000;,
  0.241330;0.851040;,
  0.359520;0.042640;,
  0.365750;0.000000;,
  0.369890;0.000000;,
  1.000000;0.630110;,
  1.000000;0.634250;,
  0.933850;0.647690;,
  0.523940;1.000000;,
  0.000000;0.427760;,
  0.170700;0.818520;,
  0.126570;0.798190;,
  0.182200;0.771240;,
  0.917100;0.087120;,
  0.969700;0.112600;,
  0.927980;0.131820;,
  0.053350;0.656640;,
  0.000000;0.737270;,
  0.000000;0.639730;,
  0.451250;0.640910;,
  0.679850;1.000000;,
  0.380040;0.760210;,
  0.439540;0.779070;,
  1.000000;0.956750;,
  0.279560;0.371200;,
  0.305520;0.411980;,
  0.043250;0.000000;,
  0.477680;0.123110;,
  0.439740;0.000000;,
  0.546030;0.000000;,
  1.000000;0.453970;,
  1.000000;0.560260;,
  0.810270;0.544220;,
  0.004510;0.130580;,
  0.000000;0.127280;,
  0.000000;0.126730;,
  0.094080;0.813930;,
  0.000000;0.859500;,
  0.000000;0.739910;,
  0.107650;0.789480;,
  1.000000;0.126730;,
  1.000000;0.127280;,
  0.987590;0.104370;,
  1.000000;0.098650;,
  1.000000;0.859500;,
  1.000000;0.983340;,
  0.000000;0.983340;,
  0.929640;0.000000;,
  1.000000;0.000000;,
  0.338390;0.768670;,
  0.160740;0.853180;,
  0.301320;0.440700;,
  0.311790;0.421840;,
  0.365720;0.755670;,
  0.232470;0.564710;,
  1.000000;0.701610;,
  1.000000;1.000000;,
  0.498160;1.000000;,
  0.312510;1.000000;,
  1.000000;0.559150;,
  0.294460;0.716860;,
  0.639280;1.000000;,
  0.888590;0.719950;,
  0.893040;0.713750;,
  0.900350;0.711440;,
  1.000000;0.639280;,
  1.000000;0.679850;,
  1.000000;0.564800;,
  0.687490;1.000000;,
  0.501840;1.000000;,
  0.404570;0.369400;,
  0.401470;0.374270;,
  0.395020;0.377240;,
  0.639730;0.000000;,
  0.737270;0.000000;,
  0.810960;0.035700;,
  0.000000;0.701610;,
  0.000000;0.559150;,
  0.041880;0.884770;,
  0.000000;0.895900;,
  0.000000;0.854440;,
  0.062670;0.899820;,
  0.000000;0.929640;,
  0.201020;1.000000;,
  0.000000;1.000000;,
  0.264540;0.692290;,
  0.258390;0.734340;,
  0.211930;0.649090;,
  0.193850;0.634250;,
  0.977280;0.000000;,
  1.000000;0.000000;,
  1.000000;0.180250;,
  0.924350;0.055120;,
  0.891040;0.000000;,
  1.000000;0.022720;,
  1.000000;0.108960;,
  0.870860;0.120770;,
  0.163730;0.847160;,
  0.184940;0.825070;,
  0.255940;0.751140;,
  0.977670;0.000000;,
  1.000000;0.000000;,
  1.000000;0.016940;,
  1.000000;0.126530;,
  0.523940;0.000000;,
  1.000000;0.227030;,
  1.000000;0.427760;,
  0.934570;0.158900;,
  0.914520;0.138010;,
  0.362950;0.506400;,
  0.977670;1.000000;,
  0.000000;0.227030;,
  0.126530;1.000000;,
  0.016940;1.000000;,
  0.570330;0.423750;,
  0.415590;0.584890;,
  0.000000;0.781970;,
  0.132170;0.681630;,
  0.781970;0.000000;,
  0.837430;0.000000;,
  0.854440;0.000000;,
  0.813920;0.033270;,
  0.820870;0.040500;,
  0.283970;0.721940;,
  0.291330;0.714280;,
  1.000000;0.331480;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.108610;0.000000;,
  0.000000;0.996860;,
  1.000000;0.219550;,
  0.000000;0.098650;,
  1.000000;0.739910;,
  0.895900;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.201020;0.000000;,
  1.000000;0.747930;,
  0.000000;1.000000;,
  0.475720;0.000000;,
  0.003140;1.000000;,
  0.000000;0.837430;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;1.000000;,
  1.000000;0.919460;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.071430;0.000000;,
  0.142860;0.000000;,
  0.000000;0.000000;,
  0.214290;0.000000;,
  0.285710;0.000000;,
  0.357140;0.000000;,
  0.428570;0.000000;,
  0.500000;0.000000;,
  0.571430;0.000000;,
  0.642860;0.000000;,
  0.714290;0.000000;,
  0.785710;0.000000;,
  0.857140;0.000000;,
  0.928570;0.000000;,
  1.000000;0.000000;,
  0.071430;1.000000;,
  0.000000;1.000000;,
  0.142860;1.000000;,
  0.214290;1.000000;,
  0.285710;1.000000;,
  0.357140;1.000000;,
  0.428570;1.000000;,
  0.500000;1.000000;,
  0.571430;1.000000;,
  0.642860;1.000000;,
  0.714290;1.000000;,
  0.785710;1.000000;,
  0.857140;1.000000;,
  0.928570;1.000000;,
  1.000000;1.000000;,
  0.142860;0.134090;,
  0.000000;0.134840;,
  0.285710;0.136070;,
  0.428570;0.139300;,
  0.571430;0.141340;,
  0.714290;0.140650;,
  0.857140;0.137760;,
  1.000000;0.134840;,
  0.071430;0.000000;,
  0.142860;0.000000;,
  0.000000;0.000000;,
  0.214290;0.000000;,
  0.285710;0.000000;,
  0.357140;0.000000;,
  0.428570;0.000000;,
  0.500000;0.000000;,
  0.571430;0.000000;,
  0.642860;0.000000;,
  0.714290;0.000000;,
  0.785710;0.000000;,
  0.857140;0.000000;,
  0.928570;0.000000;,
  1.000000;0.000000;,
  0.071430;1.000000;,
  0.000000;1.000000;,
  0.142860;1.000000;,
  0.214290;1.000000;,
  0.285710;1.000000;,
  0.357140;1.000000;,
  0.428570;1.000000;,
  0.500000;1.000000;,
  0.571430;1.000000;,
  0.642860;1.000000;,
  0.714290;1.000000;,
  0.785710;1.000000;,
  0.857140;1.000000;,
  0.928570;1.000000;,
  1.000000;1.000000;,
  0.142860;0.134090;,
  0.000000;0.134840;,
  0.285710;0.136070;,
  0.428570;0.139300;,
  0.571430;0.141340;,
  0.714290;0.140650;,
  0.857140;0.137760;,
  1.000000;0.134840;,
  0.071430;0.000000;,
  0.142860;0.000000;,
  0.000000;0.000000;,
  0.214290;0.000000;,
  0.285710;0.000000;,
  0.357140;0.000000;,
  0.428570;0.000000;,
  0.500000;0.000000;,
  0.571430;0.000000;,
  0.642860;0.000000;,
  0.714290;0.000000;,
  0.785710;0.000000;,
  0.857140;0.000000;,
  0.928570;0.000000;,
  1.000000;0.000000;,
  0.071430;1.000000;,
  0.000000;1.000000;,
  0.142860;1.000000;,
  0.214290;1.000000;,
  0.285710;1.000000;,
  0.357140;1.000000;,
  0.428570;1.000000;,
  0.500000;1.000000;,
  0.571430;1.000000;,
  0.642860;1.000000;,
  0.714290;1.000000;,
  0.785710;1.000000;,
  0.857140;1.000000;,
  0.928570;1.000000;,
  1.000000;1.000000;,
  0.142860;0.134090;,
  0.000000;0.134840;,
  0.285710;0.136070;,
  0.428570;0.139300;,
  0.571430;0.141340;,
  0.714290;0.140650;,
  0.857140;0.137760;,
  1.000000;0.134840;;
 }
}