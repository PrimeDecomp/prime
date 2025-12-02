#include "MetroidPrime/ScriptObjects/CScriptDoor.hpp"

#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CAnimPlaybackParms.hpp"
#include "MetroidPrime/CEntity.hpp"
#include "MetroidPrime/CEntityInfo.hpp"
#include "MetroidPrime/CGameArea.hpp"
#include "MetroidPrime/CMapWorldInfo.hpp"
#include "MetroidPrime/CObjectList.hpp"
#include "MetroidPrime/CPhysicsActor.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Cameras/CBallCamera.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/ScriptObjects/CScriptDock.hpp"
#include "MetroidPrime/TCastTo.hpp"
#include "MetroidPrime/TGameTypes.hpp"

CScriptDoor::CScriptDoor(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                         const CTransform4f& xf, const CModelData& modelData,
                         const CActorParameters& actorParameters, const CVector3f& orbitPosition,
                         const CAABox& bounds, const bool active, const bool open,
                         const bool projectilesCollide, const float animationLength,
                         const bool ballDoor)
: CPhysicsActor(uid, active, name, info, xf, modelData,
                open ? CMaterialList(kMT_Solid, kMT_Immovable, kMT_Orbit)
                     : CMaterialList(kMT_Solid, kMT_Immovable, kMT_Orbit, kMT_Occluder),
                bounds, SMoverData(1.f), actorParameters, 0.3f, 0.1f)
, mAnimLength(animationLength)
, mAnimTime(0.f)
, mDoorState(kDS_Open)
, x264_(GetBoundingBox())
, mPartner1(kInvalidUniqueId)
, mPartner2(kInvalidUniqueId)
, mPrevDoor(kInvalidUniqueId)
, mDockId(kInvalidUniqueId)
, mModelBounds(modelData.GetBounds(xf.GetRotation()))
, mOrbitPos(orbitPosition)
, mClosing(false)
, mWasOpen(open)
, mIsOpen(open)
, mConditionsMet(false)
, mProjectilesCollide(projectilesCollide)
, mBallDoor(ballDoor)
, mDoClose(false) {
  SetThermalFlags(kTF_Cold);

  if (open) {
    SetDoorAnimation(kDS_Open);
  }

  SetMass(0.f);
}

rstl::optional_object< CAABox > CScriptDoor::GetTouchBounds() const {
  if (GetActive() && GetMaterialList().HasMaterial(kMT_Solid)) {
    return CPhysicsActor::GetBoundingBox();
  }

  return rstl::optional_object_null();
}

rstl::optional_object< CAABox > CScriptDoor::GetProjectileBounds() const {
  if (mProjectilesCollide) {
    return CAABox(mModelBounds.GetMinPoint() + GetTranslation(),
                  mModelBounds.GetMaxPoint() + GetTranslation());
  }

  return rstl::optional_object_null();
}

CVector3f CScriptDoor::GetOrbitPosition(const CStateManager& mgr) const {
  return GetTranslation() + mOrbitPos;
}

CScriptDoor::EDoorOpenCondition CScriptDoor::GetDoorOpenCondition(CStateManager& mgr) {
  return kDOC_Loading;
}

void CScriptDoor::OpenDoor(TUniqueId uid, CStateManager& mgr) {
  mgr.MapWorldInfo()->SetDoorVisited(mgr.GetEditorIdForUniqueId(uid), true);
  mIsOpen = true;
  mWasOpen = true;
  mConditionsMet = false;
  mPartner1 = kInvalidUniqueId;
  mPartner2 = kInvalidUniqueId;

  if (const CScriptDoor* door = TCastToConstPtr< CScriptDoor >(mgr.GetObjectById(uid))) {
    mPartner1 = door->GetUniqueId();
  }

  SetDoorAnimation(kDS_Open);

  if (mPartner1 != kInvalidUniqueId) {
    SendScriptMsgs(kSS_MaxReached, mgr, kSM_None);
  } else {
    SendScriptMsgs(kSS_Open, mgr, kSM_None);
  }

  if (const CScriptDock* dock1 = TCastToConstPtr< CScriptDock >(mgr.GetObjectById(mDockId))) {
    CObjectList& list = mgr.ObjectListById(kOL_PlatformAndDoor);
    for (int idx = list.GetFirstObjectIndex(); idx != -1; idx = list.GetNextObjectIndex(idx)) {
      if (CScriptDoor* door = TCastToPtr< CScriptDoor >(list[idx])) {
        if (door->GetUniqueId() == uid) {
          continue;
        }

        if (const CScriptDock* dock2 =
                TCastToConstPtr< CScriptDock >(mgr.GetObjectById(door->GetDockID()))) {
          if (dock2->GetAreaId() == dock1->GetCurrentConnectedAreaId(mgr) &&
              dock2->GetCurrentConnectedAreaId(mgr) == dock1->GetAreaId()) {
            mPartner2 = door->GetUniqueId();
            mgr.DeliverScriptMsg(door, GetUniqueId(), kSM_Open);
            break;
          }
        }
      }
    }
  }

  if (mPartner1 == kInvalidUniqueId && mPartner2 == kInvalidUniqueId) {

    rstl::vector< SConnection >::const_iterator it = GetConnectionList().begin();
    for (; it != GetConnectionList().end(); ++it) {
      if (it->x4_msg != kSM_Open) {
        continue;
      }

      if (const CScriptDoor* door =
              TCastToConstPtr< CScriptDoor >(mgr.GetObjectById(mgr.GetIdForScript(it->x8_objId)))) {
        mPartner2 = door->GetUniqueId();
        break;
      }
    }
  }
}

void CScriptDoor::SetDoorAnimation(EDoorState state) {
  mDoorState = state;
  if (HasAnimation()) {
    AnimationData()->SetAnimation(CAnimPlaybackParms(static_cast< int >(state), -1, 1.f, true),
                                  false);
  }
}

void CScriptDoor::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) {
  switch (msg) {
  case kSM_Close: {
    if (!GetActive()) {
      return;
    }

    if (mPartner1 == kInvalidUniqueId || mPartner1 == uid) {
      if (mIsOpen) {
        if (mPartner2 != kInvalidUniqueId) {
          // lol, this is its actual name
          static int i = 0;
          if (CEntity* ent = mgr.ObjectById(mPartner2)) {
            ++i;
            mgr.DeliverScriptMsg(ent, GetUniqueId(), kSM_Close);
            --i;
          }
        }
        mIsOpen = false;
        SetDoorAnimation(kDS_Close);
        mgr.GetCameraManager()->BallCamera()->DoorClosing(GetUniqueId());
      } else if (mConditionsMet) {
        mConditionsMet = false;
        SendScriptMsgs(kSS_Closed, mgr, kSM_None);
      }
    }
    break;
  }
  case kSM_Action: {
    if (mPartner1 != kInvalidUniqueId) {
      if (CScriptDoor* door = TCastToPtr< CScriptDoor >(mgr.ObjectById(mPartner1))) {
        if (door->IsOpen()) {
          mDoClose = true;
          mgr.DeliverScriptMsg(door, GetUniqueId(), kSM_Close);
          door->SetDoClose(true);
        }
      }
    } else if (mIsOpen) {
      mDoClose = true;
      if (CScriptDoor* door = TCastToPtr< CScriptDoor >(mgr.ObjectById(mPartner2))) {
        mgr.DeliverScriptMsg(door, GetUniqueId(), kSM_Close);
        door->SetDoClose(true);
      }
      mIsOpen = false;
      SetDoorAnimation(kDS_Close);
      mgr.GetCameraManager()->BallCamera()->DoorClosing(GetUniqueId());
    }
    break;
  }
  case kSM_Open: {
    if (!GetActive()) {
      return;
    }

    if (!mIsOpen) {

      const EDoorOpenCondition cond = TCastToConstPtr< CScriptDoor >(mgr.GetObjectById(uid))
                                          ? kDOC_Ready
                                          : GetDoorOpenCondition(mgr);

      switch (cond) {
      case kDOC_Loading:
        mConditionsMet = true;
        mPrevDoor = uid;
        break;
      case kDOC_Ready:
        OpenDoor(uid, mgr);
        break;
      case kDOC_NotReady:
      default:
        mWasOpen = false;
        mClosing = true;
        break;
      }
    }
    break;
  }
  case kSM_InitializedInArea: {
    rstl::vector< SConnection >::const_iterator it = GetConnectionList().begin();
    for (; it != GetConnectionList().end(); ++it) {
      if (it->x4_msg != kSM_Increment) {
        continue;
      }

      if (const CScriptDock* dock =
              TCastToConstPtr< CScriptDock >(mgr.GetObjectById(mgr.GetIdForScript(it->x8_objId)))) {
        mDockId = dock->GetUniqueId();
        break;
      }
    }
    break;
  }
  case kSM_SetToZero:
    mProjectilesCollide = true;
    mgr.MapWorldInfo()->SetDoorVisited(mgr.GetEditorIdForUniqueId(GetUniqueId()), true);
    break;
  case kSM_SetToMax:
    mProjectilesCollide = false;
    break;
  default:
    CPhysicsActor::AcceptScriptMsg(msg, uid, mgr);
    break;
  }
}
