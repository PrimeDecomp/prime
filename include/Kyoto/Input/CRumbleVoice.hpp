#ifndef _CRUMBLEVOICE
#define _CRUMBLEVOICE

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

  float x0_attackGain;
  float x4_autoReleaseDur;
  float x8_attackDur;
  float xc_decayDur;
  float x10_sustainGain;
  float x14_releaseDur;
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

  float x0_curIntensity;
  float x4_attackTime;
  float x8_decayTime;
  float xc_releaseTime;
  float x10_autoReleaseTime;
  float x14_attackIntensity;
  float x18_sustainIntensity;
  ERumblePriority x1c_priority;
  EPhase x20_phase;
};

class CRumbleVoice {
private:
  rstl::vector< SAdsrData > x0_datas;
  rstl::vector< SAdsrDelta > x10_deltas;
  rstl::reserved_vector< ushort, 4 > x20_handleIds;
  ushort x2c_usedChannels;
  uchar x2e_lastId;

public:
  CRumbleVoice();

  short Activate(const SAdsrData& data, ushort idx, float gain, ERumblePriority prio);
  void Deactivate(short id, bool b1);
  void HardReset();
  bool UpdateChannel(SAdsrDelta& delta, const SAdsrData& data, float dt);
  bool Update(float dt);
  ushort GetFreeChannel() const;
  float GetIntensity() const;
  bool OwnsSustained(short id) const;
  short CreateRumbleHandle(ushort idx);
  ushort GetChannelId(short handle) const { return handle & 0xf; }
  ushort GetOwnerId(short handle) const { return ((handle >> 8) & 0xFF); }
  ERumblePriority GetPriority(uint idx) { return x10_deltas[idx].x1c_priority; }
};

#endif // _CRUMBLEVOICE
