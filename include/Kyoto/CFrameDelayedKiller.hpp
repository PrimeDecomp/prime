#ifndef _CFRAMEDELAYEDKILLER
#define _CFRAMEDELAYEDKILLER

#include "types.h"

class CFrameDelayedKiller {
public:
  static void Initialize();
  static void ShutDown();

  static void sub_8036cb90();
  static void sub_8036cc1c(bool unk1, void* unk2);
};

#endif // _CFRAMEDELAYEDKILLER
