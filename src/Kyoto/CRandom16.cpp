#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Alloc/CMemory.hpp"

CRandom16* CRandom16::gRandomNumber = nullptr;
CGlobalRandom* CGlobalRandom::gCurrentGlobalRandom = nullptr;
CGlobalRandom::CGlobalRandom(CRandom16& rnd) : mRandom(rnd) {
  mIsFirst = true;
  mPrev = gCurrentGlobalRandom;
  if (mPrev != nullptr) {
    mPrev->mIsFirst = false;
  }

  gCurrentGlobalRandom = this;
  CRandom16::_SetRandomNumber(&mRandom);
}

CGlobalRandom::~CGlobalRandom() {
  gCurrentGlobalRandom = mPrev;
  if (gCurrentGlobalRandom != nullptr) {
    gCurrentGlobalRandom->mIsFirst = true;
    CRandom16::_SetRandomNumber(&gCurrentGlobalRandom->mRandom);
  } else {
    CRandom16::_SetRandomNumber(nullptr);
  }
}

CRandom16* CRandom16::GetRandomNumber() { return gRandomNumber; }
void CRandom16::_SetRandomNumber(CRandom16* rnd) { gRandomNumber = rnd; }

CRandom16::CRandom16(u32 seed) : mSeed(seed) {}

void CRandom16::SetSeed(u32 seed) { mSeed = seed; }

s32 CRandom16::Range(s32 min, s32 max) { return min + (Next() % ((max - min) + 1)); }

float CRandom16::Range(float min, float max) { return ((max - min) * Float()) + min; }

s32 CRandom16::Next() {
  mSeed = (mSeed * 0x41c64e6d) + 0x00003039;
  return (mSeed >> 16) & 0xffff;
}

f32 CRandom16::Float() {
  s32 next = Next();
  return 1.52590222E-5f * next;
}
