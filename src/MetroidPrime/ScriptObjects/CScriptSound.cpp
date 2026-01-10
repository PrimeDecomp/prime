#include "MetroidPrime/ScriptObjects/CScriptSound.hpp"
#include "Collision/CMaterialFilter.hpp"
#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CEntityInfo.hpp"

#include "MetroidPrime/CActorParameters.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"

#include "MetroidPrime/TCastTo.hpp"

#include <Collision/CRayCastResult.hpp>
#include <Kyoto/Audio/CSfxManager.hpp>
#include <Kyoto/Math/CFrustumPlanes.hpp>
#include <rstl/math.hpp>

bool CScriptSound::sFirstInFrame = false;

CScriptSound::CScriptSound(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                           const CTransform4f& xf, const ushort soundId, const bool active,
                           const float maxDist, const float distComp, const float startDelay,
                           const uint minVol, const uint vol, const uint w3, const uint prio,
                           const uint pan, const uint w6, const bool looped, const bool nonEmitter,
                           const bool autoStart, const bool occlusionTest, const bool acoustics,
                           const bool worldSfx, const bool allowDuplicates, const int pitch)
: CActor(uid, active, name, info, xf, CModelData::CModelDataNull(), CMaterialList(kMT_NoStepLogic),
         CActorParameters::None(), kInvalidUniqueId)
, xe8_occUpdateTimer(0.f)
, xf0_maxVol(0)
, xf4_maxVolUpdDelta(0)
, xf8_updateTimer(0.f)
, xfc_startDelay(startDelay)
, x100_soundId(CSfxManager::TranslateSFXID(soundId))
, x104_maxDist(maxDist)
, x108_distComp(distComp)
, x10c_minVol(minVol)
, x10e_vol(vol)
, x110_(w3)
, x112_prio(prio)
, x114_pan(pan)
, x116_(w6)
, x118_pitch(pitch + 8192)
, x11c_24_playRequested(false)
, x11c_25_looped(looped)
, x11c_26_nonEmitter(nonEmitter)
, x11c_27_autoStart(autoStart)
, x11c_28_occlusionTest(occlusionTest)
, x11c_29_acoustics(acoustics)
, x11c_30_worldSfx(worldSfx)
, x11c_31_selfFree(false)
, x11d_24_allowDuplicates(allowDuplicates)
, x11d_25_processedThisFrame(false) {
  if (x11c_30_worldSfx && !x11c_26_nonEmitter) {
    x11c_30_worldSfx = false;
  }

  if (x11c_30_worldSfx && !x11c_25_looped) {
    x11c_30_worldSfx = false;
  }
}

void CScriptSound::PreThink(float dt, CStateManager& mgr) {
  CEntity::PreThink(dt, mgr);
  sFirstInFrame = true;
  x11d_25_processedThisFrame = false;
}

CScriptSound::~CScriptSound() {}

void CScriptSound::Think(float dt, CStateManager& mgr) {
  if (x11c_31_selfFree && (!GetActive() || x11c_25_looped || !x11c_27_autoStart)) {
    mgr.DeleteObjectRequest(GetUniqueId());
    return;
  }

  if (!GetActive()) {
    return;
  }

  if (!x11c_25_looped && x11c_27_autoStart && !x11c_24_playRequested && xec_sfxHandle &&
      !CSfxManager::IsPlaying(xec_sfxHandle)) {
    mgr.DeleteObjectRequest(GetUniqueId());
  }

  if (!x11c_26_nonEmitter && xec_sfxHandle) {
    if (xf8_updateTimer <= 0.f) {
      xf8_updateTimer = 0.25f;
      char updateDelta = xf2_maxVolUpd;
      CSfxManager::UpdateEmitter(xec_sfxHandle, GetTranslation(), CVector3f::Zero(), updateDelta);
    } else {
      xf8_updateTimer -= dt;
    }
  }

  if (xec_sfxHandle && !x11c_26_nonEmitter && x11c_28_occlusionTest) {
    if (xe8_occUpdateTimer <= 0.f && sFirstInFrame) {
      sFirstInFrame = false;
      const float occVol = GetOccludedVolumeAmount(GetTranslation(), mgr);
      const short newMaxVol = rstl::max_val(static_cast< short >(occVol * x10e_vol), x10c_minVol);
      if (newMaxVol != xf0_maxVol) {
        xf0_maxVol = newMaxVol;
        const int delta = xf0_maxVol - xf2_maxVolUpd;
        xf4_maxVolUpdDelta = delta / 10.5f;
        if (xf4_maxVolUpdDelta == 0) {
          if (xf2_maxVolUpd < xf0_maxVol) {
            xf4_maxVolUpdDelta = 1;
          } else {
            xf4_maxVolUpdDelta = -1;
          }
        }
      }
    }
  }
}

void CScriptSound::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) {
  CActor::AcceptScriptMsg(msg, uid, mgr);

  switch (msg) {
  case kSM_Registered: {
    if (GetActive() && x11c_27_autoStart) {
      x11c_24_playRequested = true;
    }
    x11c_31_selfFree = mgr.IsGeneratingObject();
  } break;
  case kSM_Play: {
    if (GetActive()) {
      PlaySound(mgr);
    }
  } break;
  case kSM_Stop: {
    if (GetActive()) {
      StopSound(mgr);
    }
  } break;
  case kSM_Deactivate: {
    StopSound(mgr);
  } break;
  case kSM_Activate: {
    if (x11c_27_autoStart) {
      x11c_24_playRequested = true;
    }
  } break;
  case kSM_Deleted: {
    if (!x11c_30_worldSfx) {
      StopSound(mgr);
    }
  }
  }
}

void CScriptSound::PlaySound(CStateManager& mgr) {
  TAreaId areaId = GetCurrentAreaId();
  if (!x11d_24_allowDuplicates && xec_sfxHandle) {
    if (CSfxManager::IsHandleValid(xec_sfxHandle)) {
      return;
    }
  }

  if (x11d_25_processedThisFrame) {
    return;
  }
  x11d_25_processedThisFrame = true;
  if (!x11c_26_nonEmitter) {
    const float volume = x11c_30_worldSfx ? 1.f : GetOccludedVolumeAmount(GetTranslation(), mgr);
  }
}

void CScriptSound::StopSound(CStateManager& mgr) {
  x11c_24_playRequested = false;
  if (x11c_30_worldSfx && x11c_26_nonEmitter) {
    mgr.World()->StopGlobalSound(GetSoundId());
    xec_sfxHandle.Clear();
  } else if (xec_sfxHandle) {
    CSfxManager::RemoveEmitter(xec_sfxHandle);
    xec_sfxHandle.Clear();
  }
}

void CScriptSound::AddToRenderer(const CFrustumPlanes& planes, CStateManager& mgr) const {}
void CScriptSound::Accept(IVisitor& visitor) { visitor.Visit(*this); }
float CScriptSound::GetOccludedVolumeAmount(const CVector3f& pos, const CStateManager& mgr) {
  const CTransform4f camXf = mgr.GetCameraManager()->GetCurrentCameraTransform(mgr);
  const CVector3f soundToCam = camXf.GetTranslation() - pos;
  const float soundToCamMag = soundToCam.Magnitude();
  const CVector3f soundToCamNorm = soundToCam * (1.f / soundToCamMag);
  const CVector3f thirdEdge =
      CVector3f::Up() - soundToCamNorm * CVector3f::Dot(soundToCamNorm, CVector3f::Up());
  const CVector3f cross = CVector3f::Cross(soundToCamNorm, thirdEdge);
  static float kInfluenceAmount = 3.f / soundToCamMag;
  static float kInfluenceIncrement = kInfluenceAmount;
  static CMaterialFilter kSolidFilter = CMaterialFilter::MakeIncludeExclude(
      CMaterialList(kMT_Solid), CMaterialList(kMT_ProjectilePassthrough));
  float influenceIncrement = kInfluenceIncrement;
  float influenceAmount = kInfluenceAmount;
  float f17 = -influenceAmount;
  int totalCount = 0;
  int invalCount = 0;

  for (float i = -influenceAmount; i <= influenceAmount; i += influenceIncrement) {
    const CVector3f angledDir = (thirdEdge * i + soundToCamNorm);
    for (float j = -influenceAmount; j <= influenceAmount; j += influenceIncrement) {
      ++totalCount;

      if (mgr.RayStaticIntersection(pos, (cross * j + angledDir).AsNormalized(), soundToCamMag,
                                    kSolidFilter)
              .IsInvalid()) {
        ++invalCount;
      }
    }
  }
  return invalCount / static_cast< float >(totalCount) * 0.42f + 0.58f;
}
