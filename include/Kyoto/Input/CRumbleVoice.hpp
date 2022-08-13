#ifndef _CRUMBLEVOICE_HPP
#define _CRUMBLEVOICE_HPP

#include "types.h"

#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

enum ERumblePriority {
  kRP_None,
  kRP_One,
  kRP_Two,
  kRP_Three,
};

struct SAdsrData {
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
  rstl::reserved_vector< s16, 4 > x20_handleIds;
  s16 x2c_usedChannels;
  u8 x2e_lastId;
};

#endif