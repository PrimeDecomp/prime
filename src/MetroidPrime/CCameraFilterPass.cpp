#include "Kyoto_CWD/CCameraFilterPass.hpp"
#include "Kyoto_CWD/CCubeRenderer.hpp"
#include "Kyoto_CWD/CGraphics.hpp"

// FIXME non-matching https://decomp.me/scratch/8N81d
void CCameraFilterPass::DrawWideScreen(const CColor& color, const CTexture* tex, float lod) {
  const rstl::pair< CVector2f, CVector2f > vp = gpRender->SetViewportOrtho(true, -4096.f, 4096.f);
  f32 left = vp.first.mX;
  f32 dVar5 = -((vp.second.mX - vp.first.mX) * 0.0625f * 9.f - (vp.second.mY - vp.first.mY)) * 0.5f;
  f32 bottom = vp.first.mY;
  f32 right = vp.second.mX;
  f32 top = vp.second.mY;
  gpRender->SetDepthReadWrite(false, false);
  gpRender->SetModelMatrix(skIdentity4f);
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
