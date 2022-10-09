#ifndef _CHUDMEMOPARMS
#define _CHUDMEMOPARMS

#include "types.h"

class CInputStream;

class CHUDMemoParms {
public:
  CHUDMemoParms(float dispTime, bool clear, bool fadeOut, bool hint)
  : mDispTime(dispTime), mClearMemoWindow(clear), mFadeOutOnly(fadeOut), mHintMemo(hint) {}
  CHUDMemoParms(CInputStream& in);

  float GetDisplayTime() const { return mDispTime; }
  bool IsClearMemoWindow() const { return mClearMemoWindow; }
  bool IsFadeOutOnly() const { return mFadeOutOnly; }
  bool IsHintMemo() const { return mHintMemo; }

private:
  float mDispTime;
  bool mClearMemoWindow;
  bool mFadeOutOnly;
  bool mHintMemo;
};

#endif // _CHUDMEMOPARMS
