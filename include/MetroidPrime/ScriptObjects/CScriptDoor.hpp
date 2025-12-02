#ifndef _CSCRIPTDOOR
#define _CSCRIPTDOOR

#include "MetroidPrime/CPhysicsActor.hpp"

class CScriptDoor : public CPhysicsActor {
public:
  enum EDoorState {
    kDS_Open,
    kDS_Close,
    kDS_Ready,
  };

  enum EDoorOpenCondition {
    kDOC_NotReady,
    kDOC_Loading,
    kDOC_Ready,
  };

  CScriptDoor(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
              const CTransform4f& xf, const CModelData& modelData,
              const CActorParameters& actorParameters, const CVector3f& orbitPosition,
              const CAABox& bounds, bool active, bool open, bool projectilesCollide,
              float animationLength, bool ballDoor);

  void SetDoorAnimation(EDoorState state);

  rstl::optional_object< CAABox > GetTouchBounds() const override;

  rstl::optional_object< CAABox > GetProjectileBounds() const;
  CVector3f GetOrbitPosition(const CStateManager& mgr) const override;

  EDoorOpenCondition GetDoorOpenCondition(CStateManager& mgr);
  void OpenDoor(TUniqueId uid, CStateManager& mgr);

  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId other, CStateManager& mgr) override;

  const TUniqueId GetDockID() const { return mDockId; }
  bool IsOpen() const { return mIsOpen; }
  void SetDoClose(const bool close) { mDoClose = close; }

private:
  float mAnimLength;
  float mAnimTime;
  EDoorState mDoorState;
  CAABox x264_;
  TUniqueId mPartner1;
  TUniqueId mPartner2;
  TUniqueId mPrevDoor;
  TUniqueId mDockId;
  CAABox mModelBounds;
  CVector3f mOrbitPos;

  bool mClosing : 1;
  bool mWasOpen : 1;
  bool mIsOpen : 1;
  bool mConditionsMet : 1;
  bool mProjectilesCollide : 1;
  bool mBallDoor : 1;
  bool mDoClose : 1;
};

#endif // _CSCRIPTDOOR
