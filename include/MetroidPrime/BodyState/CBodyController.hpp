#ifndef _CBODYCONTROLLER
#define _CBODYCONTROLLER

#include "MetroidPrime/BodyState/CBodyStateCmdMgr.hpp"
#include "MetroidPrime/BodyState/CBodyStateInfo.hpp"

#include "Kyoto/Math/CQuaternion.hpp"

class CActor;
class CPASDatabase;
class CQuaternion;
class CAnimPlaybackParms;

class CBodyController {

public:
  const CPASDatabase& GetPASDatabase() const;
  
  CActor& GetOwner() const { return x0_actor; }
  CBodyStateCmdMgr& CommandMgr() { return x4_cmdMgr; }
  const CBodyStateCmdMgr& GetCommandMgr() const { return x4_cmdMgr; }
  
  float GetAnimTimeRemaining() const;
  void SetDeltaRotation(const CQuaternion& q);
  void SetCurrentAnimation(const CAnimPlaybackParms& parms, bool loop, bool noTrans);

  bool IsAnimationOver() const { return x300_24_animationOver; }
  pas::ELocomotionType GetLocomotionType() const { return x2ec_locomotionType; }

private:
  CActor& x0_actor;
  CBodyStateCmdMgr x4_cmdMgr;
  CBodyStateInfo x2a4_bodyStateInfo;
  CQuaternion x2dc_rot;
  pas::ELocomotionType x2ec_locomotionType ;
  pas::EFallState x2f0_fallState ;
  EBodyType x2f4_bodyType;
  int x2f8_curAnim ;
  float x2fc_turnSpeed;
  bool x300_24_animationOver : 1;
};

#endif // _CBODYCONTROLLER
