#include "MetroidPrime/ScriptObjects/CScriptVisorGoo.hpp"

#include "MetroidPrime/CActorParameters.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/ScriptObjects/CHUDBillboardEffect.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"

#include "rstl/math.hpp"

CScriptVisorGoo::CScriptVisorGoo(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                                 const CTransform4f& xf, CAssetId particle, CAssetId electric,
                                 float minDist, float maxDist, float nearProb, float farProb,
                                 const CColor& color, int sfx, bool forceShow, bool active)
: CActor(uid, active, name, info, xf, CModelData::CModelDataNull(), CMaterialList(),
         CActorParameters::None(), kInvalidUniqueId)
, xe8_particleDesc(nullptr)
, xf0_electricDesc(nullptr)
, xf8_sfx(CSfxManager::TranslateSFXID(sfx))
, xfc_particleId(particle)
, x100_electricId(electric)
, x104_minDist(minDist)
, x108_maxDist(rstl::max_val(maxDist, minDist + 0.01f))
, x10c_nearProb(nearProb)
, x110_farProb(farProb)
, x114_color(color) {
  x118_24_angleTest = !forceShow;
  if (particle != kInvalidAssetId) {
    xe8_particleDesc = gpSimplePool->GetObj(SObjectTag('PART', particle));
  }
  if (electric != kInvalidAssetId) {
    xf0_electricDesc = gpSimplePool->GetObj(SObjectTag('ELSC', electric));
  }
}

CScriptVisorGoo::~CScriptVisorGoo() {}

void CScriptVisorGoo::Think(float, CStateManager& mgr) {
  if (GetActive()) {
    bool loaded = false;
    if (xfc_particleId != kInvalidAssetId) {
      if (xe8_particleDesc.IsLoaded()) {
        if (x100_electricId != kInvalidAssetId) {
          if (xf0_electricDesc.IsLoaded()) {
            loaded = true;
          }
        } else {
          loaded = true;
        }
      }
    } else {
      if (xf0_electricDesc.IsLoaded()) {
        loaded = true;
      }
    }

    if (loaded) {
      bool showGoo = false;
      if (mgr.GetPlayer()->GetCameraState() == CPlayer::kCS_FirstPerson) {
        const CVector3f eyeToGoo = GetTranslation() - mgr.GetPlayer()->GetEyePosition();
        const float eyeToGooDist = eyeToGoo.Magnitude();
        if (eyeToGooDist >= x104_minDist && eyeToGooDist <= x108_maxDist) {
          if (x118_24_angleTest) {
            CVector3f colNorm = mgr.GetCameraManager()
                                    ->GetCurrentCameraTransform(mgr)
                                    .GetColumn(kDY)
                                    .AsNormalized();
            float angleThresh = 45.f;
            float angle = CMath::Rad2Deg(CMath::FastArcCosR(
                              CVector3f::Dot(eyeToGoo.AsNormalized(), colNorm))) *
                          360.f;
            if (eyeToGooDist < 4.f) {
              angleThresh *= 4.f / eyeToGooDist;
              angleThresh = rstl::min_val(angleThresh, 90.f);
            }
            if (angle <= angleThresh) {
              showGoo = true;
            }
          } else {
            showGoo = true;
          }
          if (showGoo) {
            const float t = (x108_maxDist - eyeToGooDist) / (x108_maxDist - x104_minDist);
            float prob = t * x10c_nearProb + (1.0f - t) * x110_farProb;
            if (mgr.Random()->Float() * 100.f <= prob) {
              mgr.AddObject(new CHUDBillboardEffect(
                  xfc_particleId != kInvalidAssetId
                      ? rstl::optional_object< TToken< CGenDescription > >(xe8_particleDesc)
                      : rstl::optional_object_null(),
                  x100_electricId != kInvalidAssetId
                      ? rstl::optional_object< TToken< CElectricDescription > >(xf0_electricDesc)
                      : rstl::optional_object_null(),
                  mgr.AllocateUniqueId(), true, rstl::string_l("VisorGoo"),
                  CHUDBillboardEffect::GetNearClipDistance(mgr),
                  CHUDBillboardEffect::GetScaleForPOV(mgr), x114_color, CVector3f(1.f, 1.f, 1.f),
                  CVector3f(0.f, 0.f, 0.f)));
              CSfxManager::SfxStart(xf8_sfx, 0x7f, 0x40, false, CSfxManager::kMedPriority);
            }
          }
        }
      }
      mgr.FreeScriptObject(GetUniqueId());
    }
  }
}

void CScriptVisorGoo::Touch(CActor& other, CStateManager& mgr) {
  // Empty
}

rstl::optional_object< CAABox > CScriptVisorGoo::GetTouchBounds() const {
  return rstl::optional_object_null();
}

void CScriptVisorGoo::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId,
                                      CStateManager& mgr) {
  switch (msg) {
  case kSM_Activate:
    if (xfc_particleId != kInvalidAssetId) {
      xe8_particleDesc.Lock();
    }
    if (x100_electricId != kInvalidAssetId) {
      xf0_electricDesc.Lock();
    }
    break;
  default:
    break;
  }
  CActor::AcceptScriptMsg(msg, objId, mgr);
}

void CScriptVisorGoo::Render(const CStateManager& mgr) const {
  // Empty
}

void CScriptVisorGoo::AddToRenderer(const CFrustumPlanes& frustum, const CStateManager& mgr) const {
  // Empty
}

void CScriptVisorGoo::Accept(IVisitor& visitor) { visitor.Visit(*this); }
