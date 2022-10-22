#include "MetroidPrime/Enemies/CBurstFire.hpp"

#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayer.hpp"

#include "rstl/math.hpp"

CBurstFire::CBurstFire(const SBurst** burstDefs, int firstBurstCount)
: x0_burstType(-1)
, x4_angleIdx(-1)
, x8_timeToNextShot(0.f)
, xc_firstBurstIdx(0)
, x10_firstBurstCounter(firstBurstCount)
, x14_24_shouldFire(false)
, x14_25_avoidAccuracy(false)
, x18_curBursts(nullptr) {
  while (*burstDefs) {
    x1c_burstDefs.push_back(*burstDefs);
    ++burstDefs;
  }
}

void CBurstFire::Start(CStateManager& mgr) {
  const SBurst* bursts = x1c_burstDefs[x0_burstType];
  int burstIdx = -1;

  if (x10_firstBurstCounter-- > 0) {
    burstIdx = xc_firstBurstIdx >= 0 ? xc_firstBurstIdx : 0;

  } else {
    int random = mgr.Random()->Range(0, 100);
    int advanceAccum = 0;
    do {
      burstIdx += 1;
      int advanceWeight = bursts[burstIdx].x0_randomSelectionWeight;
      if (advanceWeight == 0) {
        advanceAccum = 100;
        burstIdx -= 1;
      }
      advanceAccum += advanceWeight;
    } while (random > advanceAccum);
  }
  x18_curBursts = &bursts[burstIdx];
  x4_angleIdx = -1;
  x8_timeToNextShot = 0.f;
  x14_24_shouldFire = false;
}

void CBurstFire::Update(CStateManager& mgr, float dt) {
  x14_24_shouldFire = false;
  if (!x18_curBursts) {
    return;
  }

  x8_timeToNextShot -= dt;
  if (x8_timeToNextShot < 0.f) {
    x4_angleIdx += 1;
    if (x18_curBursts->x4_shotAngles[x4_angleIdx] > 0) {
      x14_24_shouldFire = true;
      x8_timeToNextShot = x18_curBursts->x24_timeToNextShot;
      x8_timeToNextShot +=
          (mgr.Random()->Float() - 0.5f) * x18_curBursts->x28_timeToNextShotVariance;
    } else {
      x18_curBursts = nullptr;
    }
  }
}

CVector3f CBurstFire::GetError(float xMag, float zMag) const {
  CVector3f result = CVector3f::Zero();

  if (x14_24_shouldFire && x18_curBursts) {
    
    int r0 = x18_curBursts->x4_shotAngles[x4_angleIdx];
    if (x14_25_avoidAccuracy && (r0 == 4 || r0 == 12)) {
      r0 = x18_curBursts->x4_shotAngles[x4_angleIdx > 0 ? x4_angleIdx - 1 : x4_angleIdx + 1];
    }

    if (r0 > 0) {
      float angle = r0 * (-22.5f * (M_PIF / 180.f));
      result.SetX(CMath::FastCosR(angle) * xMag);
      result.SetZ(CMath::FastSinR(angle) * zMag);
    }
  }

  return result;
}

CVector3f CBurstFire::GetDistanceCompensatedError(float dist, float maxErrDist) const {
  float xErr = GetMaxXError();
  float zErr = GetMaxZError();
  float div = dist / maxErrDist;
  xErr = rstl::min_val(div * xErr, xErr);
  zErr = rstl::min_val(div * zErr, zErr);
  return GetError(xErr, zErr);
}

float CBurstFire::GetMaxXError() const {
  return gpTweakPlayer->GetPlayerXYHalfExtent() * 3.625f + 0.2f;
}

float CBurstFire::GetMaxZError() const { return gpTweakPlayer->GetEyeOffset(); }
