#include "MetroidPrime/Player/CMorphBall.hpp"

#include "Collision/CMaterialList.hpp"
#include "Kyoto/Input/CFinalInput.hpp"
#include "MetroidPrime/CActorLights.hpp"
#include "MetroidPrime/CControlMapper.hpp"
#include "MetroidPrime/CWorldShadow.hpp"
#include "MetroidPrime/Player/CMorphBallShadow.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Particles/CElementGen.hpp"
#include "Kyoto/Particles/CParticleSwoosh.hpp"
#include "MetroidPrime/Tweaks/CTweakBall.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayer.hpp"

CMorphBall::CMorphBall(CPlayer& player, float radius)
: x0_player(player)
, x4_loadedModelId(-1)
, x8_ballGlowColorIdx(0)
, xc_radius(radius)
, x10_boostControlForce(CVector3f::Zero())
, x1c_controlForce(CVector3f::Zero())
, x28_tireMode(false)
, x2c_tireLeanAngle(0.f)
, x30_ballTiltAngle(0.f)
, x38_collisionSphere(CSphere(CVector3f(0.f, 0.f, radius), radius),
                      CMaterialList(kMT_Player, kMT_Solid, kMT_GroundCollider))
, x58_ballModel(GetMorphballModel(rstl::string_l("SamusBallAncs"), radius))
, x5c_ballModelShader(0)
, x60_spiderBallGlassModel(GetMorphballModel(rstl::string_l("SamusSpiderBallGalssCMDL"), radius))
, x64_spiderBallGlassModelShader(0)
, x68_lowPolyBallModel(GetMorphballModel(rstl::string_l("SamusBallLowPolyCMDL"), radius))
, x6c_lowPolyBallModelShader(0)
, x187c_spiderBallState(kSBS_Inactive)
, x1880_playerToSpiderNormal(CVector3f::Zero())
, x188c_spiderPullMovement(0.f)
, x1890_spiderTrackPoint(CVector3f::Zero())
, x189c_spiderInterpBetweenPoints(CVector3f::Zero())
, x18a8_spiderBetweenPoints(CVector3f::Zero())
, x18b4_linVelDamp(0.f)
, x18b8_angVelDamp(0.f)
, x18bc_spiderNearby(false)
, x18bd_touchingSpider(false)
, x18be_spiderBallSwinging(false)
, x18bf_spiderSwingInAir(true)
, x18c0_isSpiderSurface(false)
, x18c4_spiderSurfaceTransform(CTransform4f::Identity())
, x18f4_spiderSurfacePivotAngle(0.f)
, x18f8_spiderSurfacePivotTargetAngle(0.f)
, x18fc_refPullVel(0.f)
, x1900_playerToSpiderTrackDist(0.f)
, x1904_swingControlDir(0.f)
, x1908_swingControlTime(0.f)
, x190c_normSpiderSurfaceForces(0.f, 0.f)
, x1914_spiderTrackForceMag(0.f)
, x1918_spiderViewControlMag(0.f)
, x191c_damageTimer(0.f)
, x1920_spiderForcesReset(false)
, x1924_surfaceToWorld(CTransform4f::Identity())
, x1c0c_wakeEffectIdx(-1)
, x1c10_ballInnerGlowLight(kInvalidUniqueId) {}

CMorphBall::~CMorphBall() {}

float CMorphBall::GetBallRadius() const { return gpTweakPlayer->GetPlayerBallHalfExtent(); }
float CMorphBall::GetBallTouchRadius() const { return gpTweakBall->GetBallTouchRadius(); }

float CMorphBall::ForwardInput(const CFinalInput& input) const {
  if (!IsMovementAllowed()) {
    return 0.f;
  }

  const float forwardInput = ControlMapper::GetAnalogInput(ControlMapper::kC_Forward, input);
  const float backwardInput = ControlMapper::GetAnalogInput(ControlMapper::kC_Backward, input);

  return forwardInput - backwardInput;
}

void CMorphBall::ComputeBallMovement(const CFinalInput& input, CStateManager& mgr, float dt) {
  ComputeBoostBallMovement(input, mgr, dt);
  ComputeMarioMovement(input, mgr, dt);
}

bool CMorphBall::IsMovementAllowed() const {
  if (!gpTweakPlayer->GetMoveDuringFreeLook() &&
      (x0_player.IsInFreeLook() || x0_player.IsLookButtonHeld())) {
    return false;
  }

  if (x0_player.IsMorphBallTransitioning()) {
    return false;
  }

  return !(x1e00_disableControlCooldown > 0.f);
}

void CMorphBall::SetDamageTimer(const float time) { x191c_damageTimer = time; }

void CMorphBall::UpdateSpiderBall(const CFinalInput& input, CStateManager& mgr, float dt) {
  SetSpiderBallSwingingState(CheckForSwitchToSpiderBallSwinging(mgr));

  if (IsSpiderBallSwinging()) {
    ApplySpiderBallSwingingForces(input, mgr, dt);
  } else {
    ApplySpiderBallRollForces(input, mgr, dt);
  }
}
