//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//グローバル
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
float4x4 mProj; 
float4x4 mView; 
float4x4 mWorld; 
float3 LightPos;
float3 EyePos; 
float4 Diffuse;
texture DecalTexture;
texture ShadeTexture; 
texture LineTexture; 
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//定義
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
sampler DecalSampler = sampler_state
{
	Texture = (DecalTexture);
	MinFilter = LINEAR;
    MagFilter = LINEAR;
    MipFilter = NONE;
    AddressU = Clamp;
    AddressV = Clamp;
};

sampler ShadeSampler = sampler_state
{	
	Texture = (ShadeTexture);
};

sampler LineSampler = sampler_state
{
	Texture = (LineTexture);
};

struct VS_OUT_PS_IN
{
	float4 Position : POSITION; 
	float2 Decal : TEXCOORD;
	float Line : TEXCOORD1; 
	float Shade : TEXCOORD2;	
	
};
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//バーテックス・シェーダー
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
VS_OUT_PS_IN VS(float3 Position : POSITION, float3 Normal : NORMAL, float4 Color : COLOR,float2 TexCoord :TEXCOORD)
{
	VS_OUT_PS_IN Out = (VS_OUT_PS_IN)0; 			
	
	Out.Position = mul(float4(Position, 1), mWorld);
	float3 lightVec = normalize(LightPos - Out.Position);
	float3 eyeVec = normalize(EyePos - Out.Position);
	Normal = mul(Normal, (float3x3)mWorld);						
	Out.Line = max(dot(Normal, eyeVec), 0.2f);
	Out.Shade = max(dot(Normal, lightVec), 0.2f);	
	Out.Position = mul(Out.Position, mul(mView, mProj));	
	Out.Decal = TexCoord;
		
	return Out;
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//ピクセル・シェーダー
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
float4 PS( VS_OUT_PS_IN In) : COLOR
{
	float4 Color;
	
	Color = tex2D(DecalSampler , In.Decal) * Diffuse * tex1D(LineSampler, In.Line) * tex1D(ShadeSampler, In.Shade);

	return Color; 
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// テクニック
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
technique ToonShading
{
	pass Toon
	{	
		ZEnable = TRUE; 		
		
		Sampler[0] = (LineSampler);	
		Sampler[1] = (ShadeSampler); 
			
		VertexShader = compile vs_2_0 VS();
		PixelShader = compile ps_2_0 PS(); 
	}
}