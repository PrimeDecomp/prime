#include "MetroidPrime/HUD/CHUDMemoParms.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

CHUDMemoParms::CHUDMemoParms(CInputStream& in)
: mDispTime(in.Get< float >())
, mClearMemoWindow(in.Get< bool >())
, mFadeOutOnly(false)
, mHintMemo(false) {}
