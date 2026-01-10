#ifndef _CGRAPPLEARM
#define _CGRAPPLEARM

#include "types.h"

#include "Kyoto/Animation/CAnimCharacterSet.hpp"
#include "Kyoto/Audio/CSfxHandle.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "MetroidPrime/CModelData.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"

#include <rstl/optional_object.hpp>
#include <rstl/pair.hpp>
#include <rstl/single_ptr.hpp>

class CVector3f;
class CModelData;
class CStateManager;
class CFrustumPlanes;
class CGunController;
class CGenDescription;
class CSwooshDescription;
class CElementGen;
class CParticleSwoosh;
class CRainSplashGenerator;

class CGrappleArm {
public:
  enum EArmState {
    kAS_IntoGrapple,
    kAS_IntoGrappleIdle,
    kAS_FireGrapple,
    kAS_Three,
    kAS_ConnectGrapple,
    kAS_Five,
    kAS_Connected,
    kAS_Seven,
    kAS_OutOfGrapple,
    kAS_GunControllerAnimation,
    kAS_Done
  };

  CGrappleArm(const CVector3f& scale);
  ~CGrappleArm();

  void PreRender(CStateManager& mgr, const CFrustumPlanes& frustum, const CVector3f& camPos);
  void EnterFidget(CStateManager& mgr, int a, int b, int c);
  void EnterComboFire(int a, CStateManager& mgr);
  void ReturnToDefault(CStateManager& mgr, float dt, bool setState);
  void EnterIdle(CStateManager& mgr);
  void EnterStruck(CStateManager&, float, bool, bool);
  void DisconnectGrappleBeam();
  void RenderGrappleBeam(const CStateManager&, const CVector3f&) const;

  void SetTransform(const CTransform4f& xf) { x220_xf = xf; }

  EArmState GetAnimState() const { return x334_animState; }
  void SetAnimState(const EArmState state) { x334_animState = state; }
  const bool GetActive() const { return x3b2_24_active; }
  void SetActive(const bool active) { x3b2_24_active = active; }
  const bool BeamActive() const { return x3b2_25_beamActive; }
  void SetBeamActive(const bool active) { x3b2_25_beamActive = active; }
  const bool IsArmMoving() const { return x3b2_27_armMoving; }
  void SetIsArmMoving(const bool active) { x3b2_27_armMoving = active; }
  const bool IsGrappling() const { return x3b2_28_isGrappling; }
  void SetIsGrappling(const bool active) { x3b2_28_isGrappling = active; }
  const bool IsSuitLoading() const { return x3b2_29_suitLoading; }
  void SetIsSuitLoading(const bool active) { x3b2_29_suitLoading = active; }

  void BuildSuitDependencyList();
  void LoadAnimations();

private:
  static float kPhaseDelta;
  static float kAmplitudeX;
  static float kAmplitudeZ;
  static float kMetresPerSecond;
  rstl::optional_object< CModelData > x0_grappleArmModel;
  rstl::optional_object< CModelData > x50_grappleArmSkeletonModel;
  CModelData xa0_grappleGearModel;
  CModelData xec_grapNoz1Model;
  CModelData x138_grapNoz2Model;
  TToken< CAnimCharacterSet > x184_grappleArm;
  rstl::vector< CToken > x18c_anims;
  rstl::reserved_vector< rstl::vector< CToken >, 8 > x19c_suitDeps;
  CTransform4f x220_xf;
  CTransform4f x250_grapLocatorXf;
  CTransform4f x280_grapNozLoc1Xf;
  CTransform4f x2b0_grapNozLoc2Xf;
  CTransform4f x2e0_auxXf;
  CVector3f x310_grapplePointPos;
  CVector3f x31c_scale;
  rstl::single_ptr< CGunController > x328_gunController;
  CSfxHandle x32c_grappleLoopSfx;
  CSfxHandle x330_swooshSfx;
  EArmState x334_animState;
  float x338_beamT;
  float x33c_beamDist;
  float x340_anglePhase;
  float x344_xAmplitude;
  float x348_yAmplitude;
  rstl::pair< ushort, CSfxHandle > x34c_animSfx;
  TLockedToken< CGenDescription > x354_grappleSegmentDesc;
  TLockedToken< CGenDescription > x360_grappleClawDesc;
  TLockedToken< CGenDescription > x36c_grappleHitDesc;
  TLockedToken< CGenDescription > x378_grappleMuzzleDesc;
  TLockedToken< CSwooshDescription > x384_grappleSwooshDesc;
  rstl::single_ptr< CElementGen > x390_grappleSegmentGen;
  rstl::single_ptr< CElementGen > x394_grappleClawGen;
  rstl::single_ptr< CElementGen > x398_grappleHitGen;
  rstl::single_ptr< CElementGen > x39c_grappleMuzzleGen;
  rstl::single_ptr< CParticleSwoosh > x3a0_grappleSwooshGen;
  rstl::single_ptr< CRainSplashGenerator > x3a4_rainSplashGenerator;
  CPlayerState::EPlayerSuit x3a8_loadedSuit;
  uint x3ac_pitchBend;
  short x3b0_rumbleHandle;
  bool x3b2_24_active : 1;
  bool x3b2_25_beamActive : 1;
  bool x3b2_26_grappleHit : 1;
  bool x3b2_27_armMoving : 1;
  bool x3b2_28_isGrappling : 1;
  bool x3b2_29_suitLoading : 1;
};
CHECK_SIZEOF(CGrappleArm, 0x3b4)

#endif // _CGRAPPLEARM
