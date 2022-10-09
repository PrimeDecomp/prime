#include "Kyoto/Basics/CStopwatch.hpp"

#include "dolphin/os.h"

void CStopwatch::CSWData::Wait(float v) const {
  OSTime duration = OSSecondsToTicks(v);
  OSTime end = OSGetTime() + duration;
  volatile OSTime current;
  volatile int diff;
  do {
    current = OSGetTime();
    diff = current - end;
  } while (diff < 0);
}

bool CStopwatch::CSWData::Initialize() {
  x0_timerFreq = OS_TIMER_CLOCK;
  x8_timerFreqO1M = x0_timerFreq / 1000000ll;
  x10_timerPeriod = 1.f / static_cast< float >(x0_timerFreq);
  return true;
}
