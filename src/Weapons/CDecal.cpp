#include "Weapons/CDecal.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Particles/CParticleGlobals.hpp"

CRandom16 CDecal::sDecalRandom(99);
bool CDecal::sMoveRedToAlpha = false;

void CDecal::SetGlobalSeed(u16 seed) { sDecalRandom.SetSeed(seed); }

CDecal::CDecal(const TToken< CDecalDescription >& desc, const CTransform4f& xf)
: x0_description(desc)
, xc_transform(xf)
, x54_modelLifetime(0)
, x58_frameIdx(0)
, x5c_flags(0)
, x60_rotation(CVector3f::Zero()) {
  CGlobalRandom gr(sDecalRandom);
}

void CDecal::RenderQuad(CQuadDecal& quad, const CDecalDescription::SQuadDescr& quadDesc) const {}
void CDecal::RenderMdl() const {}
void CDecal::Render() const {
  CGlobalRandom gr(sDecalRandom);
  if (x5c_flags == 7) {
    return;
  }
  CGraphics::DisableAllLights();
  CParticleGlobals::SetEmitterTime(x58_frameIdx);
}
void CDecal::Update(float dt) {
  if (x58_frameIdx >= x3c_quad1.GetLifetime()) {
    x5c_flags |= 1;
  }

  if (x58_frameIdx >= x48_quad2.GetLifetime()) {
    x5c_flags |= 2;
  }

  if (x58_frameIdx >= x54_modelLifetime) {
    x5c_flags |= 4;
  }

  ++x58_frameIdx;
}
