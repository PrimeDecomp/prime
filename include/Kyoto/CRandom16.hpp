#ifndef __CRANDOM16_HPP__
#define __CRANDOM16_HPP__

#include "types.h"

class CRandom16;
class CGlobalRandom {
    static CGlobalRandom* gCurrentGlobalRandom;
public:
    CGlobalRandom(CRandom16& rnd);
    ~CGlobalRandom();
private:
    CRandom16& mRandom;
    bool mIsFirst;
    CGlobalRandom* mPrev;
};

class CRandom16 {
    friend class CGlobalRandom;
    static CRandom16* gRandomNumber;
    static void _SetRandomNumber(CRandom16* rnd);
public:
    static CRandom16* GetRandomNumber();
    CRandom16(u32 seed = 99);
    void SetSeed(u32 seed);
    s32 Range(s32 min, s32 max);
    float Range(float min, float max);
    s32 Next();
    float Float();
private:
    u32 mSeed;
};

#endif // __CRANDOM16_HPP__
