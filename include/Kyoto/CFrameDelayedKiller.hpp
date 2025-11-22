#ifndef _CFRAMEDELAYEDKILLER
#define _CFRAMEDELAYEDKILLER

#include "types.h"

class CFrameDelayedKiller {
public:
  static uint g805A9488;
  static void Initialize();
  static void ShutDown();

  static void fn_8036CB90();
  static void fn_8036CC1C(bool unk1, void* unk2);
  static uint fn_8036CAAC(uint v);
  static void fn_8036CAB8(uint a, uint b);
  static uint Get805A9488() { return g805A9488; }
  static uint someInline() { return g805A9488 ? fn_8036CAAC(g805A9488) : 0; }
};

#endif // _CFRAMEDELAYEDKILLER
