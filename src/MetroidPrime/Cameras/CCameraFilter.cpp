#include "Kyoto/Math/CVector2f.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "MetroidPrime/Cameras/CCameraFilterPass.hpp"

#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CTexture.hpp"

#include "MetaRender/CCubeRenderer.hpp"

#include "rstl/math.hpp"

#include "stdlib.h"

static const CColor& skIdentityColorMultiply = CColor::White();

CCameraFilterPass::CCameraFilterPass()
: x0_curType(kFT_Passthru)
, x4_nextType(kFT_Passthru)
, x8_shape(kFS_Fullscreen)
, xc_duration(0.f)
, x10_remTime(0.f)
, x14_prevColor(0xFFFFFFFF)
, x18_curColor(0xFFFFFFFF)
, x1c_nextColor(0xFFFFFFFF)
, x20_nextTxtr(kInvalidAssetId) {}

void CCameraFilterPass::SetFilter(EFilterType type, EFilterShape shape, float time,
                                  const CColor& color, CAssetId txtr) {
  if (time == 0.f) {
    xc_duration = 0.f;
    x10_remTime = 0.f;
    x8_shape = shape;
    x4_nextType = type;
    x0_curType = type;
    x1c_nextColor = color;
    x18_curColor = color;
    x14_prevColor = color;
    x20_nextTxtr = txtr;

    if (txtr != kInvalidAssetId) {
      x24_texObj =
          rs_new TLockedToken< CTexture >(gpSimplePool->GetObj(SObjectTag(SBig('TXTR'), txtr)));
    }
  } else {
    x1c_nextColor = color;
    x14_prevColor = x18_curColor;
    x8_shape = shape;
    x20_nextTxtr = txtr;

    if (txtr != kInvalidAssetId) {
      x24_texObj =
          rs_new TLockedToken< CTexture >(gpSimplePool->GetObj(SObjectTag(SBig('TXTR'), txtr)));
    }

    x10_remTime = time;
    xc_duration = time;
    x0_curType = x4_nextType;
    x4_nextType = type;

    if (type == kFT_Passthru) {
      if (x0_curType == kFT_Multiply) {
        x1c_nextColor = skIdentityColorMultiply;
      } else if (x0_curType == kFT_Add || x0_curType == kFT_Blend) {
        x1c_nextColor =
            CColor(x1c_nextColor.GetRed(), x1c_nextColor.GetGreen(), x1c_nextColor.GetBlue(), 0.f);
      }
    } else {
      if (x0_curType == kFT_Passthru) {
        if (type == kFT_Multiply) {
          x18_curColor = skIdentityColorMultiply;
        } else if (type == kFT_Add || type == kFT_Blend) {
          x18_curColor = CColor(x1c_nextColor.GetRed(), x1c_nextColor.GetGreen(),
                                x1c_nextColor.GetBlue(), 0.f);
          x14_prevColor = x18_curColor;
        }
      }
      x0_curType = x4_nextType;
    }
  }
}

void CCameraFilterPass::DisableFilter(float time) {
  SetFilter(kFT_Passthru, x8_shape, time, 0xFFFFFFFF, kInvalidAssetId);
}

void CCameraFilterPass::Update(float dt) {
  if (x10_remTime > 0.f) {
    EFilterType origType = x0_curType;

    x10_remTime = rstl::max_val(0.f, x10_remTime - dt);
    x18_curColor = CColor::Lerp(x1c_nextColor, x14_prevColor, x10_remTime / xc_duration);

    if (x10_remTime == 0.f) {
      x0_curType = x4_nextType;
      if (x0_curType == kFT_Passthru) {
        x24_texObj = nullptr;
        x20_nextTxtr = kInvalidAssetId;
      }
    }
  }
}

void CCameraFilterPass::DrawFullScreenColoredQuad(const CColor& color) {
  rstl::pair< CVector2f, CVector2f > vp = gpRender->SetViewportOrtho(true, -4096.f, 4096.f);
  float left = vp.first.GetX();
  float top = vp.first.GetY();
  float right = vp.second.GetX();
  float bottom = vp.second.GetY();
  gpRender->SetDepthReadWrite(false, false);
  gpRender->BeginTriangleStrip(4);
  gpRender->PrimColor(color);
  gpRender->PrimVertex(CVector3f(left - 1.f, 0.f, bottom + 1.f));
  gpRender->PrimVertex(CVector3f(left - 1.f, 0.f, top - 1.f));
  gpRender->PrimVertex(CVector3f(right + 1.f, 0.f, bottom + 1.f));
  gpRender->PrimVertex(CVector3f(right + 1.f, 0.f, top - 1.f));
  gpRender->EndPrimitive();
}

void CCameraFilterPass::DrawFullScreenTexturedQuad(const CColor& color, const CTexture* tex,
                                                   float lod) {
  const float u = 0.5f - 0.5f * lod;
  const float v = 0.5f + 0.5f * lod;
  rstl::pair< CVector2f, CVector2f > vp = gpRender->SetViewportOrtho(true, -4096.f, 4096.f);
  float left = vp.first.GetX();
  float top = vp.first.GetY();
  float right = vp.second.GetX();
  float bottom = vp.second.GetY();
  gpRender->SetDepthReadWrite(false, false);
  if (tex != nullptr) {
    tex->Load(GX_TEXMAP0, CTexture::kCM_Repeat);
  }
  CGraphics::SetTevOp(kTS_Stage0, CGraphics::kEnvModulate);
  CGraphics::SetTevOp(kTS_Stage1, CGraphics::kEnvPassthru);
  CGraphics::StreamBegin(kP_TriangleStrip);
  CGraphics::StreamColor(color);
  CGraphics::StreamTexcoord(u, v);
  CGraphics::StreamVertex(CVector3f(left - 1.f, 0.f, 1.f + bottom));
  CGraphics::StreamTexcoord(u, u);
  CGraphics::StreamVertex(CVector3f(left - 1.f, 0.f, top - 1.f));
  CGraphics::StreamTexcoord(v, v);
  CGraphics::StreamVertex(CVector3f(1.f + right, 0.f, 1.f + bottom));
  CGraphics::StreamTexcoord(v, u);
  CGraphics::StreamVertex(CVector3f(1.f + right, 0.f, top - 1.f));
  CGraphics::StreamEnd();
}

void CCameraFilterPass::DrawFullScreenTexturedQuadQuarters(const CColor& color, const CTexture* tex,
                                                           float lod) {
  rstl::pair< CVector2f, CVector2f > vp = gpRender->SetViewportOrtho(true, -4096.f, 4096.f);
  float left = vp.first.GetX();
  float top = vp.first.GetY();
  float right = vp.second.GetX();
  float bottom = vp.second.GetY();
  CGraphics::SetTevOp(kTS_Stage0, CGraphics::kEnvModulate);
  CGraphics::SetTevOp(kTS_Stage1, CGraphics::kEnvPassthru);
  gpRender->SetDepthReadWrite(false, false);
  if (tex != nullptr) {
    tex->Load(GX_TEXMAP0, CTexture::kCM_Repeat);
  }
  CGraphics::SetCullMode(kCM_None);
  for (int i = 0; i < 4; ++i) {
    float x = (i & 1) > 0 ? 1.f : -1.f;
    float z = (i & 2) > 0 ? 1.f : -1.f;
    gpRender->SetModelMatrix(CTransform4f::Scale(x, 0.f, z));
    CGraphics::StreamBegin(kP_TriangleStrip);
    CGraphics::StreamColor(color);
    CGraphics::StreamTexcoord(lod, lod);
    CGraphics::StreamVertex(CVector3f(left, 0.f, bottom));
    CGraphics::StreamTexcoord(lod, 0.f);
    CGraphics::StreamVertex(CVector3f(left, 0.f, 0.f));
    CGraphics::StreamTexcoord(0.f, lod);
    CGraphics::StreamVertex(CVector3f(0.f, 0.f, bottom));
    CGraphics::StreamTexcoord(0.f, 0.f);
    CGraphics::StreamVertex(CVector3f(0.f, 0.f, 0.f));
    CGraphics::StreamEnd();
  }
  CGraphics::SetCullMode(kCM_Front);
}

// FIXME non-matching https://decomp.me/scratch/8N81d
void CCameraFilterPass::DrawWideScreen(const CColor& color, const CTexture* tex, float lod) {
  const rstl::pair< CVector2f, CVector2f > vp = gpRender->SetViewportOrtho(true, -4096.f, 4096.f);
  float left = vp.first.GetX();
  float dVar5 = -((vp.second.GetX() - vp.first.GetX()) * 0.0625f * 9.f -
                  (vp.second.GetY() - vp.first.GetY())) *
                0.5f;
  float bottom = vp.first.GetY();
  float right = vp.second.GetX();
  float top = vp.second.GetY();
  gpRender->SetDepthReadWrite(false, false);
  gpRender->SetModelMatrix(CTransform4f::Identity());
  if (tex != nullptr) {
    tex->Load(GX_TEXMAP0, CTexture::kCM_Repeat);
  }
  CGraphics::SetTevOp(kTS_Stage0, CTevPass_805a5ebc);
  CGraphics::SetTevOp(kTS_Stage1, CGraphics::kEnvPassthru);

  {
    CGraphics::StreamBegin(kP_TriangleStrip);
    float v = (float)(rand() % 4000) / 16384.f;
    CGraphics::StreamColor(color);
    CGraphics::StreamTexcoord(v, 1.f);
    CGraphics::StreamVertex(CVector3f(left - 10.f, 0.f, bottom + (dVar5 * lod)));
    CGraphics::StreamTexcoord(v, 0.f);
    CGraphics::StreamVertex(CVector3f(left - 10.f, 0.f, bottom));
    CGraphics::StreamTexcoord(v + 1.f, 1.f);
    CGraphics::StreamVertex(CVector3f(right + 10.f, 0.f, bottom + (dVar5 * lod)));
    CGraphics::StreamTexcoord(v + 1.f, 0.f);
    CGraphics::StreamVertex(CVector3f(right + 10.f, 0.f, bottom));
    CGraphics::StreamEnd();
  }
  {
    CGraphics::StreamBegin(kP_TriangleStrip);
    float v = (float)(rand() % 4000) / 16384.f;
    CGraphics::StreamColor(color);
    CGraphics::StreamTexcoord(v, 0.f);
    CGraphics::StreamVertex(CVector3f(left - 10.f, 0.f, top));
    CGraphics::StreamTexcoord(v, 1.f);
    CGraphics::StreamVertex(CVector3f(left - 10.f, 0.f, top - (dVar5 * lod)));
    CGraphics::StreamTexcoord(v + 1.f, 0.f);
    CGraphics::StreamVertex(CVector3f(right + 10.f, 0.f, top));
    CGraphics::StreamTexcoord(v + 1.f, 1.f);
    CGraphics::StreamVertex(CVector3f(right + 10.f, 0.f, top - (dVar5 * lod)));
    CGraphics::StreamEnd();
  }
}
