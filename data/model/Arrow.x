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
 28;
 -0.00025;-3.72868;-19.78709;,
 0.00025;-3.72868;-19.78709;,
 0.00025;-6.81090;-18.96121;,
 -0.00025;-6.81090;-18.96121;,
 0.00025;-3.72868;-19.78709;,
 10.00000;1.44771;-0.46858;,
 10.00000;-1.63451;0.35730;,
 0.00025;-6.81090;-18.96121;,
 -10.00000;1.44771;-0.46858;,
 -0.00025;-3.72868;-19.78709;,
 -0.00025;-6.81090;-18.96121;,
 -10.00000;-1.63451;0.35730;,
 0.00025;-3.72868;-19.78709;,
 -0.00025;-3.72868;-19.78709;,
 -0.00025;-6.81090;-18.96121;,
 0.00025;-6.81090;-18.96121;,
 -2.26209;1.44771;-0.46858;,
 -10.00000;1.44771;-0.46858;,
 -10.00000;-1.63451;0.35730;,
 -2.26209;-1.63451;0.35730;,
 -6.19171;4.44903;23.06138;,
 -6.19171;7.53124;22.23550;,
 5.68221;4.44903;23.06138;,
 5.68221;7.53124;22.23550;,
 2.08778;-1.63451;0.35730;,
 10.00000;-1.63451;0.35730;,
 10.00000;1.44771;-0.46858;,
 2.08778;1.44771;-0.46858;;
 
 12;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;8,5,12,13;,
 4;14,15,6,11;,
 4;16,17,18,19;,
 4;20,21,16,19;,
 4;22,23,21,20;,
 4;24,25,26,27;,
 4;24,27,23,22;,
 4;16,21,23,27;,
 4;19,24,22,20;;
 
 MeshMaterialList {
  1;
  12;
  0,
  0,
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
   0.800000;0.759200;0.084800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  12;
  0.000000;-0.258820;-0.965926;,
  0.894432;-0.115745;-0.431966;,
  -0.894432;-0.115745;-0.431966;,
  0.000000;0.258820;0.965926;,
  -0.986311;-0.042678;-0.159275;,
  0.000000;0.258820;0.965926;,
  0.000000;0.258820;0.965926;,
  0.000000;0.965926;-0.258819;,
  0.000000;-0.965926;0.258819;,
  0.988509;-0.039124;-0.146014;,
  0.000000;0.965926;-0.258819;,
  0.000000;-0.965926;0.258819;;
  12;
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;7,7,7,7;,
  4;8,8,8,8;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;5,5,5,5;,
  4;6,6,6,6;,
  4;9,9,9,9;,
  4;10,10,10,10;,
  4;11,11,11,11;;
 }
 MeshTextureCoords {
  28;
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.639120;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.639120;1.000000;,
  0.626100;1.000000;,
  0.626100;0.000000;,
  0.399370;1.000000;,
  0.399370;0.000000;,
  0.369600;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.369600;0.000000;;
 }
}
