#include "MetroidPrime/ScriptObjects/CScriptPlatform.hpp"

#include "MetroidPrime/CActorParameters.hpp"
#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CGameCollision.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/ScriptObjects/CScriptWaypoint.hpp"

#include "Kyoto/Graphics/CGX.hpp"

#include "WorldFormat/CCollidableOBBTreeGroup.hpp"

#include "rstl/algorithm.hpp"

#ifndef TARGET_PC
struct GXData {
  ushort cpSRreg;
  ushort cpCRreg;
};
extern GXData* __GXData;

static inline void write_bp_cmd(u32 cmd) {
  GXWGFifo.u8 = GX_LOAD_BP_REG;
  GXWGFifo.u32 = cmd;
  __GXData->cpCRreg = 0;
}
#endif

void CGX::update_fog(uint flags) {
  if (sGXState.x53_fogType == 0) {
    return;
  }
  if ((sGXState.x56_blendMode & 0xE0) == (flags & 0xE0)) {
    return;
  }
  if ((flags & 0xE0) == 0x20) {
#ifdef TARGET_PC
    static const GXColor sGXClear = {0, 0, 0, 0};
    GXSetFogColor(sGXClear);
#else
    write_bp_cmd(0xf2000000);
#endif
  } else {
#ifdef TARGET_PC
    GXSetFogColor(sGXState.x24c_fogParams.x10_fogColor);
#else
    write_bp_cmd((sGXState.x24c_fogParams.x10_fogColor.b) |
                 (sGXState.x24c_fogParams.x10_fogColor.g << 8) |
                 (sGXState.x24c_fogParams.x10_fogColor.r << 16) | 0xf2000000);
#endif
  }
}

CScriptPlatform::CScriptPlatform(
    TUniqueId uid, const rstl::string& name, const CEntityInfo& info, const CTransform4f& xf,
    const CModelData& mData, const CActorParameters& actParams, const CAABox& aabb, float speed,
    bool detectCollision, float xrayAlpha, bool active, const CHealthInfo& hInfo,
    const CDamageVulnerability& dVuln,
    const rstl::optional_object< TLockedToken< CCollidableOBBTreeGroupContainer > >& dcln,
    bool rainSplashes, uint maxRainSplashes, uint rainGenRate)
: CPhysicsActor(uid, active, name, info, xf, mData,
                CMaterialList(kMT_Solid, kMT_Immovable, kMT_Platform, kMT_Occluder), aabb,
                SMoverData(15000.f, CVector3f::Zero(), CAxisAngle::Identity(), CVector3f::Zero(),
                           CAxisAngle::Identity()),
                actParams, 0.3f, 0.1f)
, x258_currentWaypoint(kInvalidUniqueId)
, x25a_targetWaypoint(kInvalidUniqueId)
, x25c_currentSpeed(speed)
, x260_moveDelay(0.f)
, x264_collisionRecoverDelay(0.f)
, x268_fadeInTime(actParams.GetFadeInTime())
, x26c_fadeOutTime(actParams.GetFadeOutTime())
, x270_dragDelta(CVector3f::Zero())
, x27c_rotDelta(CQuaternion::NoRotation())
, x28c_initialHealth(hInfo)
, x294_health(hInfo)
, x29c_damageVuln(dVuln)
, x304_treeGroupContainer(dcln)
, x314_treeGroup(nullptr)
, x348_xrayAlpha(xrayAlpha)
, x34c_maxRainSplashes(maxRainSplashes)
, x350_rainGenRate(rainGenRate)
, x354_boundsTrigger(kInvalidUniqueId)
, x356_24_dead(false)
, x356_25_controlledAnimation(false)
, x356_26_detectCollision(detectCollision)
, x356_27_squishedRider(false)
, x356_28_rainSplashes(rainSplashes)
, x356_29_setXrayDrawFlags(false)
, x356_30_disableXrayAlpha(false)
, x356_31_xrayFog(true) {
  SetMaterialFilter(CMaterialFilter::MakeIncludeExclude(
      CMaterialList(kMT_Solid),
      CMaterialList(kMT_NoStaticCollision, kMT_NoPlatformCollision, kMT_Platform)));
  SetMovable(false);
  if (HasAnimation()) {
    AnimationData()->EnableLooping(true);
    AnimationData()->SetIsAnimating(true);
  }
  if (x304_treeGroupContainer) {
    x314_treeGroup = new CCollidableOBBTreeGroup(**x304_treeGroupContainer, GetMaterialList());
  }
}

CScriptPlatform::~CScriptPlatform() {}

rstl::optional_object< CAABox > CScriptPlatform::GetTouchBounds() const {
  if (GetActive()) {
    if (!x314_treeGroup.null()) {
      return x314_treeGroup->CalculateAABox(GetTransform());
    } else {
      return GetBoundingBox();
    }
  } else {
    return rstl::optional_object_null();
  }
}

TUniqueId CScriptPlatform::GetWaypoint(CStateManager& mgr) {
  rstl::vector< SConnection >::const_iterator conn = GetConnectionList().begin();
  for (; conn != GetConnectionList().end(); ++conn) {
    if (conn->x4_msg == kSM_Follow) {
      return mgr.GetIdForScript(conn->x8_objId);
    }
  }
  return kInvalidUniqueId;
}

TUniqueId CScriptPlatform::GetNext(TUniqueId uid, CStateManager& mgr) {
  const CScriptWaypoint* nextWp = TCastToConstPtr< CScriptWaypoint >(mgr.GetObjectById(uid));
  if (!nextWp) {
    return GetWaypoint(mgr);
  }
  TUniqueId next = nextWp->NextWaypoint(mgr);
  if (const CScriptWaypoint* wp = TCastToConstPtr< CScriptWaypoint >(mgr.GetObjectById(next))) {
    x25c_currentSpeed = wp->GetSpeed();
  }
  return next;
}

void CScriptPlatform::AddRider(rstl::vector< SRiders >& riders, TUniqueId riderId,
                               const CPhysicsActor* ridee, CStateManager& mgr) {
  rstl::vector< SRiders >::iterator it = rstl::find(riders.begin(), riders.end(), SRiders(riderId));
  if (it == riders.end()) {
    SRiders rider(riderId);
    if (CPhysicsActor* act = TCastToPtr< CPhysicsActor >(mgr.ObjectById(riderId))) {
      CVector3f rideePos = ridee->GetTranslation();
      rider.x8_transform.SetTranslation(
          ridee->GetTransform().TransposeRotate(act->GetTranslation() - rideePos));
      mgr.SendScriptMsg(act, ridee->GetUniqueId(), kSM_AddPlatformRider);
    }
    riders.reserve(riders.size() + 1);
    riders.push_back(rider);
  } else {
    it->x4_decayTimer = 1.f / 6.f;
  }
}

TEntityList CScriptPlatform::BuildNearListFromRiders(CStateManager& mgr,
                                                     const rstl::vector< SRiders >& riders) {
  TEntityList result;
  rstl::vector< SRiders >::const_iterator it = riders.begin();
  for (; it != riders.end(); ++it) {
    if (CActor* actor = TCastToPtr< CActor >(mgr.ObjectById(it->x0_uid))) {
      result.push_back(actor->GetUniqueId());
    }
  }
  return result;
}

void CScriptPlatform::DecayRiders(rstl::vector< SRiders >& riders, float dt, CStateManager& mgr) {
  rstl::vector< SRiders >::iterator it = riders.begin();
  while (it != riders.end()) {
    it->x4_decayTimer -= dt;
    if (it->x4_decayTimer <= 0.f) {
      mgr.SendScriptMsgAlways(it->x0_uid, kInvalidUniqueId, kSM_AddPlatformRider);
#ifdef NON_MATCHING
      it = riders.erase(it);
#else
      // Oops, forgot to reassign the iterator
      riders.erase(it);
#endif
    } else {
      // TODO: likely it++ (post-increment) but not matching
      it = it + 1;
    }
  }
}

// TODO: minor regswap
void CScriptPlatform::MoveRiders(CStateManager& mgr, float dt, nbdbool active,
                                 rstl::vector< SRiders >& riders,
                                 rstl::vector< SRiders >& collidedRiders, const CTransform4f& oldXf,
                                 const CTransform4f& newXf, const CVector3f& dragDelta,
                                 CQuaternion rotDelta) {
  rstl::vector< SRiders >::iterator it = riders.begin();
  while (it != riders.end()) {
    if (active) {
      CPhysicsActor* act = TCastToPtr< CPhysicsActor >(mgr.ObjectById(it->x0_uid));
      if (act == nullptr || !act->GetActive()) {
        ++it;
        continue;
      }
      const CTransform4f& xf = it->x8_transform;
      CVector3f diff = newXf.Rotate(xf.GetTranslation()) - oldXf.Rotate(xf.GetTranslation());
      diff.SetZ(0.f);
      CVector3f delta = dragDelta + diff;
      CVector3f newPos = act->GetTranslation() + delta;
      act->MoveCollisionPrimitive(delta);
      bool collision = CGameCollision::DetectStaticCollisionBoolean(
          mgr, *act->GetCollisionPrimitive(), act->GetPrimitiveTransform(),
          act->GetMaterialFilter());
      act->MoveCollisionPrimitive(CVector3f::Zero());
      if (collision) {
        AddRider(collidedRiders, act->GetUniqueId(), act, mgr);
#ifdef NON_MATCHING
        it = riders.erase(it);
#else
        // Oops, forgot to reassign the iterator (again)
        riders.erase(it);
#endif
        continue;
      }
      act->SetTranslation(newPos);
      const CPlayer* player = TCastToConstPtr< CPlayer >(*act);
      if (player == nullptr || player->GetOrbitState() == CPlayer::kOS_NoOrbit) {
        act->SetRotation(rotDelta * CQuaternion::FromMatrix(act->GetTransform()));
      }
    }
    ++it;
  }
}

// TODO non-matching
void CScriptPlatform::PreThink(float dt, CStateManager& mgr) {
  DecayRiders(x318_riders, dt, mgr);
  x264_collisionRecoverDelay -= dt;
  x260_moveDelay -= dt;
  if (x260_moveDelay < 0.f) {
    x270_dragDelta = CVector3f::Zero();
    CTransform4f oldXf = GetTransform();
    CMotionState mState = GetMotionState();
    if (GetActive()) {
      rstl::vector< SRiders >::iterator it = x318_riders.begin();
      for (; it != x318_riders.end(); ++it) {
        if (const CPhysicsActor* act =
                TCastToConstPtr< CPhysicsActor >(mgr.ObjectById(it->x0_uid))) {
          CVector3f actPos = act->GetTranslation();
          CVector3f pos = GetTranslation();
          it->x8_transform.SetTranslation(GetTransform().TransposeRotate(actPos - pos));
        }
      }
      x27c_rotDelta = Move(dt, mgr);
    }

    CTransform4f newXf = GetTransform();
    x270_dragDelta = newXf.GetTranslation() - oldXf.GetTranslation();

    rstl::vector< SRiders > collidedRiders;
    MoveRiders(mgr, dt, GetActive(), x318_riders, collidedRiders, oldXf, newXf, x270_dragDelta,
               x27c_rotDelta);
    x356_27_squishedRider = false;
    if (!collidedRiders.empty()) {
      TEntityList nearList = BuildNearListFromRiders(mgr, collidedRiders);
      if (CGameCollision::DetectDynamicCollisionBoolean(*GetCollisionPrimitive(),
                                                        GetPrimitiveTransform(), nearList, mgr)) {
        SetMotionState(mState);
        Stop();
        x260_moveDelay = 0.035f;
        MoveRiders(mgr, dt, GetActive(), x318_riders, collidedRiders, newXf, oldXf, -x270_dragDelta,
                   x27c_rotDelta.BuildInverted());
        x270_dragDelta = CVector3f::Zero();
        SendScriptMsgs(kSS_Modify, mgr, kSM_None);
        x356_27_squishedRider = true;
      }
    }
  }
}


void CScriptPlatform::BuildSlaveList(CStateManager& mgr) {
  x328_slavesStatic.reserve(GetConnectionList().size());
  rstl::vector< SConnection >::const_iterator conn = GetConnectionList().begin();
  for (; conn != GetConnectionList().end(); ++conn) {
    if (conn->x0_state == kSS_Play && conn->x4_msg == kSM_Activate) {
      if (CActor* act = TCastToPtr<CActor>(mgr.ObjectById(mgr.GetIdForScript(conn->x8_objId)))) {
        act->AddMaterial(kMT_PlatformSlave, mgr);
        CTransform4f xf = act->GetTransform();
        xf.SetTranslation(act->GetTranslation() - GetTranslation());
        x328_slavesStatic.push_back(SRiders(act->GetUniqueId(), 0.166667f, xf));
      }
    } else if (conn->x0_state == kSS_InheritBounds && conn->x4_msg == kSM_Activate) {
      
      CStateManager::TIdListResult search = mgr.GetIdListForScript(conn->x8_objId);
      CStateManager::TIdList::const_iterator current = search.first;
      CStateManager::TIdList::const_iterator end = search.second;
      while (current != end) {
        if (TCastToConstPtr<CScriptTrigger>(mgr.GetObjectById(current->second))) {
          x354_boundsTrigger = current->second;
        }
        ++current;
      }
    }
  }
}
