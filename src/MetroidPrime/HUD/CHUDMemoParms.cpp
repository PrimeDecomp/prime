#include "MetroidPrime/HUD/CHUDMemoParms.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

CHUDMemoParms::CHUDMemoParms(CInputStream& in)
: mDispTime(in.ReadFloat()), mClearMemoWindow(in.ReadBool()), mFadeOutOnly(false), mHintMemo(false) {}
