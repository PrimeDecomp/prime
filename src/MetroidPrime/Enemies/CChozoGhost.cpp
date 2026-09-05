#include "MetroidPrime/Enemies/CChozoGhost.hpp"

#include "Kyoto/Animation/CPASAnimParmData.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "MetroidPrime/Enemies/CTeamAiMgr.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"

const rstl::string CChozoGhost::skSpeedSwooshName = rstl::string_l("SpeedSwoosh");

CChozoGhost::CBehaveChance::CBehaveChance(CInputStream& in)
: x0_propertyCount(in.Get< uint >())
, x4_lurk(in.Get< float >())
, x8_taunt(in.Get< float >())
, xc_attack(in.Get< float >())
, x10_move(in.Get< float >())
, x14_lurkTime(in.Get< float >())
, x18_chargeAttack(x0_propertyCount > 5 ? in.Get< float >() * 0.01f : 0.5f)
, x1c_numBolts(x0_propertyCount > 6 ? in.Get< uint >() : 2) {
  const float average = 1.f / (x4_lurk + x8_taunt + xc_attack + x10_move);
  x4_lurk *= average;
  x8_taunt *= average;
  xc_attack *= average;
  x10_move *= average;
}

EBehaveType CChozoGhost::CBehaveChance::GetBehave(const EBehaveType type,
                                                  CStateManager& mgr) const {
  float lurkChance = x4_lurk;
  float tauntChance = x8_taunt;
  float attackChance = xc_attack;
  switch (type) {
  case kBT_Lurk: {
    const float delta = lurkChance / 3.f;
    lurkChance = 0.f;
    tauntChance += delta;
    attackChance += delta;
  } break;
  case kBT_Taunt: {
    const float delta = tauntChance / 3.f;
    tauntChance = 0.f;
    lurkChance += delta;
    attackChance += delta;
  } break;
  case kBT_Attack: {
    const float delta = attackChance / 3.f;
    attackChance = 0.f;
    lurkChance += delta;
    tauntChance += delta;
  } break;
  case kBT_Move: {
    const float delta = x10_move / 3.f;
    lurkChance += delta;
    tauntChance += delta;
    attackChance += delta;
  } break;
  default:
    break;
  }

  const float rnd = mgr.Random()->Float();
  EBehaveType ret = kBT_Move;
  if (rnd < lurkChance) {
    ret = kBT_Lurk;
  } else if (rnd - lurkChance < tauntChance) {
    ret = kBT_Taunt;
  } else if (rnd - lurkChance - tauntChance < attackChance) {
    ret = kBT_Attack;
  }
  return ret;
}

CChozoGhost::CChozoGhost(
    const TUniqueId uid, const rstl::string& name, const CEntityInfo& info, const CTransform4f& xf,
    const CModelData& mData, const CActorParameters& actParms, const CPatternedInfo& pInfo,
    const float hearingRadius, const float fadeOutDelay, const float attackDelay,
    const float freezeTime, const CAssetId wpsc1, const CDamageInfo& dInfo1, const CAssetId wpsc2,
    const CDamageInfo& dInfo2, const CBehaveChance& chance1, const CBehaveChance& chance2,
    const CBehaveChance& chance3, const ushort soundImpact, const float f1, const ushort sfxFadeIn,
    const ushort sfxFadeOut, const uint w1, const float f2, const uint w2,
    const float hurlRecoverTime, const CAssetId projectileVisor, const ushort soundProjectileVisor,
    const float f3, const float f4, const uint nearChance, const uint midChance)
: CPatterned(kC_ChozoGhost, uid, name, kFT_Zero, info, xf, mData, pInfo, kMT_Flyer, kCT_Zero,
             kBT_BiPedal, actParms, kCS_Medium)
, x568_hearingRadius(hearingRadius)
, x56c_fadeOutDelay(fadeOutDelay)
, x570_attackDelay(attackDelay)
, x574_freezeTime(freezeTime)
, x578_projectileInfo1(wpsc1, dInfo1)
, x5a0_projectileInfo2(wpsc2, dInfo2)
, x5c8_behaveChance1(chance1)
, x5e8_behaveChance2(chance2)
, x608_behaveChance3(chance3)
, x628_soundImpact(soundImpact)
, x62c_(f1)
, x630_sfxFadeIn(sfxFadeIn)
, x632_sfxFadeOut(sfxFadeOut)
, x634_(f2)
, x638_hurlRecoverTime(hurlRecoverTime)
, x63c_(w2)
, x650_soundProjectileVisor(soundProjectileVisor)
, x654_(f3)
, x658_(f4)
, x65c_nearChance(nearChance)
, x660_midChance(midChance)
, x664_24_behaviorEnabled((w1 << 6) & 0x40)
, x664_25_flinch((w1 << 5) & 0x40)
, x664_26_alert(false)
, x664_27_onGround(false)
, x664_28_(false)
, x664_29_fadedIn(false)
, x664_30_fadedOut(false)
, x664_31_(false)
, x665_24_(true)
, x665_25_(false)
, x665_26_shouldSwoosh(false)
//, x665_27_playerInLeashRange(false)
, x665_28_inRange(false)
, x665_29_aggressive(false)
, x668_(0.f)
, x66c_(0.f)
, x670_(0.f)
, x674_coverPoint(kInvalidUniqueId)
, x678_floorLevel(0.f)
, x67c_attackType(-1)
, x680_behaveType(x664_24_behaviorEnabled ? kBT_Attack : kBT_None)
, x684_lurkDelay(1.f)
, x68c_boneTracking(*GetAnimationData(), rstl::string_l("Head_1"),
                    CRelAngle::FromDegrees(80.f).AsRadians(),
                    CRelAngle::FromDegrees(180.f).AsRadians(), kBTF_None)
, x6c4_teamMgr(kInvalidUniqueId)
, x6c8_spaceWarpTime(0.f)
, x6cc_spaceWarpPosition(CVector3f::Zero())
, x6d8_(1) {
  x578_projectileInfo1.Token().Lock();
  x5a0_projectileInfo2.Token().Lock();

  const CPASAnimParmData jumpAnimParms(pas::kAS_Jump, CPASAnimParm::FromEnum(3),
                                       CPASAnimParm::FromEnum(0));
  x668_ = GetModelScale().GetZ() * GetAnimationDistance(jumpAnimParms);
  const CPASAnimParmData slideAnimParms(pas::kAS_Slide, CPASAnimParm::FromEnum(1),
                                        CPASAnimParm::FromReal32(90.f));
  x66c_ = GetModelScale().GetY() * GetAnimationDistance(slideAnimParms);
  const CPASAnimParmData meleeAnimParms(pas::kAS_MeleeAttack, CPASAnimParm::FromEnum(2),
                                        CPASAnimParm::FromEnum(1));
  x670_ = GetModelScale().GetZ() * GetAnimationDistance(meleeAnimParms);

  if (projectileVisor != kInvalidAssetId) {
    x640_projectileVisor = gpSimplePool->GetObj(SObjectTag('PART', projectileVisor));
  }

  x460_knockBackController.SetEnableBurn(false);
  x460_knockBackController.SetEnableLaggedBurnDeath(false);
  x460_knockBackController.SetEnableShock(false);
  x460_knockBackController.SetEnableFreeze(false);
  SetDrawShadow(false);
  MakeThermalColdAndHot();
}

void CChozoGhost::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CChozoGhost::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) {}

void CChozoGhost::Touch(CActor& act, CStateManager& mgr) {
  if (!IsVisibleEnough(mgr)) {
    return;
  }
}

bool CChozoGhost::CanBeShot(const CStateManager& mgr, int w1) { return IsVisibleEnough(mgr); }

EWeaponCollisionResponseTypes CChozoGhost::GetCollisionResponseType(const CVector3f&,
                                                                    const CVector3f&,
                                                                    const CWeaponMode&, int) const {
  return kWCR_ChozoGhost;
}

const CDamageVulnerability* CChozoGhost::GetDamageVulnerability() const {
  if (x665_24_) {
    return &CDamageVulnerability::PassThroughVulnerability();
  }

  return CAi::GetDamageVulnerability();
}

uchar CChozoGhost::GetModelAlphau8(const CStateManager& mgr) const {
  uchar ret = 255;
  if (mgr.GetPlayerState()->GetActiveVisor(mgr) != CPlayerState::kPV_XRay || !IsAlive()) {
    ret = x42c_color.GetAlphau8();
  }

  return ret & 0xFF;
}

void CChozoGhost::PreRender(CStateManager& mgr, const CFrustumPlanes& frustum) {}

void CChozoGhost::Render(const CStateManager& mgr) const {}

bool CChozoGhost::IsVisibleEnough(const CStateManager& mgr) const {
  return GetModelAlphau8(mgr) > 31;
}

CVector3f CChozoGhost::GetOrigin(const CStateManager& mgr, const CTeamAiRole& role,
                                 const CVector3f& aimPos) const {
  return GetTranslation();
}

void CChozoGhost::AddToTeam(CStateManager& mgr) {
  if (x6c4_teamMgr == kInvalidUniqueId) {
    x6c4_teamMgr = CTeamAiMgr::GetTeamAiMgr(*this, mgr);
  }

  if (x6c4_teamMgr == kInvalidUniqueId) {
    return;
  }

  if (CTeamAiMgr* teamMgr = TCastToPtr< CTeamAiMgr >(mgr.ObjectById(x6c4_teamMgr))) {
    teamMgr->AssignTeamAiRole(*this, CTeamAiRole::kTAR_Projectile, CTeamAiRole::kTAR_Unknown,
                              CTeamAiRole::kTAR_Invalid);
  }
}

void CChozoGhost::RemoveFromTeam(CStateManager& mgr) {
  if (x6c4_teamMgr == kInvalidUniqueId) {
    return;
  }

  CTeamAiMgr* teamMgr = TCastToPtr< CTeamAiMgr >(mgr.ObjectById(x6c4_teamMgr));
  if (teamMgr && teamMgr->IsPartOfTeam(GetUniqueId())) {
    teamMgr->RemoveTeamAiRole(GetUniqueId());
    x6c4_teamMgr = kInvalidUniqueId;
  }
}

void CChozoGhost::FloatToLevel(const float f1, const float dt) {
  CVector3f translation = GetTranslation();
  const float floatAmt = ((f1 - translation[kDZ]) * 4.f);
  translation[kDZ] += floatAmt * dt;
  SetTranslation(translation);
}

bool CChozoGhost::IsOnGround() const { return x664_27_onGround; }

void CChozoGhost::FindBestAnchor(CStateManager& mgr) {}

const CChozoGhost::CBehaveChance& CChozoGhost::ChooseBehaveChanceRange(CStateManager& mgr) const {
  const float dist = (GetTranslation() - mgr.GetPlayer()->GetTranslation()).Magnitude();
  if (dist < x654_) {
    return x5c8_behaveChance1;
  }
  if (dist < x658_) {
    return x5e8_behaveChance2;
  }

  return x608_behaveChance3;
}

void CChozoGhost::SetWarpPosition(CStateManager& mgr, const CVector3f& dir) {
  const CVector3f center = GetBoundingBox().GetCenterPoint();
  const CRayCastResult result = mgr.RayStaticIntersection(
      center + dir * 8.f, -dir, 8.f, CMaterialFilter::MakeInclude(CMaterialList(kMT_Solid)));
  if (result.IsValid()) {
    x6cc_spaceWarpPosition = result.GetPoint();
  } else {
    x6cc_spaceWarpPosition = center + dir;
  }
}

void CChozoGhost::InActive(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate: {
    if (!BodyCtrl()->GetIsActive()) {
      BodyCtrl()->Activate(mgr);
    }

    if (x63c_ == 3) {
      BodyCtrl()->SetLocomotionType(pas::kLT_Crouch);
      x42c_color.SetAlpha(1.f);
    } else {
      BodyCtrl()->SetLocomotionType(pas::kLT_Relaxed);
      x42c_color.SetAlpha(0.f);
    }
    RemoveMaterial(kMT_Solid, mgr);
    x150_momentum = CVector3f::Zero();
    x665_24_ = true;
  } break;
  case kStateMsg_Update:
    break;
  default:
    break;
  }
}

bool CChozoGhost::AIStage(CStateManager& mgr, const float arg) {
  return x63c_ == static_cast< int >(arg);
}
void CChozoGhost::Growth(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate: {
    StateMachineState().SetDelay(x56c_fadeOutDelay);
    BodyCtrl()->SetLocomotionType(pas::kLT_Crouch);
    x3e8_alphaDelta = 1.f;
    x664_29_fadedIn = true;
    if (x56c_fadeOutDelay > 0.f) {
      x6c8_spaceWarpTime = x56c_fadeOutDelay;
      SetWarpPosition(mgr, CVector3f::Up());
    }
  } break;
  case kStateMsg_Update:
    break;
  case kStateMsg_Deactivate:
    x665_24_ = false;
    x68c_boneTracking.SetActive(true);
    x68c_boneTracking.SetTarget(mgr.GetPlayer()->GetUniqueId());
    break;
  }
}

void CChozoGhost::Generate(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate: {
    StateMachineState().SetDelay(x56c_fadeOutDelay);
    SetAnimationState(kAS_Ready);
    x664_27_onGround = false;
    const CRayCastResult result =
        mgr.RayStaticIntersection(GetTranslation(), CVector3f::Down(), 100.f,
                                  CMaterialFilter::MakeInclude(CMaterialList(kMT_Floor)));
    if (result.IsValid()) {
      x678_floorLevel = result.GetPoint().GetZ();
    } else {
      x678_floorLevel = mgr.GetPlayer()->GetTranslation().GetZ();
    }

    x3e8_alphaDelta = 1.f;
    x664_29_fadedIn = true;

    if (x56c_fadeOutDelay > 0.f) {
      x6c8_spaceWarpTime = x56c_fadeOutDelay;
      SetWarpPosition(mgr, CVector3f::Down());
    }
  } break;
  case kStateMsg_Update: {
    TryCommand(mgr, pas::kAS_Jump, &CPatterned::TryJump, 0);
    switch (GetAnimationState()) {
    case kAS_Repeat: {
      BodyCtrl()->SetLocomotionType(pas::kLT_Crouch);
      if (x664_27_onGround) {
        break;
      }

      if (GetTranslation().GetZ() < x678_floorLevel + x668_) {
        CVector3f newPos = GetTranslation();
        newPos.SetZ(x678_floorLevel + x668_);
        SetTranslation(newPos);
        x664_27_onGround = true;
      }
    } break;
    case kAS_Over: {
      x68c_boneTracking.SetActive(true);
      x68c_boneTracking.SetTarget(mgr.GetPlayer()->GetUniqueId());
      FloatToLevel(x678_floorLevel, arg);
    } break;
    default:
      break;
    }
  } break;
  case kStateMsg_Deactivate: {
    SetAnimationState(kAS_NotReady);
    x665_24_ = false;
    x664_27_onGround = false;
  } break;
  }
}

void CChozoGhost::WallDetach(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate: {
    StateMachineState().SetDelay(x56c_fadeOutDelay);
    x3e8_alphaDelta = 1.f;
    x664_29_fadedIn = false;

    if (x56c_fadeOutDelay > 0.f) {
      x6c8_spaceWarpTime = x56c_fadeOutDelay;
      SetWarpPosition(mgr, GetTransform().GetForward());
    }

    const CActor* wp = nullptr;
    const TUniqueId wpId = GetConnectedObject(mgr, kSS_Attack, kSM_Follow);
    if (wpId != kInvalidUniqueId) {
      wp = TCastToConstPtr< CActor >(mgr.GetObjectById(wpId));
    }

    if (wp) {
      SetDestPos(wp->GetTranslation());
    } else {
      SetDestPos(GetTranslation() + GetTransform().GetForward() * (2.f * x66c_));
    }

    SendScriptMsgs(kSS_Attack, mgr, kSM_Follow);
  } break;
  case kStateMsg_Update: {

  } break;
  case kStateMsg_Deactivate: {
    x68c_boneTracking.SetActive(true);
    x68c_boneTracking.SetTarget(mgr.GetPlayer()->GetUniqueId());
    x665_24_ = false;
    x680_behaveType = kBT_Move;
  } break;
  }
}
void CChozoGhost::Run(CStateManager& mgr, EStateMsg msg, float arg) {
  switch (msg) {
  case kStateMsg_Activate: {
    BodyCtrl()->SetLocomotionType(pas::kLT_Lurk);
    SetWasHit(false);
    KnockBackCtrl().EnableAnimReaction(kAR_KnockBack, false);
    x665_28_inRange = false;
  } break;
  case kStateMsg_Update: {
    BodyCtrl()->CommandMgr().DeliverCmd(
        CBCLocomotionCmd(x688_steeringBehaviors.Seek(*this, x2e0_destPos), CVector3f::Zero(), 1.f));
    if (!x665_26_shouldSwoosh) {
      break;
    }

    x678_floorLevel = x2e0_destPos.GetZ();
    FloatToLevel(x678_floorLevel, arg);
    AnimationData()->SetParticleEffectState(skSpeedSwooshName, true, mgr);
    x665_24_ = false;
    if (x665_28_inRange) {
      break;
    }

    const float range = x66c_ + arg * x138_velocity.Magnitude() * 2.5f;
    x665_28_inRange = (x2e0_destPos - GetTranslation()).MagSquared() < range * range;
  } break;
  case kStateMsg_Deactivate:
    BodyCtrl()->SetLocomotionType(pas::kLT_Crouch);
    SetDestPos(mgr.GetPlayer()->GetTranslation());
    AnimationData()->SetParticleEffectState(skSpeedSwooshName, false, mgr);
    KnockBackCtrl().EnableAnimReaction(kAR_KnockBack, true);
    x665_28_inRange = false;
    break;
  }
}