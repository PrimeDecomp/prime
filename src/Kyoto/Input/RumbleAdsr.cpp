#include "Kyoto/Input/CRumbleVoice.hpp"

SAdsrDelta SAdsrDelta::Start(ERumblePriority priority, bool prePulse) {
  return SAdsrDelta(prePulse ? kP_PrePulse : kP_Attack, priority);
}
SAdsrDelta SAdsrDelta::Stopped() { return SAdsrDelta(kP_Stop); }

SAdsrDelta::SAdsrDelta(EPhase phase)
: x0_curIntensity(0.f)
, x4_attackTime(0.f)
, x8_decayTime(0.f)
, xc_releaseTime(0.f)
, x10_autoReleaseTime(0.f)
, x1c_priority(kRP_None)
, x20_phase(phase) {}

SAdsrDelta::SAdsrDelta(EPhase phase, ERumblePriority priority)
: x0_curIntensity(phase == kP_PrePulse ? 2.f : 0.f)
, x4_attackTime(0.f)
, x8_decayTime(0.f)
, xc_releaseTime(0.f)
, x10_autoReleaseTime(0.f)
, x1c_priority(priority)
, x20_phase(phase) {}

SAdsrData::SAdsrData()
: x0_attackGain(0.f)
, x4_autoReleaseDur(0.f)
, x8_attackDur(0.f)
, xc_decayDur(0.f)
, x10_sustainGain(0.f)
, x14_releaseDur(0.f)
, x18_24_hasSustain(false)
, x18_25_autoRelease(false) {}

SAdsrData::SAdsrData(float attackGain, float autoReleaseDur, float attackDur, float decayDur,
                     float sustainGain, float releaseDur, bool hasSustain, bool autoRelease)
: x0_attackGain(attackGain)
, x4_autoReleaseDur(autoReleaseDur)
, x8_attackDur(attackDur)
, xc_decayDur(decayDur)
, x10_sustainGain(sustainGain)
, x14_releaseDur(releaseDur)
, x18_24_hasSustain(hasSustain)
, x18_25_autoRelease(autoRelease) {}
