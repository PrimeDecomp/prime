#include "Kyoto/Input/CRumbleVoice.hpp"
#include "rstl/math.hpp"

CRumbleVoice::CRumbleVoice()
: x0_datas(4, SAdsrData())
, x10_deltas(4, SAdsrDelta::Stopped())
, x20_handleIds(0)
, x2c_usedChannels(0)
, x2e_lastId(0) {}

short CRumbleVoice::Activate(const SAdsrData& data, ushort idx, float gain, ERumblePriority prio) {
  if (gain > 0.f) {
    x0_datas[idx] = data;
    x10_deltas[idx] = SAdsrDelta::Start(prio, x2c_usedChannels == 0);
    x10_deltas[idx].x14_attackIntensity = gain * x0_datas[idx].x0_attackGain;
    x10_deltas[idx].x18_sustainIntensity = gain * x0_datas[idx].x10_sustainGain;
    x2c_usedChannels |= 1 << idx;
    if (data.x18_24_hasSustain)
      return CreateRumbleHandle(idx);
  }
  return -1;
}

void CRumbleVoice::Deactivate(short id, bool b1) {
  if (id == -1 || !OwnsSustained(id)) {
    return;
  }

  if (x2c_usedChannels & (1 << GetChannelId(id))) {
    x10_deltas[GetChannelId(id)].x20_phase = SAdsrDelta::kP_Release;
  }
}

void CRumbleVoice::HardReset() {
  x2c_usedChannels = 0;
  for (ushort i = 0; i < 4; ++i) {
    x10_deltas[i] = SAdsrDelta::Stopped();
    x20_handleIds[i] = 0;
  }
}

bool CRumbleVoice::UpdateChannel(SAdsrDelta& delta, const SAdsrData& data, float dt) {
  switch (delta.x20_phase) {
  case SAdsrDelta::kP_PrePulse:
    if (delta.x4_attackTime < (1.f / 30.f)) {
      delta.x4_attackTime += dt;
    } else {
      delta.x20_phase = SAdsrDelta::kP_Attack;
      delta.x0_curIntensity = 0.f;
      delta.x4_attackTime = 0.f;
    }
    break;
  case SAdsrDelta::kP_Attack:
    if (delta.x4_attackTime < data.x8_attackDur) {
      float t = delta.x4_attackTime / data.x8_attackDur;
      delta.x0_curIntensity = ((1.f - t) * 0.f + delta.x14_attackIntensity) * t;
      delta.x4_attackTime += dt;
    } else {
      delta.x0_curIntensity = delta.x14_attackIntensity;
      delta.x20_phase = SAdsrDelta::kP_Decay;
    }
    break;
  case SAdsrDelta::kP_Decay:
    if (data.x18_24_hasSustain) {
      if (delta.x8_decayTime > data.xc_decayDur) {
        delta.x0_curIntensity = delta.x18_sustainIntensity;
        delta.x20_phase = SAdsrDelta::kP_Sustain;
      } else {
        float t = delta.x8_decayTime / data.xc_decayDur;
        delta.x0_curIntensity =
            (1.f - t) * delta.x14_attackIntensity + t * delta.x18_sustainIntensity;
        delta.x8_decayTime += dt;
      }
    } else {
      if (delta.x8_decayTime < data.xc_decayDur) {
        float t = delta.x8_decayTime / data.xc_decayDur;
        delta.x0_curIntensity = delta.x14_attackIntensity * (1.f - t) + t * 0.f;
        delta.x8_decayTime += dt;
      } else {
        delta.x0_curIntensity = 0.f;
        delta.x20_phase = SAdsrDelta::kP_Stop;
      }
      if (delta.x20_phase != SAdsrDelta::kP_Decay) {
        delta.x20_phase = SAdsrDelta::kP_Stop;
        return true;
      }
    }
    break;
  case SAdsrDelta::kP_Release: {
    float a = data.x18_24_hasSustain ? delta.x18_sustainIntensity : 0.f;
    if (delta.xc_releaseTime < data.x14_releaseDur) {
      float t = delta.xc_releaseTime / data.x14_releaseDur;
      delta.x0_curIntensity = a * (1.f - t) + t * 0.f;
      delta.xc_releaseTime += dt;
    } else {
      delta.x0_curIntensity = 0.f;
      delta.x20_phase = SAdsrDelta::kP_Stop;
    }
    if (delta.x20_phase != SAdsrDelta::kP_Release) {
      delta.x20_phase = SAdsrDelta::kP_Stop;
      return true;
    }
  } break;
  default:
    break;
  }

  if (data.x18_25_autoRelease) {
    if (delta.x10_autoReleaseTime < data.x4_autoReleaseDur)
      delta.x10_autoReleaseTime += dt;
    else if (delta.x20_phase == SAdsrDelta::kP_Sustain)
      delta.x20_phase = SAdsrDelta::kP_Release;
  }

  return false;
}
bool CRumbleVoice::Update(float dt) {
  if (x2c_usedChannels != 0) {
    for (ushort i = 0; i < 4; ++i) {
      if (x2c_usedChannels & (1 << i)) {
        if (UpdateChannel(x10_deltas[i], x0_datas[i], dt)) {
          x2c_usedChannels &= ~(1 << i);
          x10_deltas[i] = SAdsrDelta::Stopped();
        }
      }
    }
    return true;
  }
  return false;
}

ushort CRumbleVoice::GetFreeChannel() const {
  for (ushort i = 0; i < 4; ++i) {
    if ((x2c_usedChannels & (1 << i)) == 0) {
      return (ushort)i;
    }
  }
  return 0;
}

float CRumbleVoice::GetIntensity() const {
  float ret = x10_deltas[0].x0_curIntensity;
  if (ret < x10_deltas[1].x0_curIntensity) {
    ret = x10_deltas[1].x0_curIntensity;
  }

  if (ret < x10_deltas[2].x0_curIntensity) {
    ret = x10_deltas[2].x0_curIntensity;
  }

  if (ret < x10_deltas[3].x0_curIntensity) {
    ret = x10_deltas[3].x0_curIntensity;
  }

  if (ret > 2.f) {
    return 2.f;
  }

  return ret;
}

bool CRumbleVoice::OwnsSustained(short handle) const {
  const ushort i = GetChannelId(handle);
  const uint owner = GetOwnerId(handle);
  return i < 4 ? x20_handleIds[i] == owner : false;
}

/* TODO: Fake matched, find real solution */
short CRumbleVoice::CreateRumbleHandle(ushort idx) {
  ++x2e_lastId;
  if (x2e_lastId == 0)
    x2e_lastId = 1;
  u16 x = idx;
  u16* h = &x20_handleIds[x];
  *h = x2e_lastId;
  return ((x2e_lastId << 8) | x) & 0xFFFF;
}
