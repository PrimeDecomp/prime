#ifndef _CSCRIPTTRIGGER
#define _CSCRIPTTRIGGER

#include "MetroidPrime/CActor.hpp"

#include "MetroidPrime/CDamageInfo.hpp"

#include "rstl/list.hpp"

enum ETriggerFlags {
  kTFL_None = 0,
  kTFL_DetectPlayer = (1 << 0),
  kTFL_DetectAI = (1 << 1),
  kTFL_DetectProjectiles1 = (1 << 2),
  kTFL_DetectProjectiles2 = (1 << 3),
  kTFL_DetectProjectiles3 = (1 << 4),
  kTFL_DetectProjectiles4 = (1 << 5),
  kTFL_DetectBombs = (1 << 6),
  kTFL_DetectPowerBombs = (1 << 7),
  kTFL_DetectProjectiles5 = (1 << 8),
  kTFL_DetectProjectiles6 = (1 << 9),
  kTFL_DetectProjectiles7 = (1 << 10),
  kTFL_KillOnEnter = (1 << 11),
  kTFL_DetectMorphedPlayer = (1 << 12),
  kTFL_UseCollisionImpulses = (1 << 13),
  kTFL_DetectCamera = (1 << 14),
  kTFL_UseBooleanIntersection = (1 << 15),
  kTFL_DetectUnmorphedPlayer = (1 << 16),
  kTFL_BlockEnvironmentalEffects = (1 << 17)
};

class CScriptTrigger : public CActor {
public:
  class CObjectTracker {
    TUniqueId x0_id;

  public:
    explicit CObjectTracker(TUniqueId id) : x0_id(id) {}

    TUniqueId GetObjectId() const { return x0_id; }
    bool operator==(const CObjectTracker& other) const { return x0_id == other.x0_id; }
  };

  rstl::list< CObjectTracker > xe8_inhabitants;
  CDamageInfo x100_damageInfo;
  CVector3f x11c_forceField;
  float x128_forceMagnitude;
  uint x12c_flags;
  CAABox x130_bounds;
  bool x148_24_detectCamera : 1;
  bool x148_25_camSubmerged : 1;
  bool x148_26_deactivateOnEntered : 1;
  bool x148_27_deactivateOnExited : 1;
  bool x148_28_playerTriggerProc : 1;
  bool x148_29_didPhazonDamage : 1;

public:
  CScriptTrigger(TUniqueId, const rstl::string& name, const CEntityInfo& info, const CVector3f& pos,
                 const CAABox&, const CDamageInfo& dInfo, const CVector3f& orientedForce,
                 uint triggerFlags, bool active, bool deactivateOnEntered, bool deactivateOnExited);
  ~CScriptTrigger();

  void Touch(CActor&, CStateManager&);
  CAABox GetTriggerBoundsWR() const;
  rstl::optional_object<CAABox> GetTouchBounds() const;
  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&);
  void Think(float, CStateManager&);
  void UpdateInhabitants(float, CStateManager&);
  const rstl::list<CObjectTracker>& GetInhabitants() const;
  const CScriptTrigger::CObjectTracker* FindObject(TUniqueId);
  void Accept(IVisitor& visitor);
  virtual void InhabitantAdded(CActor&, CStateManager&);
  virtual void InhabitantIdle(CActor&, CStateManager&);
  virtual void InhabitantExited(CActor&, CStateManager&);
  virtual void InhabitantRejected(CActor&, CStateManager&);
};

#endif // _CSCRIPTTRIGGER
