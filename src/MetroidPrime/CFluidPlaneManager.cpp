#include "MetroidPrime/CFluidPlaneManager.hpp"

#include "MetroidPrime/CRipple.hpp"
#include "MetroidPrime/CRippleManager.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/ScriptObjects/CScriptWater.hpp"

#include "Kyoto/CResFactory.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/SObjectTag.hpp"
#include "MetroidPrime/TCastTo.hpp"
#include "MetroidPrime/Tweaks/CTweakGame.hpp"
#include "rstl/math.hpp"

const float CFluidPlane::kRippleIntensityRange = 1.f;

uint fn_8012F098() {
  return 0;
}

CFluidPlane::CFluidPlane(const CAssetId texPattern1, const CAssetId texPattern2,
                         const CAssetId texColor, const float alpha, const EFluidType fluidType,
                         const float rippleIntensity, const CFluidUVMotion& motion)
: x4_texPattern1Id(texPattern1)
, x8_texPattern2Id(texPattern2)
, xc_texColorId(texColor)
, x40_alpha(alpha)
, x44_fluidType(fluidType)
, x48_rippleIntensity(rippleIntensity)
, x4c_uvMotion(motion) {
  if (gpResourceFactory->GetResourceTypeById(x4_texPattern1Id) == FourCC('TXTR')) {
    x10_texPattern1 = gpSimplePool->GetObj(SObjectTag(FourCC('TXTR'), x4_texPattern1Id));
  }
  if (gpResourceFactory->GetResourceTypeById(x8_texPattern2Id) == FourCC('TXTR')) {
    x20_texPattern2 = gpSimplePool->GetObj(SObjectTag(FourCC('TXTR'), x8_texPattern2Id));
  }
  if (gpResourceFactory->GetResourceTypeById(xc_texColorId) == FourCC('TXTR')) {
    x30_texColor = gpSimplePool->GetObj(SObjectTag(FourCC('TXTR'), xc_texColorId));
  }
}

CFluidPlane::~CFluidPlane() {}

float CFluidPlane::CalculateRippleIntensity(float base) const {
  float mul;
  switch (x44_fluidType) {
  case kFT_NormalWater:
    mul = gpTweakGame->GetRippleIntensityNormal();
    break;
  case kFT_PoisonWater:
    mul = gpTweakGame->GetRippleIntensityPoison();
    break;
  case kFT_Lava:
    mul = gpTweakGame->GetRippleIntensityLava();
    break;
  case kFT_PhazonFluid:
  case kFT_Four:
    mul = 0.8f;
    break;
  default:
    mul = 1.f;
    break;
  }

  float intensityRange = GetRippleIntensityRange();
  float ret =
      base * mul * ((intensityRange * (1.f - x48_rippleIntensity) + 1.f) - (intensityRange * 0.5f));
  ret = rstl::min_val(rstl::max_val(ret, 0.f), 1.f);
  return ret;
}

float CFluidPlane::GetRippleScaleFromKineticEnergy(float baseI, float velDot) {
  float tmp = CMath::FastSqrtF(0.5f * baseI * velDot * velDot);
  if (tmp >= 160.f) {
    return 1.f;
  }
  return tmp * (1.f / 160.f);
}

void CFluidPlane::AddRipple(const float mag, const TUniqueId rippler, const CVector3f& center,
                            const CScriptWater& water, CStateManager& mgr) {
  if (!water.CanRippleAtPoint(center)) {
    return;
  }
  const float intensity = CalculateRippleIntensity(mag);
  mgr.FluidPlaneManager()->RippleManager().AddRipple(CRipple(rippler, center, intensity));
}

void CFluidPlane::AddRipple(const float mag, const TUniqueId rippler, const CVector3f& center,
                            const CVector3f& velocity, const CScriptWater& water,
                            CStateManager& mgr, const CVector3f& upVec) {
  if (!water.CanRippleAtPoint(center)) {
    return;
  }

  float intensity = CalculateRippleIntensity(
      GetRippleScaleFromKineticEnergy(mag, CVector3f::Dot(upVec, velocity)));
  mgr.FluidPlaneManager()->RippleManager().AddRipple(CRipple(rippler, center, intensity));
}

void CFluidPlane::AddRipple(const CRipple& ripple, const CScriptWater& water, CStateManager& mgr) {
  if (!water.CanRippleAtPoint(ripple.GetCenter())) {
    return;
  }

  mgr.FluidPlaneManager()->RippleManager().AddRipple(ripple);
}

void CFluidPlane::Render(const CStateManager& mgr, const CAABox&, const CFrustumPlanes&,
                         const CRippleManager&, const CVector3f&) {}
