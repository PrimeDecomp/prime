#ifndef _CSTOPWATCH_HPP
#define _CSTOPWATCH_HPP

#include "types.h"

#include "Dolphin/os.h"

class CStopwatch {
public:
  class CSWData {
  public:
    bool Initialize();
    void Wait(f32) const;

    s64 GetTimerFreq() const { return x0_timerFreq; }
    s64 GetTimerFreqO1M() const { return x8_timerFreqO1M; }
    f32 GetTimerPeriod() const { return x10_timerPeriod; }
    s64 GetCPUCycles() const { return OSGetTime(); }

  private:
    s64 x0_timerFreq;
    s64 x8_timerFreqO1M;
    f32 x10_timerPeriod;
  };

  CStopwatch() : x0_startTime(mData.GetCPUCycles()) {}
  // static inline void InitGlobalTimer() {}
  // static inline CStopwatch& GetGlobalTimerObj() { return mGlobalTimer; }
  inline void Reset() {
    if (mData.GetTimerFreq() == 0) {
      mData.Initialize();
    }
    x0_startTime = mData.GetCPUCycles();
  }
  inline f32 GetElapsedTime() const { return (mData.GetCPUCycles() - x0_startTime) * mData.GetTimerPeriod(); }
  inline s64 GetElapsedMicros() const { return (mData.GetCPUCycles() - x0_startTime) / mData.GetTimerFreqO1M(); }

private:
  static CSWData mData;
  static CStopwatch mGlobalTimer;

  s64 x0_startTime;
};

#endif
