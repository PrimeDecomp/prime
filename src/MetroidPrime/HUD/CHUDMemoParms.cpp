#include "MetroidPrime/HUD/CHUDMemoParms.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

CHUDMemoParms::CHUDMemoParms(CInputStream& in)
: mDispTime(in.Get(TType<float>())), mClearMemoWindow(in.ReadBool()), mFadeOutOnly(false), mHintMemo(false) {}
