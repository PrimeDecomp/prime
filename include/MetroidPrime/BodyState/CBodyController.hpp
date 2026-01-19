#ifndef _CBODYCONTROLLER
#define _CBODYCONTROLLER

#include "MetroidPrime/BodyState/CBodyStateCmdMgr.hpp"
#include "MetroidPrime/BodyState/CBodyStateInfo.hpp"

#include "Kyoto/Math/CQuaternion.hpp"

class CActor;
class CPASDatabase;
class CAnimPlaybackParms;
class CPASAnimParmData;
class CRandom16;
class CStateManager;

class CBodyController {
public:
  CBodyController(CActor& actor, float turnSpeed, EBodyType bodyType);

  CActor& GetOwner() const { return *x0_actor; }
  CBodyStateCmdMgr& CommandMgr() { return x4_cmdMgr; }
  const CBodyStateCmdMgr& GetCommandMgr() const { return x4_cmdMgr; }

  const CPASDatabase& GetPASDatabase() const;
  float GetAnimTimeRemaining() const;
  void SetDeltaRotation(const CQuaternion& q);
  void SetCurrentAnimation(const CAnimPlaybackParms& parms, bool loop, bool noTrans);
  void FaceDirection(const CVector3f& v0, float dt);
  void FaceDirection3D(const CVector3f& v0, float dt);
  void EnableAnimation(bool enable);
  void PlayBestAnimation(const CPASAnimParmData& parms, CRandom16& r);
  void LoopBestAnimation(const CPASAnimParmData& parms, CRandom16& r);
  bool HasIceBreakoutState();
  void Activate(CStateManager& mgr);
  void Update(float dt, CStateManager& mgr);
  void UpdateBody(float dt, CStateManager& mgr);
  void UpdateFrozenInfo(float dt, CStateManager& mgr);
  bool HasBodyState(pas::EAnimationState state) const;
  void SetLocomotionType(pas::ELocomotionType type);
  float GetPercentageFrozen() const;

  void SetPlaybackRate(float rate);
  void SetFallState(pas::EFallState state); // { x2f0_fallState = state; }
  pas::EFallState GetFallState() const;     // { return x2f0_fallState; }
  const CBodyStateInfo& GetBodyStateInfo() const { return x2a4_bodyStateInfo; }
  CBodyStateInfo& BodyStateInfo() { return x2a4_bodyStateInfo; }
  pas::ELocomotionType GetLocomotionType() const { return x2ec_locomotionType; }
  int GetCurrentAnimId() const { return x2f8_curAnim; }
  void SetTurnSpeed(float speed);
  bool IsAnimationOver() const { return x300_24_animationOver; }
  bool ShouldPlayDeathAnims() const { return x300_28_playDeathAnims; }
  float GetRestrictedFlyerMoveSpeed() const { return x330_restrictedFlyerMoveSpeed; }
  void SetRestrictedFlyerMoveSpeed(float speed) { x330_restrictedFlyerMoveSpeed = speed; }

  void Freeze(float intoFreezeDur, float frozenDur, float breakoutDur);
  void UnFreeze();
  void FrozenBreakout();
  void MultiplyPlaybackRate(float scale);
  void SetOnFire(float duration);
  void DouseFlames();
  bool IsFrozen() const { return x300_26_frozen; }
  void SetElectrocuting(float duration);
  bool IsElectrocuting() const { return x324_electrocutionDur > 0.f; }
  bool IsOnFire() const { return x320_fireDur > 0.f; }
  void StopElectrocution();

private:
  CActor* x0_actor;
  CBodyStateCmdMgr x4_cmdMgr;
  CBodyStateInfo x2a4_bodyStateInfo;
  CQuaternion x2dc_rot;
  pas::ELocomotionType x2ec_locomotionType;
  pas::EFallState x2f0_fallState;
  EBodyType x2f4_bodyType;
  int x2f8_curAnim;
  float x2fc_turnSpeed;
  bool x300_24_animationOver : 1;
  bool x300_25_active : 1;
  bool x300_26_frozen : 1;
  bool x300_27_hasBeenFrozen : 1;
  bool x300_28_playDeathAnims : 1;
  float x304_intoFreezeDur;
  float x308_frozenDur;
  float x30c_breakoutDur;
  float x310_timeFrozen;
  CVector3f x314_backedUpForce;
  float x320_fireDur;
  float x324_electrocutionDur;
  float x328_timeOnFire;
  float x32c_timeElectrocuting;
  float x330_restrictedFlyerMoveSpeed;
};
CHECK_SIZEOF(CBodyController, 0x334)

#endif // _CBODYCONTROLLER
