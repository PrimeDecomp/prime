#ifndef _CSCRIPTTRIGGER
#define _CSCRIPTTRIGGER

#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CDamageInfo.hpp"
#include "rstl/optional_object.hpp"
// #include "MetroidPrime/Shaders/CAABoxShader.hpp"

#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CVector3f.hpp"

// TODO - Phil: Figure out what each of the DetectProjectiles actually mean
enum ETriggerFlags {
  kTrF_None = 0,
  kTrF_DetectPlayer = (1 << 0),
  kTrF_DetectAI = (1 << 1),
  kTrF_DetectProjectiles1 = (1 << 2),
  kTrF_DetectProjectiles2 = (1 << 3),
  kTrF_DetectProjectiles3 = (1 << 4),
  kTrF_DetectProjectiles4 = (1 << 5),
  kTrF_DetectBombs = (1 << 6),
  kTrF_DetectPowerBombs = (1 << 7),
  kTrF_DetectProjectiles5 = (1 << 8),
  kTrF_DetectProjectiles6 = (1 << 9),
  kTrF_DetectProjectiles7 = (1 << 10),
  kTrF_KillOnEnter = (1 << 11),
  kTrF_DetectMorphedPlayer = (1 << 12),
  kTrF_UseCollisionImpulses = (1 << 13),
  kTrF_DetectCamera = (1 << 14),
  kTrF_UseBooleanIntersection = (1 << 15),
  kTrF_DetectUnmorphedPlayer = (1 << 16),
  kTrF_BlockEnvironmentalEffects = (1 << 17)
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

protected:
  rstl::list< CObjectTracker > xe8_inhabitants;
  CDamageInfo x100_damageInfo;
  CVector3f x11c_forceField;
  float x128_forceMagnitude;
  ETriggerFlags x12c_flags;
  CAABox x130_bounds;
  bool x148_24_detectCamera : 1;
  bool x148_25_camSubmerged : 1;
  bool x148_26_deactivateOnEntered : 1;
  bool x148_27_deactivateOnExited : 1;
  bool x148_28_playerTriggerProc : 1;
  bool x148_29_didPhazonDamage : 1;

public:
  CScriptTrigger(TUniqueId, const rstl::string&, const CEntityInfo&, const CVector3f&,
                 const CAABox&, const CDamageInfo&, const CVector3f&, ETriggerFlags, bool, bool,
                 bool);

  void Accept(IVisitor& visitor) override;
  void Think(float, CStateManager&) override;
  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&) override;
  virtual void InhabitantRejected(CActor&, CStateManager&) {}
  virtual void InhabitantExited(CActor&, CStateManager&) {}
  virtual void InhabitantIdle(CActor&, CStateManager&) {}
  virtual void InhabitantAdded(CActor&, CStateManager&) {}
  const CObjectTracker* FindObject(TUniqueId);
  void UpdateInhabitants(CStateManager&);
  const rstl::list< CObjectTracker >& GetInhabitants() const;
  rstl::optional_object< CAABox > GetTouchBounds() const override;
  void Touch(CActor&, CStateManager&) override;
  const CAABox& GetTriggerBoundsOR() const { return x130_bounds; }
  CAABox GetTriggerBoundsWR() const;
  const CDamageInfo& GetDamageInfo() const { return x100_damageInfo; }
  ETriggerFlags GetTriggerFlags() const { return x12c_flags; }
  float GetForceMagnitude() const { return x128_forceMagnitude; }
  const CVector3f& GetForceVector() const { return x11c_forceField; }
  void SetForceVector(const CVector3f& force) {
    x11c_forceField = force;
    x128_forceMagnitude = x11c_forceField.Magnitude();
  }
  bool IsPlayerTriggerProc() const { return x148_28_playerTriggerProc; }
  void DebugDraw();
private:

  bool getDidPhazonDamage() const { return x148_29_didPhazonDamage; }
  bool getPlayerTriggerProc() const { return x148_28_playerTriggerProc; }
};

#endif // _CSCRIPTTRIGGER
