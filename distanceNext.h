//=============================================================================
//
// 次との距離を求める処理 [distanceNext.h]
// Author : masayasu wakita
//
//=============================================================================
#ifndef _DISTANCENEXT_H_
#define _DISTANCENEXT_H_

//=============================================================================
// インクルードファイル
//=============================================================================
#include "main.h"
#include "network.h"

//=============================================================================
// マクロ定義
//=============================================================================
#define DISTANCE_MAXNUM 3		//距離の最大桁数
#define MAX_ROUND 3		// 周回回数

//=============================================================================
// 前方宣言
//=============================================================================
class CUi;
class CNumber;

//=============================================================================
// クラス定義
//=============================================================================
class CDistanceNext
{
public:
	CDistanceNext();			// コンストラクタ
	~CDistanceNext();			// デストラクタ
	HRESULT Init(void);			// 初期化処理
	void Uninit(void);			// 開放処理
	void Update(void);			// 更新処理
	void Draw(void);			// 描画処理

	static CDistanceNext *Create(void);	// クリエイト処理
	static HRESULT Load(void);	// ロード処理

	void SetPosition(D3DXVECTOR3 &pos);					// 位置の設定
	void SetDistance(D3DXVECTOR3 &distance);			// 差分の設定
	void SetIntervalNum(D3DXVECTOR3 &interval);			// 数字どうしの距離
	void SetNowRound(void);								// 現在の周回回数

	D3DXVECTOR3 GetPosition(void) { return m_pos; }		// 位置の取得
	D3DXVECTOR3 GetDistance(void) { return m_distance; }// 差分の取得
	int GetNowRound(void) { return m_nNowRound; }		// 現在の周回回数を取得

	void ShowInspector(void) {};

public:
	void SetTransform(void);
	void SetNumber(int nValue);	// 数値の設定

	float CalculateCourseRange(int nRound, unsigned int &nPointNum, D3DXVECTOR3 &pos);	// コースの残り距離を求める処理

	CNumber	*m_apNumber[DISTANCE_MAXNUM];

	D3DXVECTOR3 m_pos;				// 位置
	D3DXVECTOR3 m_distance;			// オフセット
	D3DXVECTOR3 m_IntervalNum;		// 数字どうしの距離
	int m_nNowRound;				// 現在の周回回数

	int m_nRank[MAX_PLAYER];		// プレイヤー全員のランク
};
#endif