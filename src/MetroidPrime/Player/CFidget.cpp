#include "MetroidPrime/Player/CFidget.hpp"

#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"

static float kMinorFidgetDelay = 20.f;
static float kMajorFidgetDelay = 20.f;

CFidget::CFidget()
: x0_state(kS_NoFidget)
, x4_type(SamusGun::kFT_Invalid)
, x8_delayTriggerBits(0)
, xc_animSet(-1)
, x10_delayTimerEnableBits(3)
, x14_timeSinceFire(0.f)
, x18_timeSinceStrikeCooldown(0.f)
, x1c_timeSinceUnmorph(0.f)
, x20_timeSinceBobbing(0.f)
, x24_minorDelayTimer(0.f)
, x28_majorDelayTimer(0.f)
, x2c_holsterTimeSinceFire(0.f)
, x30_timeUntilHolster(105.f)
, x34_24_loading(false) {}

void CFidget::ResetAll() {
  x0_state = kS_NoFidget;
  x4_type = SamusGun::kFT_Invalid;
  x18_timeSinceStrikeCooldown = 0.f;
  x1c_timeSinceUnmorph = 0.f;
  x14_timeSinceFire = 0.f;
  x24_minorDelayTimer = 0.f;
  x28_majorDelayTimer = 0.f;
  x2c_holsterTimeSinceFire = 0.f;
  x8_delayTriggerBits = 0;
  xc_animSet = -1;
  x10_delayTimerEnableBits = 3;
  x34_24_loading = false;
}

void CFidget::ResetMinor() { x0_state = kS_NoFidget; }

CFidget::EState CFidget::Update(int fireButtonStates, bool bobbing, bool inStrikeCooldown, float dt,
                                CStateManager& mgr) {
  if (x0_state) {
    switch (x0_state) {
    case kS_MinorFidget:
      return x34_24_loading ? kS_Loading : kS_StillMinorFidget;
    case kS_MajorFidget:
      return x34_24_loading ? kS_Loading : kS_StillMajorFidget;
    case kS_HolsterBeam:
      return x34_24_loading ? kS_Loading : kS_StillHolsterBeam;
    default:
      x0_state = kS_NoFidget;
      break;
    }
  }

  if (fireButtonStates != 0) {
    x14_timeSinceFire = 0.f;
    x2c_holsterTimeSinceFire = 0.f;
  } else {
    if (x14_timeSinceFire < 6.f)
      x14_timeSinceFire += dt;
    if (x2c_holsterTimeSinceFire < x30_timeUntilHolster + 1.f)
      x2c_holsterTimeSinceFire += dt;
  }

  if (inStrikeCooldown)
    x18_timeSinceStrikeCooldown = 0.f;
  else if (x18_timeSinceStrikeCooldown < 11.f)
    x18_timeSinceStrikeCooldown += dt;

  if (mgr.GetPlayer()->GetMorphballTransitionState() == CPlayer::kMS_Unmorphed) {
    if (x1c_timeSinceUnmorph < 21.f)
      x1c_timeSinceUnmorph += dt;
  } else {
    x1c_timeSinceUnmorph = 0.f;
  }

  if (bobbing)
    x20_timeSinceBobbing = 0.f;
  else if (x20_timeSinceBobbing < 21.f)
    x20_timeSinceBobbing += dt;

  u32 pendingTriggerBits = 0;
  if (x0_state == kS_NoFidget) {
    if ((x10_delayTimerEnableBits & 0x1) != 0) {
      x24_minorDelayTimer += dt;
      if (x24_minorDelayTimer > kMinorFidgetDelay) {
        pendingTriggerBits |= 0x1;
        x24_minorDelayTimer = 0.f;
      }
    }

    if ((x10_delayTimerEnableBits & 0x2) != 0) {
      x28_majorDelayTimer += dt;
      if (x28_majorDelayTimer > kMajorFidgetDelay) {
        pendingTriggerBits |= 0x2;
        x28_majorDelayTimer = 0.f;
      }
    }
  }

  if (x2c_holsterTimeSinceFire > x30_timeUntilHolster) {
    x0_state = kS_HolsterBeam;
  } else {
    if (x18_timeSinceStrikeCooldown > 10.f && x1c_timeSinceUnmorph > 20.f &&
        x20_timeSinceBobbing > 20.f) {
      if ((pendingTriggerBits & 0x1) != 0)
        x8_delayTriggerBits |= 0x1;
      else if ((pendingTriggerBits & 0x2) != 0)
        x8_delayTriggerBits |= 0x2;
    }

    if ((x8_delayTriggerBits & 0x3) == 0x3) {
      EState newState = kS_MinorFidget;
      x0_state = 50 < (mgr.Random()->Next() % 100) ? kS_MajorFidget : kS_MinorFidget;
    } else if ((x8_delayTriggerBits & 0x1)) {
      x0_state = kS_MinorFidget;
    } else {
      if ((x8_delayTriggerBits & 0x2)) {
        x0_state = kS_MajorFidget;
      } else {
        x0_state = kS_NoFidget;
      }
    }
  }

  switch (x0_state) {
  case kS_MinorFidget:
    x34_24_loading = true;
    x10_delayTimerEnableBits = 2;
    x8_delayTriggerBits &= ~0x1;
    kMinorFidgetDelay = mgr.Random()->Range(20.f, 29.f);
    x4_type = SamusGun::kFT_Minor;
    xc_animSet = mgr.Random()->Range(0, 4);
    break;
  case kS_MajorFidget:
    x34_24_loading = true;
    x10_delayTimerEnableBits = 1;
    x8_delayTriggerBits &= ~0x2;
    kMajorFidgetDelay = mgr.Random()->Range(20.f, 30.f);
    x4_type = SamusGun::kFT_Major;
    xc_animSet = mgr.Random()->Range(0, 5);
    break;
  case kS_HolsterBeam:
    x4_type = SamusGun::kFT_Minor;
    x34_24_loading = true;
    xc_animSet = 0;
    break;
  default:
    break;
  }

  return x0_state;
}
