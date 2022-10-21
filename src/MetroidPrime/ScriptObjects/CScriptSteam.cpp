#include "MetroidPrime/ScriptObjects/CScriptSteam.hpp"

#include "MetroidPrime/CEnvFxManager.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"

#include "Kyoto/Math/CloseEnough.hpp"

CScriptSteam::CScriptSteam(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                           const CVector3f& pos, const CAABox& aabb, const CDamageInfo& dInfo,
                           const CVector3f& orientedForce, unsigned int flags, bool active,
                           CAssetId texture, float f1, float f2, float f3, float f4, bool b1)
: CScriptTrigger(uid, name, info, pos, aabb, dInfo, orientedForce, flags, active, false, false)
, x150_(b1)
, x154_texture(texture)
, x158_(f1)
, x15c_alphaInDur(f2 / f1)
, x160_alphaOutDur(f3 / f1) {
  float r3 = (aabb.GetMaxPoint().GetZ() < aabb.GetMaxPoint().GetY() ? aabb.GetMaxPoint().GetZ()
                                                                    : aabb.GetMaxPoint().GetY());
  r3 = (r3 < aabb.GetMaxPoint().GetX() ? r3 : aabb.GetMaxPoint().GetX());

  if (close_enough(f4, 0.f)) {
    r3 = (r3 < f2 ? r3 : f4);
  }

  x164_ = r3;
  x168_ = 1.f / x164_;
}

CScriptSteam::~CScriptSteam() {}

void CScriptSteam::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) {
  switch (msg) {
  case kSM_Deactivate:
    mgr.Player()->SetVisorSteam(0.f, x15c_alphaInDur, x160_alphaOutDur, kInvalidAssetId, x150_);
    break;
  }

  CScriptTrigger::AcceptScriptMsg(msg, uid, mgr);
}

void CScriptSteam::Think(float dt, CStateManager& mgr) {
  if (!GetActive()) {
    return;
  }

  CScriptTrigger::Think(dt, mgr);

  if (x148_28_playerTriggerProc && mgr.GetCameraManager()->GetFluidCounter() == 0) {
    const CVector3f& eyePos = mgr.GetPlayer()->GetEyePosition();
    const CVector3f& posDiff = (GetTranslation() - eyePos);
    const float mag = posDiff.Magnitude();

    const float distance =
        (mag >= x164_ ? 0.f : x158_ * CMath::FastCosR((1.5707964f * mag) * x168_));
    mgr.Player()->SetVisorSteam(distance, x15c_alphaInDur, x160_alphaOutDur, x154_texture,
                                x150_ == true);
    if (x150_) {
      mgr.EnvFxManager()->SetSplashRate(2.f * distance);
    }
  } else {
    mgr.Player()->SetVisorSteam(0.f, x15c_alphaInDur, x160_alphaOutDur, kInvalidAssetId,
                                x150_ == true);
  }
}

void CScriptSteam::Accept(IVisitor& visitor) { visitor.Visit(*this); }
