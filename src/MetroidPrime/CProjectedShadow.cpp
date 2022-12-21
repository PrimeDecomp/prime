#include "MetroidPrime/CProjectedShadow.hpp"

#include "MetroidPrime/CModelData.hpp"

#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"

CProjectedShadow::CProjectedShadow(int w, int h, uchar persistent)
: x0_texture(kTF_I4, w, h, 1)
, x68_(CAABox::MakeMaxInvertedBox())
, x80_(false)
, x81_persistent(persistent)
, x84_(1.f)
, x88_(CVector3f::Zero())
, x94_zDistanceAdjust(0.f)
, x98_opacity(1.f)
{}

CProjectedShadow::~CProjectedShadow() {
  x0_texture.sub_8030e10c();
}

void CProjectedShadow::ModelDrawCallback(const float*, const float*, const SShadowDrawContext*) {

}

CAABox CProjectedShadow::sub_8029e214() {
  return CAABox(CVector3f(0.0f, 0.f, 0.f), CVector3f(1.f, 1.f, 1.f));
}

void CProjectedShadow::RenderShadowBuffer(CStateManager&, const CModelData& modelData, const CTransform4f& xf, int,
                          const CVector3f&, float, float) {
  modelData.GetBounds(xf);
  CGraphics::GetViewMatrix();
  CGraphics::GetProjectionState();
  CGraphics::SetDepthRange(0.f, 0.f);
}

void CProjectedShadow::sub_8029dc98() {}

void CProjectedShadow::Render(const CStateManager&) {}

void CProjectedShadow::sub_8029d6c8() {
  x80_ = false;
}
