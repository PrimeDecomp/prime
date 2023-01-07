#include "Kyoto/Input/CRumbleGenerator.hpp"

const EMotorState CRumbleGenerator::kStopAll[4] = {
    kMS_StopHard,
    kMS_StopHard,
    kMS_StopHard,
    kMS_StopHard,
};

CRumbleGenerator::CRumbleGenerator() : xf0_24_disabled(false) { HardStopAll(); }

CRumbleGenerator::~CRumbleGenerator() { HardStopAll(); }

short CRumbleGenerator::Rumble(const SAdsrData& adsr, float gain, ERumblePriority prio,
                               EIOPort port) {
  ushort freeChan = x0_voices[port].GetFreeChannel();
  if (prio >= x0_voices[port].GetPriority(freeChan)) {
    xc0_periodTime[port] = 0.f;
    xd0_onTime[port] = 0.f;
    return x0_voices[port].Activate(adsr, freeChan, gain, prio);
  }
  return -1;
}

void CRumbleGenerator::Update(float dt) {
  if (!xf0_24_disabled) {
    bool updated = false;
    for (int i = 0; i < 4; ++i) {
      const float intensity = x0_voices[i].GetIntensity();
      if (!x0_voices[i].Update(dt) || intensity <= 0.f) {
        xc0_periodTime[i] = 0.f;
        xd0_onTime[i] = 0.f;
        if (xe0_commandArray[i] != kMS_Stop) {
          xe0_commandArray[i] = kMS_Stop;
          updated = true;
        }
      } else {
        xc0_periodTime[i] += dt;
        if (xc0_periodTime[i] >= 1.f / (30.f * intensity)) {
          xc0_periodTime[i] = 0.f;
          if (xe0_commandArray[i] != kMS_Rumble) {
            xe0_commandArray[i] = kMS_Rumble;
            updated = true;
          }
        } else {
          xd0_onTime[i] += dt;
          if (xd0_onTime[i] >= (1.f / 30.f)) {
            xd0_onTime[i] = 0.f;
            if (xe0_commandArray[i] != kMS_Stop) {
              xe0_commandArray[i] = kMS_Stop;
              updated = true;
            }
          }
        }
      }
    }
    if (updated) {
      PADControlAllMotors(reinterpret_cast< const u32* >(xe0_commandArray));
    }
  }
}

void CRumbleGenerator::HardStopAll() {

  for (int i = 0; i < 4; ++i) {
    xc0_periodTime[i] = 0.f;
    xd0_onTime[i] = 0.f;
    xe0_commandArray[i] = kMS_Stop;
    x0_voices[i].HardReset();
  }

  PADControlAllMotors(reinterpret_cast< const u32* >(kStopAll));
}

void CRumbleGenerator::SetDisabled(const bool disabled) {
  if (disabled) {
    HardStopAll();
  }

  xf0_24_disabled = disabled;
}
