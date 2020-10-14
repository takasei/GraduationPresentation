//=============================================================================
//
// スクリプト書き込み処理 [write.cpp]
// Author : masayasu wakita
//
//=============================================================================
//=============================================================================
// インクルードファイル
//=============================================================================
#include "write.h"

//=============================================================================
// マクロ定義
//=============================================================================
#define COMMENT_BLOCK "#==============================================================================\n"

//=============================================================================
// 静的メンバ変数
//=============================================================================
FILE *CWrite::pFile = NULL;

//=============================================================================
// 開くなければ生成する処理
//=============================================================================
bool CWrite::Open(const std::string &add)
{
	if (pFile != NULL) End();

	// テキストデータロード
	pFile = fopen(add.c_str(), "w");

	return true;
}

//=============================================================================
// 書き込み処理
//=============================================================================
bool CWrite::Write(const char* frm, ...)
{
	if (pFile == NULL) return false;				// ファイルが無ければ終わり

	va_list args;			// リストの取得
	char text[64];

	va_start(args, frm);		// リストの先頭を取得
	vsprintf(text, frm, args);
	va_end(args);						// リストを開放する

	// 書き込み
	fputs(text, pFile);

	return true;
}

//=============================================================================
// タイトルの書き込み
//=============================================================================
bool CWrite::TitleWrite(const char* frm, ...)
{
	if(pFile == NULL) return false;

	va_list args;			// リストの取得
	std::string write;
	char text[64];

	//コメントブロック//
	write = COMMENT_BLOCK;

	//コメント改行
	write += "#\n";

	va_start(args, frm);		// リストの先頭を取得
	vsprintf(text, frm, args);
	va_end(args);						// リストを開放する

	// 内容書き込み
	write += text;

	//コメント改行
	write += "#\n";

	//コメントブロック//
	write += COMMENT_BLOCK;

	// 書き込み
	fputs(write.c_str(), pFile);

	return true;
}

//=============================================================================
// 見出しの書き込み
//=============================================================================
bool CWrite::IndexWrite(const char* frm, ...)
{
	if (pFile == NULL) return false;				// ファイルが無ければ終わり

	va_list args;			// リストの取得
	std::string write;
	char text[64];

	//コメントブロック//
	write = COMMENT_BLOCK;

	va_start(args, frm);		// リストの先頭を取得
	vsprintf(text, frm, args);
	va_end(args);						// リストを開放する

	// 内容書き込み
	write += text;

	//コメントブロック//
	write += COMMENT_BLOCK;

	// 書き込み
	fputs(write.c_str(), pFile);

	return true;
}

//=============================================================================
// 終了処理
//=============================================================================
bool CWrite::End(void)
{
	if (pFile == NULL) return true;				// ファイルが無ければ終わり

	//ファイル閉
	if (EOF == fclose(pFile))
	{
		return false;
	}

	return true;
}