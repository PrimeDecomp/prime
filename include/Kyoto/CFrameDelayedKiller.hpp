#ifndef _CFRAMEDELAYEDKILLER
#define _CFRAMEDELAYEDKILLER

#include "types.h"

class CFrameDelayedKiller {
public:
  static void Initialize();
  static void ShutDown();

  static void fn_8036CB90();
  static void fn_8036CC1C(bool unk1, void* unk2);
};

#endif // _CFRAMEDELAYEDKILLER
