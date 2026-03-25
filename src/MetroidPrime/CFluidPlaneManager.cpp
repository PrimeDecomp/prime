#include "MetroidPrime/CFluidPlaneManager.hpp"

#include "MetroidPrime/CExplosion.hpp"
#include "MetroidPrime/CRipple.hpp"
#include "MetroidPrime/CRippleManager.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/ScriptObjects/CScriptWater.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Basics/CCast.hpp"
#include "Kyoto/CResFactory.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CMatrix3f.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/SObjectTag.hpp"
#include "MetroidPrime/CEntity.hpp"
#include "MetroidPrime/CEntityInfo.hpp"
#include "MetroidPrime/TCastTo.hpp"
#include "MetroidPrime/Tweaks/CTweakGame.hpp"
#include "rstl/math.hpp"

float CFluidPlane::kRippleIntensityRange = 1.f;
const bool sRenderFog = true;
const bool sRenderBumpMaps = true;
const int sFluidEnvMapType = 2;

static int kMinValue = 0;
static int kMaxValue = 255;

uchar sRippleValues[64][64];
uchar sRippleMins[64];
uchar sRippleMaxs[64];

uint CFluidPlaneManager::GetFreqTableIndex(float) { return 0; }

void CFluidPlaneManager::SetupRippleMap() {
  float curX = 0.f;
  for (int i = 0; i < 64; ++i) {
    uchar* rowPtr = sRippleValues[i];
    float curY = 0.f;
    float minY = 1.f;
    float maxY = curY;
    for (int j = 64; j > 0; --j) {
      float rVal = 1.f - curY;
      float minX = curY;
      float maxX = 1.25f * (0.25f * rVal + 0.1f) + curY;
      if (curY < 0.f) {
        minX = 0.f;
      } else if (maxX > 1.f) {
        maxX = 1.f;
      }
      float val = 0.f;
      if (curX >= minX && curX <= maxX) {
        float t = (curX - minX) / (maxX - minX);
        if (t < 0.4f) {
          val = 2.5f * t;
        } else if (t > 0.75f) {
          val = 4.f * (1.f - t);
        } else {
          val = 1.f;
        }
      }
      uchar valA = CCast::ToUint8(255.f * (val * (rVal * rVal)));
      *rowPtr = valA;
      if (valA != 0 && curY < minY) {
        minY = curY;
      }
      if (valA != 0 && curY > maxY) {
        maxY = curY;
      }
      curY += (1.f / 63.f);
      rowPtr++;
    }
    int valB = static_cast< int >(CCast::ToUint8(255.f * minY)) - 1;
    sRippleMins[i] = static_cast< uchar >(rstl::max_val(kMinValue, valB));
    int valC = static_cast< int >(CCast::ToUint8(255.f * maxY)) + 1;
    sRippleMaxs[i] = static_cast< uchar >(rstl::min_val(kMaxValue, valC));
    curX += (1.f / 63.f);
  }
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

// void CFluidPlane::Render(const CStateManager&, float, const CAABox&, const CTransform4f&,
//                          const CTransform4f&, bool, const CFrustumPlanes&,
//                          const rstl::optional_object< CRippleManager >&, TUniqueId,
//                          const bool*, int, int, const CVector3f&) const {}

void CFluidPlaneManager::CreateSplash(TUniqueId splasher, CStateManager& mgr,
                                      const CScriptWater& water, const CVector3f& pos, float factor,
                                      bool sfx) {
  if (!water.CanRippleAtPoint(pos)) {
    return;
  }

  float oldestTime = 0.f;
  CSplashRecord* oldestRecord = NULL;
  for (CSplashRecord* it = SplashRecords().begin(); it != SplashRecords().end(); ++it) {
    if (it->GetTime() > oldestTime) {
      oldestRecord = it;
      oldestTime = it->GetTime();
    }
  }

  CSplashRecord newRecord(0.f, splasher);
  if (oldestRecord != NULL) {
    *oldestRecord = newRecord;
  } else {
    x18_splashes.push_back(newRecord);
  }

  float splashScale = water.GetSplashEffectScale(factor);
  if (water.GetSplashEffect(factor)) {
    if (CExplosion* expl = rs_new CExplosion(
            *water.GetSplashEffect(factor), mgr.AllocateUniqueId(), true,
            CEntityInfo(water.GetCurrentAreaId(), CEntity::NullConnectionList),
            rstl::string_l("Splash"), CTransform4f(CMatrix3f::Identity(), pos), 1,
            CVector3f(splashScale, splashScale, splashScale), water.GetSplashColor())) {
      mgr.AddObject(*expl);
    }
  }

  if (sfx) {
    CSfxManager::AddEmitter(water.GetSplashSound(factor), pos, CVector3f(0.f, 0.f, 1.f), true,
                            false, CSfxManager::kMedPriority, CSfxManager::kAllAreas);
  }
}

float CFluidPlaneManager::GetLastRippleDeltaTime(TUniqueId rippler) const {
  return x0_rippleManager.GetLastRippleDeltaTime(rippler);
}

float CFluidPlaneManager::GetLastSplashDeltaTime(TUniqueId splasher) const {
  float newestTime = 9999.f;
  for (const CSplashRecord* it = GetSplashRecords().begin(); it != GetSplashRecords().end(); ++it) {
    if (splasher == it->GetUniqueId() && newestTime > it->GetTime()) {
      newestTime = it->GetTime();
    }
  }
  return newestTime;
}

void CFluidPlaneManager::EndFrame() const { x121_ = false; }

void CFluidPlaneManager::StartFrame(bool b) const {
  x121_ = b;
  sProfile.Clear();
}

void CFluidPlaneManager::Update(float dt) {
  x11c_uvT = dt + x11c_uvT;
  x0_rippleManager.Update(dt);
  for (CSplashRecord* it = SplashRecords().begin(); it != SplashRecords().end(); ++it) {
    it->SetTime(dt + it->GetTime());
    if (it->GetTime() > 9999.f) {
      it->SetTime(9999.f);
    }
  }
}

CFluidPlaneManager::CFluidProfile CFluidPlaneManager::sProfile;

CFluidPlaneManager::CFluidPlaneManager()
: x0_rippleManager(20, 0.5f), x11c_uvT(0.f), x120_(false), x121_(false) {
  sProfile.Clear();
  for (rstl::reserved_vector< CSplashRecord, 32 >::iterator it = x18_splashes.begin();
       it != x18_splashes.end(); ++it) {
    it->SetTime(9999.f);
  }
  SetupRippleMap();
}

void CFluidPlaneManager::CFluidProfile::Clear() {
  x10_ = 0.f;
  xc_ = 0.f;
  x8_ = 0.f;
  x4_ = 0.f;
  x0_ = 0.f;
}
