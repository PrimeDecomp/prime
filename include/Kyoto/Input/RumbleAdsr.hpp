#ifndef __RUMBLEADSR_HPP__
#define __RUMBLEADSR_HPP__

enum ERumblePriority { kPriority_Zero, kPriority_One, kPriority_Two, kPriority_Three };

struct SAdsrDelta {
  enum EPhase { kP_Stop, kP_PrePulse, kP_Attack, kP_Decay, kP_Sustain, kP_Release };

  static SAdsrDelta Start(ERumblePriority priority, bool);
  static SAdsrDelta Stopped();
  SAdsrDelta(EPhase phase);
  SAdsrDelta(EPhase phase, ERumblePriority priority);

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

struct SAdsrData {
  SAdsrData();
  SAdsrData(float, float, float, float, float, float, bool, bool);

  float x0_attackGain;
  float x4_autoReleaseDur;
  float x8_attackDur;
  float xc_decayDur;
  float x10_sustainGain;
  float x14_releaseDur;
  bool x18_24_hasSustain : 1;
  bool x18_25_autoRelease : 1;
};

#endif // __RUBMLEADSR_HPP__
