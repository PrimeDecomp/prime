#include <Kyoto/Basics/CStopwatch.hpp>
#include <math.h>

CStopwatch::CSWData CStopwatch::mData;
CStopwatch CStopwatch::mGlobalTimer;


bool CStopwatch::InitGlobalTimer() {
    mGlobalTimer.Reset();
    return true;
}

void CStopwatch::Wait(float wait) {
    if (fabs(wait) < 0.0010000000474974512) {
        mData.Wait(0.f);
    } else {
        mData.Wait(wait);
    }
}

CStopwatch& CStopwatch::GetGlobalTimerObj() {
    return mGlobalTimer;
}
