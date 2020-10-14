//=============================================================================
//
// 入力処理 [input.h]
// Author : masayasu wakita
//
//=============================================================================
#ifndef _INPUT_H_
#define _INPUT_H_

//=============================================================================
// インクルードファイル
//=============================================================================
#include "main.h"

//=============================================================================
// クラス定義
//=============================================================================
class CInput
{
public:
	CInput();														// コンストラクタ
	virtual ~CInput();												// デストラクタ
	virtual HRESULT Init(HINSTANCE hInstance, HWND hWnd) = 0;		// 初期化処理
	virtual void Uninit(void) = 0;									// 開放処理
	virtual void Update(void) = 0;									// 更新処理

protected:
	static LPDIRECTINPUT8 m_pInput;									// インプットオブジェクトのポインタ
	LPDIRECTINPUTDEVICE8 m_pDevice;									// デバイスのポインタ
};
#endif