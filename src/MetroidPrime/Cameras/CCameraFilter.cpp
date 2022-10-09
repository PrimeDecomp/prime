#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CTexture.hpp"
#include "MetaRender/CCubeRenderer.hpp"
#include "MetroidPrime/Cameras/CCameraFilterPass.hpp"

#include "stdlib.h"

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
    tex->Load(GX_TEXMAP0, CTexture::Repeat);
  }
  CGraphics::SetTevOp(kTS_Stage0, CTevPass_805a5ebc);
  CGraphics::SetTevOp(kTS_Stage1, *PTR_skPassThru_805a8828);

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
