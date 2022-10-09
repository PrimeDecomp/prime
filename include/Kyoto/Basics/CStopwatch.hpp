#ifndef _CSTOPWATCH
#define _CSTOPWATCH

#include "types.h"

#include "dolphin/os.h"

class CStopwatch {
public:
  class CSWData {
  public:
    CSWData() : x0_timerFreq(0), x8_timerFreqO1M(0), x10_timerPeriod(0.f) {}

    bool Initialize();
    void Wait(float) const;

    s64 GetTimerFreq() const { return x0_timerFreq; }
    s64 GetTimerFreqO1M() const { return x8_timerFreqO1M; }
    float GetTimerPeriod() const { return x10_timerPeriod; }
    s64 GetCPUCycles() const { return OSGetTime(); }

  private:
    s64 x0_timerFreq;
    s64 x8_timerFreqO1M;
    float x10_timerPeriod;
  };

  CStopwatch() : x0_startTime(mData.GetCPUCycles()) {}
  static bool InitGlobalTimer();
  static CStopwatch& GetGlobalTimerObj();
  inline void Reset() {
    if (mData.GetTimerFreq() == 0) {
      mData.Initialize();
    }
    x0_startTime = mData.GetCPUCycles();
  }
  inline float GetElapsedTime() const {
    return (mData.GetCPUCycles() - x0_startTime) * mData.GetTimerPeriod();
  }
  inline s64 GetElapsedMicros() const {
    return (mData.GetCPUCycles() - x0_startTime) / mData.GetTimerFreqO1M();
  }

  static void Wait(float);

private:
  static CSWData mData;
  static CStopwatch mGlobalTimer;

  s64 x0_startTime;
};

#endif // _CSTOPWATCH
