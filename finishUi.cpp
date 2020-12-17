//=============================================================================
//
// ゴール用UI処理 [finishUi.cpp]
// Author : masayasu wakita
//
//=============================================================================
#include "finishUi.h"
#include "manager.h"
#include "renderer.h"

//=============================================================================
// コンストラクタ
//=============================================================================
CFinishUi::CFinishUi(CScene::PRIORITY obj = CScene::PRIORITY_UI) : CScene2D(obj)
{
	// 優先度の設定
	SetObjType(CScene::PRIORITY_UI);				// オブジェクトタイプ
}

//=============================================================================
// デストラクタ
//=============================================================================
CFinishUi::~CFinishUi()
{

}

//=============================================================================
// 初期化処理
//=============================================================================
HRESULT CFinishUi::Init(void)
{
	LPDIRECT3DDEVICE9 pDevice;
	CRenderer *pRenderer = CManager::GetRenderer();

	//デバイスを取得する
	pDevice = pRenderer->GetDevice();
	D3DXVECTOR3 pos = GetPosition();							// プレイヤーの位置取得

	pos = D3DXVECTOR3(SCREEN_WIDTH / 2, -50.0f, 0.0f);			// プレイヤーの位置設定

	// キャラクターの初期化処理
	CScene2D::Init();

	// 位置の設定
	SetPosition(pos);

	// テクスチャの設定
	BindTexture("data/tex/Finish.png");

	return S_OK;
}

//=============================================================================
// 開放処理
//=============================================================================
void CFinishUi::Uninit(void)
{
	CScene2D::Uninit();
}

//=============================================================================
// 更新処理
//=============================================================================
void CFinishUi::Update(void)
{
	D3DXVECTOR3 pos;

	pos = GetPosition();				// 位置の取得

	// 位置更新
	pos += m_move;

	// 減速
	m_move.y -= 0.098;

	// 位置設定
	SetPosition(pos);

	// キャラクターの更新処理
	CScene2D::Update();

#ifdef _DEBUG
	Debug();
#endif
}

//=============================================================================
// 描画処理
//=============================================================================
void CFinishUi::Draw(void)
{
	CScene2D::Draw();
}

//=============================================================================
// クリエイト処理
//=============================================================================
CFinishUi *CFinishUi::Create(void)
{
	CFinishUi *pFinishUi;
	pFinishUi = new CFinishUi(CScene::PRIORITY_UI);
	pFinishUi->Init();
	return pFinishUi;
}

//=============================================================================
// ロード処理
//=============================================================================
HRESULT CFinishUi::Load(void)
{
	return S_OK;
}

#ifdef _DEBUG
//=============================================================================
// デバッグ処理
//=============================================================================
void CFinishUi::Debug(void)
{

}
#endif