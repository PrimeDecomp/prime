#include "Kyoto/Particles/CSpawnSystemKeyframeData.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

CSpawnSystemKeyframeData::CSpawnSystemKeyframeData(CInputStream& in)
: mUnknown1(in.Get< int >())
, mUnknown2(in.Get< int >())
, mEndFrame(in.Get< int >())
, mUnknown3(in.Get< int >())
, mFrames(in) {}
