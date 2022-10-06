#ifndef _CRUMBLEVOICE_HPP
#define _CRUMBLEVOICE_HPP

#include "types.h"

#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

enum ERumbleFxId {
  kRFX_Zero = 0,
  kRFX_One = 1,
  kRFX_CameraShake = 6,
  kRFX_EscapeSequenceShake = 7,
  kRFX_PlayerBump = 11,
  kRFX_PlayerGunCharge = 12,
  kRFX_PlayerMissileFire = 13,
  kRFX_PlayerGrappleFire = 14,
  kRFX_PlayerLand = 15,
  kRFX_PlayerGrappleSwoosh = 17,
  kRFX_IntroBossProjectile = 19,
  kRFX_Twenty = 20,
  kRFX_TwentyOne = 21,
  kRFX_TwentyTwo = 22,
  kRFX_TwentyThree = 23
};

enum ERumblePriority {
  kRP_None = 0,
  kRP_One = 1,
  kRP_Two = 2,
  kRP_Three = 3,
};

struct SAdsrData {
  SAdsrData();
  SAdsrData(float attackGain, float autoReleaseDur, float attackDur, float decayDur,
            float sustainGain, float releaseDur, bool hasSustain, bool autoRelease);

  f32 x0_attackGain;
  f32 x4_autoReleaseDur;
  f32 x8_attackDur;
  f32 xc_decayDur;
  f32 x10_sustainGain;
  f32 x14_releaseDur;
  bool x18_24_hasSustain : 1;
  bool x18_25_autoRelease : 1;
};

struct SAdsrDelta {
  enum EPhase {
    kP_Stop,
    kP_PrePulse,
    kP_Attack,
    kP_Decay,
    kP_Sustain,
    kP_Release,
  };

  SAdsrDelta(EPhase phase, ERumblePriority priority);
  SAdsrDelta(EPhase phase);
  static SAdsrDelta Stopped();
  static SAdsrDelta Start(ERumblePriority priority, bool prePulse);

  f32 x0_curIntensity;
  f32 x4_attackTime;
  f32 x8_decayTime;
  f32 xc_releaseTime;
  f32 x10_autoReleaseTime;
  f32 x14_attackIntensity;
  f32 x18_sustainIntensity;
  ERumblePriority x1c_priority;
  EPhase x20_phase;
};

class CRumbleVoice {
private:
  rstl::vector< SAdsrData > x0_datas;
  rstl::vector< SAdsrDelta > x10_deltas;
  rstl::reserved_vector< u16, 4 > x20_handleIds;
  u16 x2c_usedChannels;
  u8 x2e_lastId;

  CRumbleVoice();

  s16 Activate(const SAdsrData& data, u16 idx, float gain, ERumblePriority prio);
  void Deactivate(s16 id, bool b1);
  void HardReset();
  bool UpdateChannel(SAdsrDelta& delta, const SAdsrData& data, float dt);
  bool Update(float dt);
  uint GetFreeChannel() const;
  float GetIntensity() const;
  bool OwnsSustained(s16 id) const;
  s16 CreateRumbleHandle(u16 idx);
};

#endif
