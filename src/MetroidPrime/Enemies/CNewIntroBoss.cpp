#include "MetroidPrime/Enemies/CNewIntroBoss.hpp"

#include "MetroidPrime/CCollisionActorManager.hpp"
#include "MetroidPrime/CGameCollision.hpp"
#include "MetroidPrime/CHealthInfo.hpp"
#include "Kyoto/Animation/CPOINode.hpp"
#include "MetroidPrime/CRumbleManager.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/Weapons/CBeamProjectile.hpp"

#include "Kyoto/Animation/CInt32POINode.hpp"

#include "Collision/CRayCastResult.hpp"

// TODO move
struct SSphereJointInfo {
  const char* name;
  float radius;
};
struct SOBBJointInfo {
  const char* from;
  const char* to;
  float bX;
  float bY;
  float bZ;
};

const SOBBJointInfo skOBBJoints[] = {
    {"Pelvis", "Spine_3", 4.f, 1.f, 4.f},
    {"Spine_3", "Tail_1", 2.f, 1.f, 2.f},
    {"Tail_1", "Tail_2", 1.f, 1.f, 1.f},
    {"Tail_2", "Tail_3", 1.f, 1.f, 1.f},
    {"Tail_3", "Tail_4", 1.f, 1.f, 1.f},
    {"R_shoulder_front", "R_elbow_front", .5f, .5f, .5f},
    {"R_elbow_front", "R_wrist_front", .5f, .5f, .5f},
    {"L_shoulder_front", "L_elbow_front", .5f, .5f, .5f},
    {"L_elbow_front", "L_wrist_front", .5f, .5f, .5f},
    {"R_shoulder_back", "R_elbow_back", .5f, .5f, .5f},
    {"R_elbow_back", "R_wrist_back", .5f, .5f, .5f},
    {"L_shoulder_back", "L_elbow_back", .5f, .5f, .5f},
    {"L_elbow_back", "L_wrist_back", .5f, .5f, .5f},
};

const SSphereJointInfo skSphereJoints[] = {
    {"Head_1", 1.5f},
    {"Tail_5", 1.5f},
};

pas::ELocomotionType CNewIntroBoss::GetLocoForHealth(const CStateManager& mgr) const {
  const CHealthInfo* hInfo = GetHealthInfo(mgr);

  if (hInfo->GetHP() > (.66f * x640_initialHp)) {
    return pas::kLT_Relaxed;
  }

  if (hInfo->GetHP() > (.33f * x640_initialHp)) {
    return pas::kLT_Lurk;
  }

  return pas::kLT_Combat;
}

pas::EGenerateType CNewIntroBoss::GetGenerateForHealth(const CStateManager& mgr) const {
  return GetHealthInfo(mgr)->GetHP() > 0.33f * x640_initialHp ? pas::kGType_Three
                                                              : pas::kGType_Four;
}

float CNewIntroBoss::GetNextAttackTime(CStateManager& mgr) const {
  float attackTime = 2.f * mgr.Random()->Float() + 6.f;
  const CHealthInfo* hInfo = GetHealthInfo(mgr);

  if (hInfo->GetHP() > .66f * x640_initialHp) {
    return attackTime;
  }
  if (hInfo->GetHP() > .33f * x640_initialHp) {
    return attackTime - (0.4125f * attackTime);
  }

  return attackTime - (0.825f * attackTime);
}

CNewIntroBoss::CNewIntroBoss(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                             const CTransform4f& xf, const CModelData& mData,
                             const CPatternedInfo& pInfo, const CActorParameters& actParms,
                             float minTurnAngle, CAssetId projectile, const CDamageInfo& dInfo,
                             CAssetId beamContactFxId, CAssetId beamPulseFxId,
                             CAssetId beamTextureId, CAssetId beamGlowTextureId)
: CPatterned(kC_NewIntroBoss, uid, name, kFT_Zero, info, xf, mData, pInfo, kMT_Flyer, kCT_One,
             kBT_Restricted, actParms, kKBV_Medium)
, x568_locomotion(pas::kLT_Relaxed)
, x56c_stateProg(0)
, x570_minTurnAngle(minTurnAngle)
, x574_boneTracking(*GetAnimationData(), rstl::string_l("Head_1"), CMath::Deg2Rad(80.f),
                    CMath::Deg2Rad(180.f), kBTF_None)
, x5ac_projectileInfo(projectile, dInfo)
, x5d4_stage1Projectile(kInvalidUniqueId)
, x5d6_stage2Projectile(kInvalidUniqueId)
, x5d8_stage3Projectile(kInvalidUniqueId)
, x5f0_beamContactFxId(beamContactFxId)
, x5f4_beamPulseFxId(beamPulseFxId)
, x5f8_beamTextureId(beamTextureId)
, x5fc_beamGlowTextureId(beamGlowTextureId)
, x600_headActor(kInvalidUniqueId)
, x602_pelvisActor(kInvalidUniqueId)
, x604_predictedPlayerPos(CVector3f::Zero())
, x610_lookPos(CVector3f::Zero())
, x61c_startPlayerPos(CVector3f::Zero())
, x628_firingTime(0.f)
, x62c_targetPos(CVector3f::Zero())
, x638_(0.2f)
, x63c_attackTime(8.f)
, x640_initialHp(0.f)
, x644_initialXf(xf)
, x674_rumbleVoice(-1)
, x676_curProjectile(kInvalidUniqueId)
, x678_(false) {
  x5ac_projectileInfo.Token().Lock();
  x574_boneTracking.SetActive(true);
}

CProjectileInfo* CNewIntroBoss::ProjectileInfo() { return &x5ac_projectileInfo; }

CVector3f CNewIntroBoss::PlayerPos(const CStateManager& mgr) const {
  float z0 = mgr.GetPlayer()->GetEyeHeight() / 2.f;
  CVector3f pos = mgr.GetPlayer()->GetTranslation() + CVector3f(0.f, 0.f, z0);
  CRayCastResult result = CGameCollision::RayStaticIntersection(
      mgr, pos, CVector3f::Down(), 30.f, CMaterialFilter::MakeInclude(CMaterialList(kMT_Solid)));
  if (result.IsInvalid()) {
    float z = mgr.GetPlayer()->GetEyeHeight() / 2.f + 0.2f;
    return mgr.GetPlayer()->GetTranslation() + CVector3f(0.f, 0.f, z);
  } else {
    float z = mgr.GetPlayer()->GetEyeHeight() / 2.f + 0.2f;
    return result.GetPoint() + CVector3f(0.f, 0.f, z);
  }
}

void CNewIntroBoss::DoUserAnimEvent(CStateManager& mgr, const CInt32POINode& node,
                                    EUserEventType event, float dt) {
  bool handled = false;
  switch (event) {
  case kUE_DamageOn: {
    x5dc_damageLocator = node.GetLocatorName();
    CTransform4f xf = GetLctrTransform(x5dc_damageLocator);
    CVector3f playerPos = PlayerPos(mgr);
    x62c_targetPos = x610_lookPos = x604_predictedPlayerPos = playerPos;
    x61c_startPlayerPos = playerPos;
    x628_firingTime = 0.f;
    if (GetLocoForHealth(mgr) == pas::kLT_Combat) {
      x676_curProjectile = x5d8_stage3Projectile;
    } else if (GetLocoForHealth(mgr) == pas::kLT_Lurk) {
      x676_curProjectile = x5d6_stage2Projectile;
    } else {
      x676_curProjectile = x5d4_stage1Projectile;
    }

    CTransform4f projXf = CTransform4f::LookAt(xf.GetTranslation(), x610_lookPos);
    if (CBeamProjectile* projectile =
            static_cast< CBeamProjectile* >(mgr.ObjectById(x676_curProjectile))) {
      if (!projectile->GetActive()) {
        projectile->Fire(projXf, mgr, false);

        if (x674_rumbleVoice == -1)
          x674_rumbleVoice =
              mgr.GetRumbleManager()->Rumble(mgr, kRFX_IntroBossProjectile, 1.f, kRP_Two);
      }
    }
    handled = true;
    break;
  }
  case kUE_DamageOff: {
    if (CBeamProjectile* projectile =
            static_cast< CBeamProjectile* >(mgr.ObjectById(x676_curProjectile))) {
      projectile->ResetBeam(mgr, false);
    }

    StopRumble(mgr);
    x63c_attackTime = GetNextAttackTime(mgr);
    SendScriptMsgs(kSS_Attack, mgr, kSM_None);
    handled = true;
    break;
  }
  case kUE_Projectile:
  default:
    break;
  }
  if (!handled) {
    CPatterned::DoUserAnimEvent(mgr, node, event, dt);
  }
}

rstl::optional_object< CAABox > CNewIntroBoss::GetTouchBounds() const {
  return rstl::optional_object_null();
}

void CNewIntroBoss::Generate(CStateManager& mgr, EStateMsg msg, float arg) {
  /*
    if (msg == kStateMsg_Activate) {
    x56c_stateProg = 0;
    x568_locomotion = GetLocoForHealth(mgr);
    SendScriptMsgs(kSS_Entered, mgr, kSM_None);
  } else if (msg == kStateMsg_Update) {
    if (x56c_stateProg == 0) {
      if (x450_bodyController->GetBodyStateInfo().GetCurrentStateId() == pas::kAS_Generate) {
        x56c_stateProg = 2;
        return;
      }

      x450_bodyController->GetCommandMgr().DeliverCmd(CBCGenerateCmd(GetGenerateForHealth(mgr)));
    } else if (x56c_stateProg == 2) {
      if (x450_bodyController->GetBodyStateInfo().GetCurrentStateId() != pas::kAS_Generate) {
        x56c_stateProg = 3;
        SendScriptMsgs(EScriptObjectState::Exited, mgr, kSM_None);
      }
    }
  }
  */
}
