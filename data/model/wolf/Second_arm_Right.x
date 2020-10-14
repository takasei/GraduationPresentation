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
 191;
 6.82911;-23.26890;7.03668;,
 4.92918;-21.65397;7.65942;,
 6.55467;-23.37444;5.65398;,
 -8.10633;12.28068;2.38188;,
 -0.79167;8.56527;3.04686;,
 -2.64936;9.10356;1.87524;,
 17.65860;-18.04413;3.44796;,
 20.43459;-21.35841;1.26306;,
 18.61914;-20.07069;1.68525;,
 7.84236;-9.76893;-4.79556;,
 4.84473;-10.12779;-5.25999;,
 4.87638;-5.91633;-2.95899;,
 6.21687;-16.70364;14.27748;,
 6.10080;-13.85376;14.76300;,
 2.59650;-11.28888;15.06909;,
 1.21377;-5.29359;14.59413;,
 5.50971;-10.79277;14.75244;,
 -0.17946;-6.95073;15.06909;,
 4.97142;5.73648;3.89127;,
 6.30135;3.45663;2.26578;,
 3.93702;6.45426;2.61411;,
 4.96086;4.34322;0.35532;,
 6.30135;1.33500;0.77751;,
 7.06131;2.17944;3.71184;,
 1.41435;-12.73491;14.45691;,
 4.08477;-15.91200;14.20359;,
 0.31662;5.10321;11.86035;,
 4.32756;3.40380;10.32987;,
 2.08983;6.11649;9.53823;,
 5.78415;-9.57894;14.28801;,
 8.01126;-14.09652;14.22468;,
 7.69461;-11.44719;13.73916;,
 17.26809;-18.63519;2.11803;,
 17.34195;-21.63285;0.68253;,
 -3.73653;-3.71031;-4.88001;,
 -1.64664;-2.30649;-4.76391;,
 -4.35933;-4.57581;-3.29673;,
 -1.84719;-3.97416;-3.68727;,
 7.54683;-4.07970;3.52185;,
 7.24074;-1.54650;7.01556;,
 8.21181;-7.75293;11.70204;,
 -0.52779;-13.96986;0.28143;,
 -0.48558;-12.95658;-1.23849;,
 2.71263;-16.07031;-1.65015;,
 -4.59153;10.67628;8.04996;,
 -0.08448;8.36472;5.81229;,
 -0.61224;3.15051;13.52805;,
 1.29825;0.90228;13.19031;,
 4.38033;0.90228;11.23761;,
 1.59378;-17.80134;4.22904;,
 5.02419;-21.22119;4.38735;,
 1.24545;-18.21300;6.11838;,
 6.90300;-2.60199;8.80995;,
 6.98742;1.77834;7.10001;,
 5.98470;1.38783;9.42213;,
 -2.65992;-1.97925;14.47803;,
 1.78377;-1.28262;13.09530;,
 14.37600;-18.75132;-3.04341;,
 12.12774;-18.09690;-4.17282;,
 12.91938;-16.74585;-4.03560;,
 3.43038;-18.11799;2.14968;,
 -2.04771;-13.85376;4.32402;,
 -1.80495;-13.05156;2.30802;,
 10.01673;-24.04995;1.02030;,
 10.76616;-23.84940;9.60156;,
 9.10899;-21.70674;11.15316;,
 16.79307;-25.40100;9.79155;,
 13.66878;-19.00461;10.83651;,
 12.52884;-20.29236;11.65980;,
 16.20201;-18.40299;0.72474;,
 13.82709;-14.69814;-2.67399;,
 14.04879;-14.08596;-1.18572;,
 6.91350;-3.22479;1.87524;,
 5.67858;-2.68644;-0.42576;,
 6.20634;-16.13364;-4.53168;,
 7.34631;-18.60354;-3.63450;,
 13.90101;-12.58713;8.30328;,
 12.38109;-9.51561;8.84160;,
 12.28608;-10.32834;9.86544;,
 2.16375;7.43589;6.23451;,
 4.17975;-10.91943;-5.17554;,
 7.24074;-12.40770;-5.69274;,
 7.90572;-16.28142;-5.23887;,
 14.77707;-17.81190;-2.66343;,
 14.99874;-20.32401;-2.06181;,
 9.40455;-18.16023;-4.67946;,
 11.72667;-22.44558;-2.29401;,
 8.22237;-25.07379;4.47180;,
 9.94284;-28.58865;3.44796;,
 11.28333;-33.01122;3.99681;,
 8.76069;-23.24778;2.37135;,
 9.91119;-25.77045;2.40300;,
 5.18250;1.45116;-1.03794;,
 -0.66501;-16.28142;7.02612;,
 1.36158;-18.42411;7.40610;,
 12.35997;-21.51675;-3.11730;,
 14.86152;-14.86704;2.58243;,
 10.82949;-9.72672;-0.42576;,
 6.56523;3.03438;6.79392;,
 -2.45937;8.33307;9.61212;,
 7.57851;-21.12621;-0.64743;,
 10.94559;-23.21613;-1.00629;,
 3.39870;-3.24588;12.65199;,
 1.62546;-2.84475;13.46472;,
 11.90610;-8.40732;7.68054;,
 7.93740;-4.74471;8.59884;,
 9.81618;-6.57075;9.30603;,
 14.72430;-18.41355;9.44325;,
 7.61019;-11.40498;-5.44998;,
 4.35921;1.95777;-1.79793;,
 -3.58878;5.59926;13.00029;,
 5.92134;-18.45579;13.52805;,
 -1.86831;2.46441;14.10858;,
 -2.81823;-5.48355;14.65746;,
 15.87480;-19.92291;-0.52077;,
 2.06877;-18.49800;9.77046;,
 6.43857;3.69936;3.63795;,
 7.95846;-18.74076;13.55973;,
 11.43111;-22.53003;10.94205;,
 16.86699;-17.42136;6.08673;,
 16.19145;-18.44523;7.71222;,
 -2.26938;-9.45228;-1.89291;,
 1.69932;-12.29160;-3.58173;,
 4.52808;5.22987;7.98663;,
 1.89987;7.62588;3.19464;,
 3.29316;6.22206;0.69309;,
 5.08752;-19.64850;11.88147;,
 10.02729;-15.77478;13.28529;,
 16.07535;-15.70089;5.05233;,
 14.61876;-12.95658;4.93623;,
 -1.51998;-8.54454;14.53080;,
 2.27985;7.01364;7.58556;,
 -2.03718;8.89248;7.97610;,
 -4.86594;8.14308;-0.93240;,
 1.47768;5.75763;-1.16463;,
 11.95887;-8.80842;5.93895;,
 7.85295;-4.21692;7.01556;,
 15.05148;-15.78534;7.61721;,
 8.44404;-5.69466;4.79901;,
 22.13397;-21.63285;3.21573;,
 8.62347;-26.57262;5.25288;,
 8.94012;-26.39319;6.64614;,
 12.27552;-26.76261;1.67469;,
 12.99327;-25.54878;0.84084;,
 9.99564;-25.92876;7.93386;,
 12.59217;-24.73605;10.07655;,
 8.38071;-24.44052;7.31112;,
 12.65550;-22.28727;11.12151;,
 14.36544;-24.69381;0.12309;,
 15.94869;-23.89164;0.22866;,
 13.99599;-25.58046;10.62540;,
 15.36816;-24.69381;10.45653;,
 19.95963;-21.86505;7.47999;,
 17.73252;-22.41390;8.73606;,
 21.33180;-20.61954;4.17627;,
 21.95454;-21.67506;5.66451;,
 2.35374;-16.34475;13.02141;,
 -1.39332;-15.20478;9.15825;,
 2.87094;-17.89635;11.93424;,
 -1.46718;-14.14929;10.87872;,
 -2.73384;-13.84320;10.13988;,
 11.63166;-14.09652;-4.24671;,
 -1.62552;-10.51833;13.60194;,
 2.50152;-10.83501;-4.46835;,
 9.57342;-8.15400;2.82522;,
 10.63950;-11.41554;-3.80340;,
 9.28842;-9.17784;-3.33897;,
 -2.87103;-14.72982;7.60665;,
 2.13210;-9.28341;-4.37337;,
 -4.85538;-8.69232;0.69309;,
 4.00035;-4.18527;-2.32566;,
 6.28023;-5.28300;-1.15407;,
 -4.34874;-4.91358;-1.90347;,
 -1.29831;-5.82132;-3.02232;,
 7.05075;-5.39910;0.40809;,
 2.21652;-5.09304;-3.15954;,
 -0.70722;-5.20914;-3.12786;,
 7.35687;-5.29359;10.40376;,
 6.58632;-3.74196;9.97101;,
 2.01597;-3.79476;-3.13842;,
 5.16141;-4.09026;-1.36515;,
 -3.58878;-0.20604;-5.98830;,
 -3.68376;1.64112;-5.67165;,
 0.58050;-1.00821;-4.36281;,
 -0.06336;2.61222;-3.86673;,
 3.77868;4.08990;-1.15407;,
 -4.60206;4.88154;13.69695;,
 -4.91871;4.33266;-4.77444;,
 -5.08758;6.39093;-2.98008;,
 -3.73653;-2.80254;-5.72442;,
 -5.40426;-4.79745;-1.17516;;
 
 333;
 3;0,1,2;,
 3;3,4,5;,
 3;6,7,8;,
 3;9,10,11;,
 3;12,13,14;,
 3;15,14,16;,
 3;14,15,17;,
 3;18,19,20;,
 3;19,21,20;,
 3;22,19,23;,
 3;14,24,25;,
 3;12,14,25;,
 3;26,27,28;,
 3;29,30,31;,
 3;32,8,33;,
 3;34,35,36;,
 3;36,35,37;,
 3;30,29,16;,
 3;38,23,39;,
 3;14,13,16;,
 3;31,40,29;,
 3;16,13,30;,
 3;41,42,43;,
 3;4,44,45;,
 3;46,27,26;,
 3;47,48,27;,
 3;49,50,51;,
 3;52,53,54;,
 3;55,56,47;,
 3;48,54,27;,
 3;27,54,53;,
 3;57,58,59;,
 3;15,16,29;,
 3;60,61,62;,
 3;60,41,63;,
 3;64,65,0;,
 3;66,67,68;,
 3;69,70,71;,
 3;22,72,73;,
 3;74,75,43;,
 3;76,77,78;,
 3;20,79,18;,
 3;80,81,82;,
 3;83,84,57;,
 3;85,86,75;,
 3;87,88,89;,
 3;90,63,91;,
 3;21,19,92;,
 3;92,19,22;,
 3;93,51,94;,
 3;95,86,85;,
 3;96,69,71;,
 3;96,71,97;,
 3;98,53,23;,
 3;26,28,99;,
 3;100,101,63;,
 3;102,56,103;,
 3;104,105,106;,
 3;67,107,76;,
 3;74,85,75;,
 3;59,81,108;,
 3;83,70,69;,
 3;21,92,109;,
 3;94,51,2;,
 3;110,46,26;,
 3;111,12,25;,
 3;46,112,47;,
 3;55,47,112;,
 3;15,55,17;,
 3;17,55,113;,
 3;114,32,33;,
 3;1,115,94;,
 3;19,116,23;,
 3;73,92,22;,
 3;117,12,111;,
 3;117,111,118;,
 3;119,107,120;,
 3;42,121,122;,
 3;27,123,28;,
 3;90,50,60;,
 3;124,20,125;,
 3;111,126,65;,
 3;98,27,53;,
 3;18,79,123;,
 3;51,61,49;,
 3;127,67,31;,
 3;128,96,129;,
 3;23,53,39;,
 3;130,17,113;,
 3;72,23,38;,
 3;79,45,131;,
 3;125,5,4;,
 3;124,45,79;,
 3;131,45,132;,
 3;133,5,134;,
 3;134,5,125;,
 3;131,132,99;,
 3;124,4,45;,
 3;132,45,44;,
 3;4,3,44;,
 3;108,10,9;,
 3;135,136,104;,
 3;119,128,137;,
 3;59,58,81;,
 3;43,42,122;,
 3;136,135,138;,
 3;139,7,6;,
 3;89,140,87;,
 3;88,87,91;,
 3;141,2,140;,
 3;142,63,143;,
 3;144,145,64;,
 3;140,2,87;,
 3;2,146,0;,
 3;145,147,118;,
 3;146,64,0;,
 3;148,86,95;,
 3;148,95,149;,
 3;87,50,90;,
 3;90,60,63;,
 3;149,84,33;,
 3;0,126,1;,
 3;141,146,2;,
 3;91,87,90;,
 3;144,146,141;,
 3;144,64,146;,
 3;143,63,101;,
 3;143,101,148;,
 3;150,147,145;,
 3;150,151,147;,
 3;0,65,126;,
 3;147,151,68;,
 3;2,50,87;,
 3;101,75,86;,
 3;151,66,68;,
 3;152,120,153;,
 3;147,117,118;,
 3;139,6,154;,
 3;152,155,120;,
 3;33,84,114;,
 3;147,68,117;,
 3;32,128,6;,
 3;100,63,41;,
 3;111,25,156;,
 3;100,41,43;,
 3;107,119,137;,
 3;100,43,75;,
 3;85,82,58;,
 3;94,115,157;,
 3;57,59,83;,
 3;107,137,76;,
 3;74,82,85;,
 3;115,158,159;,
 3;155,119,120;,
 3;154,119,155;,
 3;84,95,57;,
 3;95,58,57;,
 3;65,118,111;,
 3;8,32,6;,
 3;114,84,83;,
 3;114,69,32;,
 3;153,120,107;,
 3;153,107,67;,
 3;50,49,60;,
 3;154,6,119;,
 3;32,69,128;,
 3;157,159,160;,
 3;43,122,74;,
 3;137,128,76;,
 3;128,129,77;,
 3;128,77,76;,
 3;67,78,31;,
 3;59,108,161;,
 3;156,162,159;,
 3;163,74,122;,
 3;96,97,164;,
 3;70,165,166;,
 3;161,108,165;,
 3;119,6,128;,
 3;94,157,93;,
 3;158,156,159;,
 3;58,82,81;,
 3;69,96,128;,
 3;49,61,60;,
 3;51,93,61;,
 3;93,160,167;,
 3;93,157,160;,
 3;67,76,78;,
 3;93,167,61;,
 3;83,161,70;,
 3;41,60,62;,
 3;121,163,122;,
 3;163,168,10;,
 3;42,169,121;,
 3;71,166,97;,
 3;77,104,106;,
 3;10,170,11;,
 3;166,171,97;,
 3;163,172,173;,
 3;97,174,164;,
 3;168,175,10;,
 3;163,176,168;,
 3;163,173,176;,
 3;62,169,41;,
 3;41,169,42;,
 3;61,169,62;,
 3;162,24,130;,
 3;70,166,71;,
 3;129,96,138;,
 3;108,9,165;,
 3;135,129,138;,
 3;14,17,130;,
 3;31,78,40;,
 3;165,9,166;,
 3;96,164,138;,
 3;81,10,108;,
 3;104,136,105;,
 3;40,177,102;,
 3;138,164,174;,
 3;166,11,171;,
 3;177,178,102;,
 3;11,170,171;,
 3;138,38,136;,
 3;173,172,37;,
 3;175,176,179;,
 3;171,72,174;,
 3;177,105,178;,
 3;171,180,72;,
 3;171,170,180;,
 3;37,172,36;,
 3;176,37,35;,
 3;174,72,38;,
 3;175,179,170;,
 3;72,180,73;,
 3;170,179,180;,
 3;15,103,55;,
 3;105,52,178;,
 3;176,35,179;,
 3;105,136,52;,
 3;136,38,39;,
 3;136,39,52;,
 3;181,182,183;,
 3;183,182,184;,
 3;27,46,47;,
 3;109,184,185;,
 3;98,123,27;,
 3;186,46,110;,
 3;187,188,134;,
 3;26,99,110;,
 3;123,79,131;,
 3;188,133,134;,
 3;28,131,99;,
 3;125,4,124;,
 3;179,183,180;,
 3;102,178,47;,
 3;55,103,56;,
 3;35,34,189;,
 3;178,52,54;,
 3;102,47,56;,
 3;180,183,109;,
 3;178,48,47;,
 3;35,189,183;,
 3;72,22,23;,
 3;189,181,183;,
 3;39,53,52;,
 3;73,180,92;,
 3;169,190,121;,
 3;134,184,187;,
 3;185,184,134;,
 3;129,104,77;,
 3;104,129,135;,
 3;51,50,2;,
 3;80,10,81;,
 3;14,130,24;,
 3;172,121,190;,
 3;103,15,29;,
 3;131,28,123;,
 3;176,175,168;,
 3;40,106,177;,
 3;78,106,40;,
 3;156,158,126;,
 3;121,172,163;,
 3;148,101,86;,
 3;63,142,91;,
 3;29,102,103;,
 3;149,95,84;,
 3;78,77,106;,
 3;37,176,173;,
 3;114,83,69;,
 3;100,75,101;,
 3;74,163,82;,
 3;54,48,178;,
 3;159,157,115;,
 3;80,163,10;,
 3;95,85,58;,
 3;183,184,109;,
 3;153,67,66;,
 3;161,83,59;,
 3;80,82,163;,
 3;112,46,186;,
 3;126,115,1;,
 3;106,105,177;,
 3;79,20,124;,
 3;24,156,25;,
 3;65,64,118;,
 3;126,158,115;,
 3;40,102,29;,
 3;70,161,165;,
 3;97,171,174;,
 3;2,1,94;,
 3;38,138,174;,
 3;13,12,117;,
 3;127,30,13;,
 3;13,117,127;,
 3;182,187,184;,
 3;170,10,175;,
 3;185,134,125;,
 3;127,117,68;,
 3;67,127,68;,
 3;64,145,118;,
 3;35,183,179;,
 3;125,20,21;,
 3;21,185,125;,
 3;109,185,21;,
 3;109,92,180;,
 3;18,123,98;,
 3;31,30,127;,
 3;162,156,24;,
 3;166,9,11;,
 3;116,19,18;,
 3;98,23,116;,
 3;156,126,111;,
 3;18,98,116;;
 
 MeshMaterialList {
  1;
  333;
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
   0.400000;0.400000;0.400000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  192;
  -0.518187;-0.747771;0.415116;,
  -0.607969;-0.756145;0.242113;,
  -0.743328;-0.668198;0.031207;,
  0.458374;0.869387;-0.184550;,
  0.403389;0.900771;-0.160899;,
  0.360734;0.847052;-0.390352;,
  0.608932;0.727020;-0.317245;,
  0.465662;0.724784;-0.507787;,
  0.379425;0.625884;-0.681400;,
  0.324822;0.454318;-0.829509;,
  -0.043328;0.285738;-0.957328;,
  0.370266;0.566043;-0.736545;,
  -0.034845;-0.261555;0.964559;,
  0.184127;-0.102988;0.977492;,
  -0.056179;-0.092073;0.994166;,
  0.232158;0.231129;0.944819;,
  0.256603;0.137275;0.956719;,
  -0.052961;0.015888;0.998470;,
  0.726586;0.687075;0.001250;,
  0.844365;0.441969;-0.302839;,
  0.622374;0.763656;-0.171700;,
  0.732720;0.492812;-0.469316;,
  0.900543;0.130208;-0.414811;,
  0.972639;0.203248;-0.112536;,
  -0.383872;-0.334493;0.860672;,
  -0.267700;-0.355583;0.895487;,
  0.386868;0.603112;0.697560;,
  0.638368;0.437796;0.633104;,
  0.475830;0.709167;0.520258;,
  0.451989;0.310125;0.836378;,
  0.408806;0.094015;0.907766;,
  0.576169;0.269534;0.771609;,
  0.616083;0.530121;-0.582591;,
  0.656820;0.203973;-0.725935;,
  0.514477;-0.728503;-0.452324;,
  0.279038;-0.568637;-0.773815;,
  0.271222;-0.838673;-0.472298;,
  -0.053043;-0.597053;-0.800446;,
  0.960274;0.228880;-0.159647;,
  0.985746;0.132829;0.103252;,
  0.568627;0.438698;0.695850;,
  -0.693573;-0.664947;-0.277132;,
  -0.654119;-0.517637;-0.551524;,
  -0.599803;-0.579904;-0.551314;,
  0.488939;0.868801;0.078247;,
  0.410498;0.904757;0.113605;,
  0.350809;0.387417;0.852550;,
  0.435587;0.139780;0.889227;,
  0.620959;0.188390;0.760867;,
  -0.667050;-0.645390;-0.372176;,
  -0.664902;-0.640762;-0.383835;,
  -0.707828;-0.678992;-0.194804;,
  0.915964;0.224969;0.332264;,
  0.927700;0.250819;0.276519;,
  0.816376;0.238350;0.526041;,
  0.192035;0.143368;0.970859;,
  0.324127;0.102436;0.940451;,
  0.543840;-0.153021;-0.825120;,
  0.270634;-0.158566;-0.949534;,
  0.448754;0.054669;-0.891982;,
  -0.661067;-0.677496;-0.322474;,
  -0.682096;-0.652105;-0.330914;,
  -0.710804;-0.657193;-0.250708;,
  -0.579420;-0.649034;-0.492977;,
  -0.442654;-0.552297;0.706418;,
  -0.277685;-0.728985;0.625678;,
  0.492967;0.089274;0.865456;,
  0.649231;0.196266;0.734833;,
  0.369916;-0.081756;0.925461;,
  0.867448;0.367648;-0.335215;,
  0.773417;0.385096;-0.503516;,
  0.833556;0.508815;-0.215154;,
  0.901013;0.181113;-0.394174;,
  0.868348;0.012346;-0.495802;,
  -0.443139;-0.424462;-0.789594;,
  -0.439976;-0.598216;-0.669745;,
  0.853427;0.277759;0.441036;,
  0.838271;0.481349;0.256135;,
  0.705043;0.357785;0.612295;,
  0.495684;0.860800;0.115420;,
  -0.293315;-0.043889;-0.955008;,
  0.077587;0.011737;-0.996917;,
  -0.171965;-0.247746;-0.953441;,
  0.791683;0.113110;-0.600370;,
  0.711247;-0.137144;-0.689435;,
  -0.140769;-0.440942;-0.886428;,
  -0.195183;-0.671939;-0.714424;,
  -0.805877;-0.415039;-0.422261;,
  -0.833803;-0.267456;-0.482949;,
  -0.898726;-0.329249;-0.289633;,
  -0.704283;-0.531261;-0.470901;,
  -0.713732;-0.379787;-0.588514;,
  0.812713;0.177737;-0.554894;,
  -0.675091;-0.737719;-0.004756;,
  -0.701064;-0.709308;0.073434;,
  0.255210;-0.453823;-0.853764;,
  0.817984;0.537562;-0.204770;,
  0.752266;0.641620;-0.149734;,
  0.855169;0.472239;0.213718;,
  0.364262;0.774443;0.517254;,
  -0.573670;-0.691809;-0.438524;,
  -0.332346;-0.723941;-0.604529;,
  0.524448;0.322679;0.787929;,
  0.366123;0.290003;0.884224;,
  0.771232;0.633270;0.064577;,
  0.756531;0.586219;0.289840;,
  0.658575;0.619078;0.427810;,
  0.736750;0.335931;0.586813;,
  0.296034;0.229305;-0.927245;,
  0.609410;0.227439;-0.759533;,
  0.276241;0.574437;0.770527;,
  -0.236572;-0.567040;0.788986;,
  0.283865;0.191307;0.939586;,
  -0.175663;-0.039966;0.983639;,
  0.842058;0.190319;-0.504694;,
  -0.637233;-0.699278;0.323951;,
  0.872795;0.485224;-0.052789;,
  0.145649;-0.331673;0.932084;,
  -0.161847;-0.586647;0.793505;,
  0.721584;0.587796;0.365803;,
  0.577384;0.483232;0.658114;,
  -0.606315;-0.336707;-0.720424;,
  -0.537651;-0.388971;-0.748086;,
  0.650808;0.688036;0.321022;,
  0.398288;0.910569;-0.110593;,
  0.464580;0.788757;-0.402526;,
  -0.453160;-0.721179;0.523973;,
  0.468875;0.005820;0.883245;,
  0.853023;0.520990;-0.030339;,
  0.826003;0.529291;-0.193829;,
  -0.299022;-0.208150;0.931268;,
  0.446445;0.842119;0.302527;,
  0.455294;0.844218;0.282847;,
  0.268781;0.770976;-0.577367;,
  0.327200;0.675258;-0.661035;,
  0.735406;0.624918;-0.262022;,
  0.864907;0.501876;0.007582;,
  0.835048;0.332729;0.438162;,
  0.786866;0.538651;-0.301158;,
  0.575988;0.740677;-0.345883;,
  -0.873258;-0.467828;-0.136225;,
  -0.734845;-0.459713;0.498664;,
  -0.361199;-0.491874;-0.792210;,
  -0.240851;-0.628897;-0.739243;,
  -0.556087;-0.409980;0.722969;,
  -0.366416;-0.434375;0.822835;,
  -0.640262;-0.507524;0.576614;,
  -0.015521;-0.324965;0.945599;,
  0.060494;-0.686408;-0.724696;,
  0.503774;-0.409722;-0.760486;,
  -0.181520;-0.218335;0.958843;,
  0.209997;-0.103089;0.972252;,
  0.466131;0.462393;0.754264;,
  0.580344;0.329497;0.744737;,
  0.615369;0.787892;-0.023381;,
  0.581560;0.634816;0.508720;,
  -0.507803;-0.522657;0.684811;,
  -0.648959;-0.717043;0.254366;,
  -0.580116;-0.640378;0.503369;,
  -0.611637;-0.628936;0.479937;,
  -0.534360;-0.786047;0.310788;,
  0.543500;0.242115;-0.803734;,
  -0.545393;-0.425181;0.722335;,
  -0.405494;-0.105186;-0.908026;,
  0.778583;0.611278;-0.141941;,
  0.561892;0.389927;-0.729543;,
  0.628722;0.608232;-0.484523;,
  -0.578191;-0.815726;-0.016917;,
  -0.263589;0.123055;-0.956754;,
  -0.730873;-0.535275;-0.423444;,
  0.411433;0.467199;-0.782591;,
  0.663482;0.558949;-0.497360;,
  -0.468707;-0.229455;-0.853032;,
  -0.230481;-0.162324;-0.959442;,
  0.849975;0.464066;-0.249370;,
  0.065002;0.227990;-0.971491;,
  -0.084974;-0.141571;-0.986274;,
  0.629441;0.558837;0.539912;,
  0.733944;0.274783;0.621145;,
  0.323823;0.010871;-0.946055;,
  0.682808;0.223224;-0.695661;,
  0.368202;0.030759;-0.929237;,
  0.366827;0.266699;-0.891241;,
  0.435075;-0.061686;-0.898279;,
  0.383712;0.370331;-0.845943;,
  0.517635;0.506519;-0.689560;,
  0.224385;0.431947;0.873541;,
  0.302182;0.532735;-0.790493;,
  0.254730;0.685502;-0.682056;,
  0.427837;-0.443476;-0.787581;,
  -0.642733;-0.325959;-0.693286;,
  0.192177;-0.953398;-0.232594;;
  333;
  3;0,1,2;,
  3;3,4,5;,
  3;6,7,8;,
  3;9,10,11;,
  3;12,13,14;,
  3;15,14,16;,
  3;14,15,17;,
  3;18,19,20;,
  3;19,21,20;,
  3;22,19,23;,
  3;14,24,25;,
  3;12,14,25;,
  3;26,27,28;,
  3;29,30,31;,
  3;32,8,33;,
  3;34,35,36;,
  3;36,35,37;,
  3;30,29,16;,
  3;38,23,39;,
  3;14,13,16;,
  3;31,40,29;,
  3;16,13,30;,
  3;41,42,43;,
  3;4,44,45;,
  3;46,27,26;,
  3;47,48,27;,
  3;49,50,51;,
  3;52,53,54;,
  3;55,56,47;,
  3;48,54,27;,
  3;27,54,53;,
  3;57,58,59;,
  3;15,16,29;,
  3;60,61,62;,
  3;60,41,63;,
  3;64,65,0;,
  3;66,67,68;,
  3;69,70,71;,
  3;22,72,73;,
  3;74,75,43;,
  3;76,77,78;,
  3;20,79,18;,
  3;80,81,82;,
  3;83,84,57;,
  3;85,86,75;,
  3;87,88,89;,
  3;90,63,91;,
  3;21,19,92;,
  3;92,19,22;,
  3;93,51,94;,
  3;95,86,85;,
  3;96,69,71;,
  3;96,71,97;,
  3;98,53,23;,
  3;26,28,99;,
  3;100,101,63;,
  3;102,56,103;,
  3;104,105,106;,
  3;67,107,76;,
  3;74,85,75;,
  3;59,81,108;,
  3;83,70,69;,
  3;21,92,109;,
  3;94,51,2;,
  3;110,46,26;,
  3;111,12,25;,
  3;46,112,47;,
  3;55,47,112;,
  3;15,55,17;,
  3;17,55,113;,
  3;114,32,33;,
  3;1,115,94;,
  3;19,116,23;,
  3;73,92,22;,
  3;117,12,111;,
  3;117,111,118;,
  3;119,107,120;,
  3;42,121,122;,
  3;27,123,28;,
  3;90,50,60;,
  3;124,20,125;,
  3;111,126,65;,
  3;98,27,53;,
  3;18,79,123;,
  3;51,61,49;,
  3;127,67,31;,
  3;128,96,129;,
  3;23,53,39;,
  3;130,17,113;,
  3;72,23,38;,
  3;79,45,131;,
  3;125,5,4;,
  3;124,45,79;,
  3;131,45,132;,
  3;133,5,134;,
  3;134,5,125;,
  3;131,132,99;,
  3;124,4,45;,
  3;132,45,44;,
  3;4,3,44;,
  3;108,10,9;,
  3;135,136,104;,
  3;119,128,137;,
  3;59,58,81;,
  3;43,42,122;,
  3;136,135,138;,
  3;139,7,6;,
  3;89,140,87;,
  3;88,87,91;,
  3;141,2,140;,
  3;142,63,143;,
  3;144,145,64;,
  3;140,2,87;,
  3;2,146,0;,
  3;145,147,118;,
  3;146,64,0;,
  3;148,86,95;,
  3;148,95,149;,
  3;87,50,90;,
  3;90,60,63;,
  3;149,84,33;,
  3;0,126,1;,
  3;141,146,2;,
  3;91,87,90;,
  3;144,146,141;,
  3;144,64,146;,
  3;143,63,101;,
  3;143,101,148;,
  3;150,147,145;,
  3;150,151,147;,
  3;0,65,126;,
  3;147,151,68;,
  3;2,50,87;,
  3;101,75,86;,
  3;151,66,68;,
  3;152,120,153;,
  3;147,117,118;,
  3;139,6,154;,
  3;152,155,120;,
  3;33,84,114;,
  3;147,68,117;,
  3;32,128,6;,
  3;100,63,41;,
  3;111,25,156;,
  3;100,41,43;,
  3;107,119,137;,
  3;100,43,75;,
  3;85,82,58;,
  3;94,115,157;,
  3;57,59,83;,
  3;107,137,76;,
  3;74,82,85;,
  3;115,158,159;,
  3;155,119,120;,
  3;154,119,155;,
  3;84,95,57;,
  3;95,58,57;,
  3;65,118,111;,
  3;8,32,6;,
  3;114,84,83;,
  3;114,69,32;,
  3;153,120,107;,
  3;153,107,67;,
  3;50,49,60;,
  3;154,6,119;,
  3;32,69,128;,
  3;157,159,160;,
  3;43,122,74;,
  3;137,128,76;,
  3;128,129,77;,
  3;128,77,76;,
  3;67,78,31;,
  3;59,108,161;,
  3;156,162,159;,
  3;163,74,122;,
  3;96,97,164;,
  3;70,165,166;,
  3;161,108,165;,
  3;119,6,128;,
  3;94,157,93;,
  3;158,156,159;,
  3;58,82,81;,
  3;69,96,128;,
  3;49,61,60;,
  3;51,93,61;,
  3;93,160,167;,
  3;93,157,160;,
  3;67,76,78;,
  3;93,167,61;,
  3;83,161,70;,
  3;41,60,62;,
  3;121,163,122;,
  3;163,168,10;,
  3;42,169,121;,
  3;71,166,97;,
  3;77,104,106;,
  3;10,170,11;,
  3;166,171,97;,
  3;163,172,173;,
  3;97,174,164;,
  3;168,175,10;,
  3;163,176,168;,
  3;163,173,176;,
  3;62,169,41;,
  3;41,169,42;,
  3;61,169,62;,
  3;162,24,130;,
  3;70,166,71;,
  3;129,96,138;,
  3;108,9,165;,
  3;135,129,138;,
  3;14,17,130;,
  3;31,78,40;,
  3;165,9,166;,
  3;96,164,138;,
  3;81,10,108;,
  3;104,136,105;,
  3;40,177,102;,
  3;138,164,174;,
  3;166,11,171;,
  3;177,178,102;,
  3;11,170,171;,
  3;138,38,136;,
  3;173,172,37;,
  3;175,176,179;,
  3;171,72,174;,
  3;177,105,178;,
  3;171,180,72;,
  3;171,170,180;,
  3;37,191,36;,
  3;176,37,35;,
  3;174,72,38;,
  3;175,179,170;,
  3;72,180,73;,
  3;170,179,180;,
  3;15,103,55;,
  3;105,52,178;,
  3;176,35,179;,
  3;105,136,52;,
  3;136,38,39;,
  3;136,39,52;,
  3;181,182,183;,
  3;183,182,184;,
  3;27,46,47;,
  3;109,184,185;,
  3;98,123,27;,
  3;186,46,110;,
  3;187,188,134;,
  3;26,99,110;,
  3;123,79,131;,
  3;188,133,134;,
  3;28,131,99;,
  3;125,4,124;,
  3;179,183,180;,
  3;102,178,47;,
  3;55,103,56;,
  3;35,34,189;,
  3;178,52,54;,
  3;102,47,56;,
  3;180,183,109;,
  3;178,48,47;,
  3;35,189,183;,
  3;72,22,23;,
  3;189,181,183;,
  3;39,53,52;,
  3;73,180,92;,
  3;169,190,121;,
  3;134,184,187;,
  3;185,184,134;,
  3;129,104,77;,
  3;104,129,135;,
  3;51,50,2;,
  3;80,10,81;,
  3;14,130,24;,
  3;172,121,190;,
  3;103,15,29;,
  3;131,28,123;,
  3;176,175,168;,
  3;40,106,177;,
  3;78,106,40;,
  3;156,158,126;,
  3;121,172,163;,
  3;148,101,86;,
  3;63,142,91;,
  3;29,102,103;,
  3;149,95,84;,
  3;78,77,106;,
  3;37,176,173;,
  3;114,83,69;,
  3;100,75,101;,
  3;74,163,82;,
  3;54,48,178;,
  3;159,157,115;,
  3;80,163,10;,
  3;95,85,58;,
  3;183,184,109;,
  3;153,67,66;,
  3;161,83,59;,
  3;80,82,163;,
  3;112,46,186;,
  3;126,115,1;,
  3;106,105,177;,
  3;79,20,124;,
  3;24,156,25;,
  3;65,64,118;,
  3;126,158,115;,
  3;40,102,29;,
  3;70,161,165;,
  3;97,171,174;,
  3;2,1,94;,
  3;38,138,174;,
  3;13,12,117;,
  3;127,30,13;,
  3;13,117,127;,
  3;182,187,184;,
  3;170,10,175;,
  3;185,134,125;,
  3;127,117,68;,
  3;67,127,68;,
  3;64,145,118;,
  3;35,183,179;,
  3;125,20,21;,
  3;21,185,125;,
  3;109,185,21;,
  3;109,92,180;,
  3;18,123,98;,
  3;31,30,127;,
  3;162,156,24;,
  3;166,9,11;,
  3;116,19,18;,
  3;98,23,116;,
  3;156,126,111;,
  3;18,98,116;;
 }
 MeshTextureCoords {
  191;
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;;
 }
}
