#ifndef _CBODYSTATEINFO
#define _CBODYSTATEINFO

#include "Kyoto/Animation/CharacterCommon.hpp"

#include "rstl/map.hpp"
#include "rstl/auto_ptr.hpp"
#include "rstl/vector.hpp"

class CAdditiveBodyState;
class CBodyController;
class CBodyState;
class CActor;

class CBodyStateInfo {
public:
  CBodyStateInfo(CActor& actor, EBodyType type);
  ~CBodyStateInfo();

  void SetBodyController(CBodyController* controller) { x18_bodyController = controller; }
  float GetMaximumPitch() const { return x30_maxPitch; }
  void SetMaximumPitch(float pitch) { x30_maxPitch = pitch; }
  bool GetLocoAnimChangeAtEndOfAnimOnly() const { return x34_24_changeLocoAtEndOfAnimOnly; }
  void SetLocoAnimChangeAtEndOfAnimOnly(bool s) { x34_24_changeLocoAtEndOfAnimOnly = s; }
  pas::EAnimationState GetCurrentStateId() const { return x14_state; }
  pas::EAnimationState GetCurrentAdditiveStateId() const { return x2c_additiveState; }

  void SetState(pas::EAnimationState s);
  const CBodyState* GetCurrentState() const;
  CBodyState* GetCurrentState();
  bool ApplyHeadTracking() const;
  void SetAdditiveState(pas::EAnimationState s);
  CAdditiveBodyState* GetCurrentAdditiveState();
  float GetMaxSpeed() const;
  float GetLocomotionSpeed(pas::ELocomotionAnim anim) const;
  
private:
  friend class CBodyController;
  rstl::map< int, CBodyState* > x0_stateMap;
  pas::EAnimationState x14_state;
  CBodyController* x18_bodyController;
  rstl::vector< rstl::pair< int, rstl::auto_ptr< CAdditiveBodyState > > > x1c_additiveStates;
  pas::EAnimationState x2c_additiveState;
  float x30_maxPitch;
  bool x34_24_changeLocoAtEndOfAnimOnly : 1;

  CBodyState* SetupRestrictedFlyerBodyStates(int stateId, CActor& actor);
  CBodyState* SetupNewFlyerBodyStates(int stateId, CActor& actor);
  CBodyState* SetupWallWalkerBodyStates(int stateId, CActor& actor);
  CBodyState* SetupFlyerBodyStates(int stateId, CActor& actor);
  CBodyState* SetupPitchableFlyerBodyStates(int, CActor&);
  CBodyState* SetupRestrictedBodyStates(int stateId, CActor& actor);
  CBodyState* SetupBiPedalBodyStates(int stateId, CActor& actor);
};

#endif // _CBODYSTATEINFO
