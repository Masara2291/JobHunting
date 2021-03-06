//===============================================
//
// シーン上の2Dポリゴン処理 (scene2d.cpp)
// Author : 後藤慎之助
//
//===============================================

//========================
// インクルードファイル
//========================
#include "scene2d.h"
#include "manager.h"
#include "renderer.h"

//========================================
// 静的メンバ変数宣言
//========================================
bool CScene2D::m_bAdditiveSynthesis = false;
bool CScene2D::m_bAlphaTest = false;
bool CScene2D::m_bNega = false;

//===========================================
// テンプレート関数                       
//===========================================

//===========================================
// 割り算
//
// 引数   :data0,data1はデータ
// 戻り値 :計算結果
//===========================================
template<class T> T Divide(const T data0, const T data1)
{
    // 変数宣言
    T answer;   // 答え

                // 割る
    answer = data0 / data1;

    return answer;
}

//============================================================
// シーン上の2Dポリゴンのデフォルトコンストラクタ
//============================================================
CScene2D::CScene2D()
{
    m_pTexture = NULL;
    m_pVtxBuff = NULL;
    m_pos = DEFAULT_VECTOR;
    m_size = DEFAULT_VECTOR;
    m_nCounterAnim = 0;
    m_nPatternAnim = 0;
}

//============================================================
// シーン上の2Dポリゴンのオーバーライドされたコンストラクタ
//============================================================
CScene2D::CScene2D(OBJTYPE objType) :CScene(objType)
{
    m_pTexture = NULL;
    m_pVtxBuff = NULL;
    m_pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
    m_size = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
    m_nCounterAnim = 0;
    m_nPatternAnim = 0;
}

//============================================================
// シーン上の2Dポリゴンのデストラクタ
//============================================================
CScene2D::~CScene2D()
{

}

//============================================================
// シーン上の2Dポリゴンの初期化処理
//============================================================
HRESULT CScene2D::Init(D3DXVECTOR3 pos, D3DXVECTOR3 size, D3DXVECTOR3 rot)
{
    // レンダラーからデバイスの取得
    LPDIRECT3DDEVICE9 pDevice = CManager::GetRenderer()->GetDevice();

    // 位置を結びつける
    m_pos = pos;

    // 大きさを結びつける
    m_size = size;

    //頂点バッファ生成
    pDevice->CreateVertexBuffer(sizeof(VERTEX_2D)*NUM_VERTEX, D3DUSAGE_WRITEONLY, FVF_VERTEX_2D, D3DPOOL_MANAGED, &m_pVtxBuff, NULL);
    VERTEX_2D *pVtx = NULL;	//頂点情報へのポインタ

    //頂点データの範囲をロックし、頂点バッファへのポインタを取得
    m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);	//この書式は変えないこと

    //頂点座標の設定（右回りで設定する）
    pVtx[0].pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
    pVtx[1].pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
    pVtx[2].pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
    pVtx[3].pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);

    // rhwの設定（値は1.0で設定する）
    pVtx[0].rhw = 1.0f;
    pVtx[1].rhw = 1.0f;
    pVtx[2].rhw = 1.0f;
    pVtx[3].rhw = 1.0f;

    // 頂点カラーを設定（0.0f〜1.0fの値で設定する）
    pVtx[0].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
    pVtx[1].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
    pVtx[2].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
    pVtx[3].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);

    //テクスチャ座標の設定
    pVtx[0].tex = D3DXVECTOR2(0.0f, 0.0f);
    pVtx[1].tex = D3DXVECTOR2(1.0f, 0.0f);
    pVtx[2].tex = D3DXVECTOR2(0.0f, 1.0f);
    pVtx[3].tex = D3DXVECTOR2(1.0f, 1.0f);

    //頂点データをアンロックする
    m_pVtxBuff->Unlock();

    return S_OK;
}

//============================================================
// シーン上の2Dポリゴンの終了処理
//============================================================
void CScene2D::Uninit(void)
{
    // 頂点バッファの破棄
    if (m_pVtxBuff != NULL)
    {
        m_pVtxBuff->Release();
        m_pVtxBuff = NULL;
    }

    // オブジェクトの破棄
    Release();
}

//============================================================
// シーン上の2Dポリゴンの更新処理
//============================================================
void CScene2D::Update(void)
{

}

//=============================================================
// シーン上の2Dポリゴンの描画処理
//=============================================================
void CScene2D::Draw(void)
{
    // レンダラーからデバイスの取得
    LPDIRECT3DDEVICE9 pDevice = CManager::GetRenderer()->GetDevice();

    // 頂点バッファをデバイスのデータストリームにバインド
    pDevice->SetStreamSource(0, m_pVtxBuff, 0, sizeof(VERTEX_2D));

    // 頂点フォーマットの設定
    pDevice->SetFVF(FVF_VERTEX_2D);

    // アルファテスト
    if (m_bAlphaTest == true)
    {
        //アルファテストを有効化
        pDevice->SetRenderState(D3DRS_ALPHATESTENABLE, TRUE);
        //アルファテスト基準値の設定
        pDevice->SetRenderState(D3DRS_ALPHAREF, 50);
        //アルファテストの比較方法の設定
        pDevice->SetRenderState(D3DRS_ALPHAFUNC, D3DCMP_GREATER);
    }

    // 加算合成
    if (m_bAdditiveSynthesis == true)
    {
        // レンダーステート(加算合成にする)
        pDevice->SetRenderState(D3DRS_BLENDOP, D3DBLENDOP_ADD);
        pDevice->SetRenderState(D3DRS_SRCBLEND, D3DBLEND_SRCALPHA);
        pDevice->SetRenderState(D3DRS_DESTBLEND, D3DBLEND_ONE);
    }

    // 反転合成
    if (m_bNega == true)
    {
        // 反転合成で考慮できないα値を、アルファテストで制御する
        // アルファテストを有効化
        pDevice->SetRenderState(D3DRS_ALPHATESTENABLE, TRUE);
        // アルファテスト基準値の設定
        pDevice->SetRenderState(D3DRS_ALPHAREF, 150);
        // アルファテストの比較方法の設定
        pDevice->SetRenderState(D3DRS_ALPHAFUNC, D3DCMP_GREATER);

        // 反転合成
        pDevice->SetRenderState(D3DRS_SRCBLEND, D3DBLEND_INVDESTCOLOR);
        pDevice->SetRenderState(D3DRS_DESTBLEND, D3DBLEND_INVDESTCOLOR);
    }

    // テクスチャの設定
    pDevice->SetTexture(0, m_pTexture);

    // ポリゴンの描画
    pDevice->DrawPrimitive(D3DPT_TRIANGLESTRIP, 0, NUM_POLYGON);

    // 反転合成を戻す
    if (m_bNega == true)
    {
        // アルファテストを無効化
        pDevice->SetRenderState(D3DRS_ALPHATESTENABLE, FALSE);

        // 反転合成を戻す
        pDevice->SetRenderState(D3DRS_SRCBLEND, D3DBLEND_SRCALPHA);
        pDevice->SetRenderState(D3DRS_DESTBLEND, D3DBLEND_INVSRCALPHA);

        m_bNega = false;
    }

    // 加算合成を戻す
    if (m_bAdditiveSynthesis == true)
    {
        // レンダーステート(加算合成を戻す)
        pDevice->SetRenderState(D3DRS_BLENDOP, D3DBLENDOP_ADD);
        pDevice->SetRenderState(D3DRS_SRCBLEND, D3DBLEND_SRCALPHA);
        pDevice->SetRenderState(D3DRS_DESTBLEND, D3DBLEND_INVSRCALPHA);

        // 加算合成のフラグをfalseに戻す
        m_bAdditiveSynthesis = false;
    }

    // アルファテストを戻す
    if (m_bAlphaTest == true)
    {
        //アルファテストを無効化
        pDevice->SetRenderState(D3DRS_ALPHATESTENABLE, FALSE);

        // アルファテストのフラグをfalseに戻す
        m_bAlphaTest = false;
    }

    // テクスチャの設定の解除
    pDevice->SetTexture(0, NULL);
}

//=============================================================
// シーン上の2Dポリゴンのテクスチャを割り当て
//=============================================================
void CScene2D::BindTexture(LPDIRECT3DTEXTURE9 pTexture)
{
    m_pTexture = pTexture;
}

//=============================================================
// シーン上の2Dポリゴンの頂点座標を設定
//=============================================================
void CScene2D::SetVertex(void)
{
    VERTEX_2D *pVtx = NULL;	// 頂点情報へのポインタ

                            // 頂点データの範囲をロックし、頂点バッファへのポインタを取得
    m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);	// この書式は変えないこと

                                                // 頂点座標の設定
    pVtx[0].pos = m_pos + D3DXVECTOR3(-(m_size.x / 2), -(m_size.y / 2), 0.0f);
    pVtx[1].pos = m_pos + D3DXVECTOR3(+(m_size.x / 2), -(m_size.y / 2), 0.0f);
    pVtx[2].pos = m_pos + D3DXVECTOR3(-(m_size.x / 2), +(m_size.y / 2), 0.0f);
    pVtx[3].pos = m_pos + D3DXVECTOR3(+(m_size.x / 2), +(m_size.y / 2), 0.0f);

    //頂点データをアンロックする
    m_pVtxBuff->Unlock();
}

//=============================================================
// シーン上の2Dポリゴンの回転する頂点座標を設定
//=============================================================
void CScene2D::SetRotVertex(float fAngle)
{
    // 変数宣言
    // 各頂点
    D3DXVECTOR3 vertex1;
    D3DXVECTOR3 vertex2;
    D3DXVECTOR3 vertex3;
    D3DXVECTOR3 vertex4;

    //==========================================================================================================
    //画像を、画像の中心を軸に回転させる
    //左上の頂点
    vertex1.x = -(m_size.x / 2)*cosf(fAngle)
        - (-(m_size.y / 2))*sinf(fAngle);
    vertex1.y = -(m_size.x / 2)*sinf(fAngle)
        + (-(m_size.y / 2))*cosf(fAngle);
    vertex1.z = 0.0f;

    //右上の頂点
    vertex2.x = (m_size.x / 2)*cosf(fAngle)
        - (-(m_size.y / 2))*sinf(fAngle);
    vertex2.y = (m_size.x / 2)*sinf(fAngle)
        + (-(m_size.y / 2))*cosf(fAngle);
    vertex2.z = 0.0f;

    //左下の頂点
    vertex3.x = -(m_size.x / 2)*cosf(fAngle)
        - (m_size.y / 2)*sinf(fAngle);
    vertex3.y = -(m_size.x / 2)*sinf(fAngle)
        + (m_size.y / 2)*cosf(fAngle);
    vertex3.z = 0.0f;

    //右下の頂点
    vertex4.x = (m_size.x / 2)*cosf(fAngle)
        - (m_size.y / 2)*sinf(fAngle);
    vertex4.y = (m_size.x / 2)*sinf(fAngle)
        + (m_size.y / 2)*cosf(fAngle);
    vertex4.z = 0.0f;
    //==========================================================================================================

    VERTEX_2D *pVtx = NULL;	// 頂点情報へのポインタ

                            // 頂点データの範囲をロックし、頂点バッファへのポインタを取得
    m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);	// この書式は変えないこと

                                                // 頂点座標の設定
    pVtx[0].pos = m_pos + vertex1;
    pVtx[1].pos = m_pos + vertex2;
    pVtx[2].pos = m_pos + vertex3;
    pVtx[3].pos = m_pos + vertex4;

    //頂点データをアンロックする
    m_pVtxBuff->Unlock();
}

//=============================================================
// シーン上の2Dポリゴンの見かけ上の頂点座標を設定
//=============================================================
void CScene2D::SetVisualVertex(D3DXVECTOR3 posVisual, D3DXVECTOR3 sizeVisual)
{
    VERTEX_2D *pVtx = NULL;	// 頂点情報へのポインタ

                            // 頂点データの範囲をロックし、頂点バッファへのポインタを取得
    m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);	// この書式は変えないこと

                                                // 頂点座標の設定
    pVtx[0].pos = posVisual + D3DXVECTOR3(-(sizeVisual.x / 2), -(sizeVisual.y / 2), 0.0f);
    pVtx[1].pos = posVisual + D3DXVECTOR3(+(sizeVisual.x / 2), -(sizeVisual.y / 2), 0.0f);
    pVtx[2].pos = posVisual + D3DXVECTOR3(-(sizeVisual.x / 2), +(sizeVisual.y / 2), 0.0f);
    pVtx[3].pos = posVisual + D3DXVECTOR3(+(sizeVisual.x / 2), +(sizeVisual.y / 2), 0.0f);

    //頂点データをアンロックする
    m_pVtxBuff->Unlock();
}

//=============================================================
// シーン上の2Dポリゴンの位置を設定
//=============================================================
void CScene2D::SetPosition(D3DXVECTOR3 pos)
{
    m_pos = pos;
}

//=============================================================
// シーン上の2Dポリゴンの大きさを設定
//=============================================================
void CScene2D::SetSize(D3DXVECTOR3 size)
{
    m_size = size;
}

//=============================================================
// シーン上の2Dポリゴンのアニメーションを設定
//=============================================================
bool CScene2D::SetAnimation(int nSpeed, int nPattern)
{
    // 変数宣言
    bool bOneRound = false;   // アニメーションが一周したかどうか

                              // アニメーション
    m_nCounterAnim++;	//カウンタ加算
    if (m_nCounterAnim == nSpeed)//速さ
    {
        // オーバーフロー防止
        m_nCounterAnim = 0;  // カウンタを0に戻す

                             // アニメーションが一周したら
        if ((m_nPatternAnim + 1) % nPattern == 0)
        {
            // 一周のフラグをtrueに
            bOneRound = true;
        }

        // アニメーションを切り替える
        m_nPatternAnim = (m_nPatternAnim + 1) % nPattern;  // 枚数
    }

    VERTEX_2D *pVtx = NULL;	// 頂点情報へのポインタ

                            // 頂点データの範囲をロックし、頂点バッファへのポインタを取得
    m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);	// この書式は変えないこと

                                                // テクスチャ座標の設定
                                                // 変数宣言
    float fEqualDivision = 0.0f;   // テクスチャを等分する

                                   // 何等分するか計算
    fEqualDivision = Divide(1.0f, (float)nPattern);

    // テクスチャの座標を反映
    pVtx[0].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivision, 0.0f);
    pVtx[1].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivision + fEqualDivision, 0.0f);
    pVtx[2].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivision, 1.0f);
    pVtx[3].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivision + fEqualDivision, 1.0f);

    //頂点データをアンロックする
    m_pVtxBuff->Unlock();

    return bOneRound;
}

//=============================================================
// シーン上の2Dポリゴンの逆向きのアニメーションを設定
//=============================================================
bool CScene2D::SetReverseAnimation(int nSpeed, int nPattern)
{
    // 変数宣言
    bool bOneRound = false;   // アニメーションが一周したかどうか

                              // アニメーション
    m_nCounterAnim++;	//カウンタ加算
    if (m_nCounterAnim == nSpeed)//速さ
    {
        // オーバーフロー防止
        m_nCounterAnim = 0;  // カウンタを0に戻す

                             // アニメーションが一周したら
        if ((m_nPatternAnim + 1) % nPattern == 0)
        {
            // 一周のフラグをtrueに
            bOneRound = true;
        }

        // アニメーションを切り替える
        m_nPatternAnim = (m_nPatternAnim + 1) % nPattern;  // 枚数
    }

    VERTEX_2D *pVtx = NULL;	// 頂点情報へのポインタ

                            // 頂点データの範囲をロックし、頂点バッファへのポインタを取得
    m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);	// この書式は変えないこと

                                                // テクスチャ座標の設定
                                                // 変数宣言
    float fEqualDivision = 0.0f;   // テクスチャを等分する

                                   // 何等分するか計算
    fEqualDivision = Divide(1.0f, (float)nPattern);

    // テクスチャの座標を反映
    pVtx[0].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivision + fEqualDivision, 0.0f);
    pVtx[1].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivision, 0.0f);
    pVtx[2].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivision + fEqualDivision, 1.0f);
    pVtx[3].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivision, 1.0f);

    //頂点データをアンロックする
    m_pVtxBuff->Unlock();

    return bOneRound;
}

//=============================================================
// シーン上の2Dポリゴンのアニメーションを設定
//=============================================================
void CScene2D::SetFlowingAnimation(int nSpeed, int nPattern, bool bRightToLeft, DIRECT direct)
{
    // アニメーション
    m_nCounterAnim++;	//カウンタ加算
    if (m_nCounterAnim == nSpeed)//速さ
    {
        // オーバーフロー防止
        m_nCounterAnim = 0;  // カウンタを0に戻す

                             // アニメーションを切り替える
        m_nPatternAnim = (m_nPatternAnim + 1) % nPattern;  // 枚数
    }

    VERTEX_2D *pVtx = NULL;	// 頂点情報へのポインタ

                            // 頂点データの範囲をロックし、頂点バッファへのポインタを取得
    m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);	// この書式は変えないこと

                                                // テクスチャ座標の設定
                                                // 変数宣言
    float fEqualDivision = 0.0f;   // テクスチャを等分する

                                   // 何等分するか計算
    fEqualDivision = Divide(1.0f, (float)nPattern);

    // 左から右なら、-1をかける
    if (bRightToLeft == false)
    {
        fEqualDivision *= -1;
    }

    // テクスチャの座標を反映
    switch (direct)
    {
    case CScene2D::DIRECT_VERTICAL:
        // 縦
        pVtx[0].tex = D3DXVECTOR2(0.0f, m_nPatternAnim * fEqualDivision);
        pVtx[1].tex = D3DXVECTOR2(1.0f, m_nPatternAnim * fEqualDivision);
        pVtx[2].tex = D3DXVECTOR2(0.0f, m_nPatternAnim * fEqualDivision + 1.0f);
        pVtx[3].tex = D3DXVECTOR2(1.0f, m_nPatternAnim * fEqualDivision + 1.0f);
        break;

    case CScene2D::DIRECT_HORIZON:
        // 横
        pVtx[0].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivision, 0.0f);
        pVtx[1].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivision + 1.0f, 0.0f);
        pVtx[2].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivision, 1.0f);
        pVtx[3].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivision + 1.0f, 1.0f);
        break;

    case CScene2D::DIRECT_RIGHT_UP:
        // 右肩上がり
        pVtx[0].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivision, m_nPatternAnim * (fEqualDivision * (-1)));
        pVtx[1].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivision + 1.0f, m_nPatternAnim * (fEqualDivision * (-1)));
        pVtx[2].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivision, m_nPatternAnim * (fEqualDivision * (-1)) + 1.0f);
        pVtx[3].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivision + 1.0f, m_nPatternAnim * (fEqualDivision * (-1)) + 1.0f);

        break;

    case CScene2D::DIRECT_RIGHT_DOWN:
        // 右肩下がり
        pVtx[0].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivision, m_nPatternAnim * fEqualDivision);
        pVtx[1].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivision + 1.0f, m_nPatternAnim * fEqualDivision);
        pVtx[2].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivision, m_nPatternAnim * fEqualDivision + 1.0f);
        pVtx[3].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivision + 1.0f, m_nPatternAnim * fEqualDivision + 1.0f);
        break;
    }

    //頂点データをアンロックする
    m_pVtxBuff->Unlock();
}

//=============================================================
// テクスチャの描画範囲の設定
//=============================================================
void CScene2D::SetTextureRange(int nRange, int nPattern)
{
    VERTEX_2D *pVtx = NULL;	// 頂点情報へのポインタ

                            // 頂点データの範囲をロックし、頂点バッファへのポインタを取得
    m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);	// この書式は変えないこと

                                                // テクスチャ座標の設定
                                                // 変数宣言
    float fEqualDivision = 0.0f;   // テクスチャを等分する

                                   // 何等分するか計算
    fEqualDivision = Divide((float)nRange, (float)nPattern);

    // テクスチャの座標を反映
    pVtx[0].tex = D3DXVECTOR2(0.0f, 0.0f);
    pVtx[1].tex = D3DXVECTOR2(fEqualDivision, 0.0f);
    pVtx[2].tex = D3DXVECTOR2(0.0f, 1.0f);
    pVtx[3].tex = D3DXVECTOR2(fEqualDivision, 1.0f);

    //頂点データをアンロックする
    m_pVtxBuff->Unlock();
}

//=============================================================
// 段落のあるアニメーションの設定
//=============================================================
void CScene2D::SetParagraphAnimation(int nParagraph, int nMaxParagraph, int nSpeed, int nPattern)
{
    // アニメーション
    m_nCounterAnim++;	//カウンタ加算
    if (m_nCounterAnim == nSpeed)//速さ
    {
        // オーバーフロー防止
        m_nCounterAnim = 0;  // カウンタを0に戻す

                             // アニメーションを切り替える
        m_nPatternAnim = (m_nPatternAnim + 1) % nPattern;  // 枚数
    }

    VERTEX_2D *pVtx = NULL;	// 頂点情報へのポインタ

                            // 頂点データの範囲をロックし、頂点バッファへのポインタを取得
    m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);	// この書式は変えないこと

                                                // テクスチャ座標の設定
                                                // 変数宣言
    float fEqualDivisionX = 0.0f;   // テクスチャを等分する（縦）
    float fEqualDivisionY = 0.0f;   // テクスチャを等分する（横）

                                    // 何等分するか計算
    fEqualDivisionX = Divide(1.0f, (float)nPattern);
    fEqualDivisionY = Divide(1.0f, (float)nMaxParagraph);

    // テクスチャの座標を反映
    pVtx[0].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivisionX, fEqualDivisionY * (nParagraph - 1));
    pVtx[1].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivisionX + fEqualDivisionX, fEqualDivisionY * (nParagraph - 1));
    pVtx[2].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivisionX, fEqualDivisionY * nParagraph);
    pVtx[3].tex = D3DXVECTOR2(m_nPatternAnim * fEqualDivisionX + fEqualDivisionX, fEqualDivisionY * nParagraph);

    //頂点データをアンロックする
    m_pVtxBuff->Unlock();
}

//=============================================================
// テクスチャの描画場所を決める
//=============================================================
void CScene2D::SetTexturePlace(int nPlace, int nPattern)
{
    VERTEX_2D *pVtx = NULL;	// 頂点情報へのポインタ

                            // 頂点データの範囲をロックし、頂点バッファへのポインタを取得
    m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);	// この書式は変えないこと

                                                // テクスチャ座標の設定
                                                // 変数宣言
    float fEqualDivision = 0.0f;   // テクスチャを等分する

                                   // 何等分するか計算
    fEqualDivision = Divide(1.0f, (float)nPattern);

    // テクスチャの座標を反映
    pVtx[0].tex = D3DXVECTOR2((fEqualDivision * (nPlace - 1)), 0.0f);
    pVtx[1].tex = D3DXVECTOR2(fEqualDivision + (fEqualDivision * (nPlace - 1)), 0.0f);
    pVtx[2].tex = D3DXVECTOR2((fEqualDivision * (nPlace - 1)), 1.0f);
    pVtx[3].tex = D3DXVECTOR2(fEqualDivision + (fEqualDivision * (nPlace - 1)), 1.0f);

    //頂点データをアンロックする
    m_pVtxBuff->Unlock();
}

//=============================================================
// 段落があるテクスチャの描画場所を決める
//=============================================================
void CScene2D::SetParagraphTexturePlace(int nPlace, int nParagraph, int nMaxParagraph, int nPattern)
{
    VERTEX_2D *pVtx = NULL;	// 頂点情報へのポインタ

                            // 頂点データの範囲をロックし、頂点バッファへのポインタを取得
    m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);	// この書式は変えないこと

                                                // テクスチャ座標の設定
                                                // 変数宣言
    float fEqualDivisionX = 0.0f;   // テクスチャを等分する（縦）
    float fEqualDivisionY = 0.0f;   // テクスチャを等分する（横）

                                    // 何等分するか計算
    fEqualDivisionX = Divide(1.0f, (float)nPattern);
    fEqualDivisionY = Divide(1.0f, (float)nMaxParagraph);

    // テクスチャの座標を反映
    pVtx[0].tex = D3DXVECTOR2((fEqualDivisionX * (nPlace - 1)), fEqualDivisionY * (nParagraph - 1));
    pVtx[1].tex = D3DXVECTOR2(fEqualDivisionX + (fEqualDivisionX * (nPlace - 1)), fEqualDivisionY * (nParagraph - 1));
    pVtx[2].tex = D3DXVECTOR2((fEqualDivisionX * (nPlace - 1)), fEqualDivisionY * nParagraph);
    pVtx[3].tex = D3DXVECTOR2(fEqualDivisionX + (fEqualDivisionX * (nPlace - 1)), fEqualDivisionY * nParagraph);

    //頂点データをアンロックする
    m_pVtxBuff->Unlock();
}

//=============================================================
// アニメーションのカウンタを利用するときに使う
//=============================================================
int CScene2D::CountAnimation(int nSpeed, int nPattern)
{
    // アニメーション
    m_nCounterAnim++;	//カウンタ加算
    if (m_nCounterAnim == nSpeed)//速さ
    {
        // オーバーフロー防止
        m_nCounterAnim = 0;  // カウンタを0に戻す

                             // アニメーションを切り替える
        m_nPatternAnim = (m_nPatternAnim + 1) % nPattern;  // 枚数
    }

    // アニメーションのパターンのカウンタを返す
    return m_nPatternAnim;
}

//=============================================================
// シーン上の2Dポリゴンの色を変える
//=============================================================
void CScene2D::SetColor(D3DXCOLOR col)
{
    VERTEX_2D *pVtx = NULL;	// 頂点情報へのポインタ

                            // 頂点データの範囲をロックし、頂点バッファへのポインタを取得
    m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);

    // 頂点カラーを設定（0.0f〜1.0fの値で設定する）
    pVtx[0].col = col;
    pVtx[1].col = col;
    pVtx[2].col = col;
    pVtx[3].col = col;

    //頂点データをアンロックする
    m_pVtxBuff->Unlock();
}

//=============================================================
// ゲージのサイズを設定
//=============================================================
void CScene2D::SetGauge(D3DXVECTOR3 pos, D3DXVECTOR3 size)
{
    VERTEX_2D *pVtx = NULL;	// 頂点情報へのポインタ

    // 頂点データの範囲をロックし、頂点バッファへのポインタを取得
    m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);

    // 頂点座標の設定
    pVtx[0].pos = m_pos + D3DXVECTOR3(-(m_size.x / 2), -(m_size.y / 2), 0.0f);
    pVtx[1].pos = m_pos + D3DXVECTOR3(+(size.x / 2), -(m_size.y / 2), 0.0f);
    pVtx[2].pos = m_pos + D3DXVECTOR3(-(m_size.x / 2), +(m_size.y / 2), 0.0f);
    pVtx[3].pos = m_pos + D3DXVECTOR3(+(size.x / 2), +(m_size.y / 2), 0.0f);

    //頂点データをアンロックする
    m_pVtxBuff->Unlock();
}