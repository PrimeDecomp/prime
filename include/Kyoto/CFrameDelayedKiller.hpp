#ifndef _CFRAMEDELAYEDKILLER
#define _CFRAMEDELAYEDKILLER

#include "types.h"

class CFrameDelayedKiller {
public:
  enum EWhichFrame {
    kWhichFrame_ThisFrame,
    kWhichFrame_NextFrame,
  };
  static uint g805A9488;
  static void fn_8036CD98();
  static void Initialize();
  static void ShutDown();

  static void FlushAllocationsForFrame();
  static void ScheduleDeletion(const EWhichFrame thisFrame, void* victim);
  static uint fn_8036CAAC(uint v);
  static void fn_8036CAB8(uint a, uint b);
  static void FlushAllAllocations();
  static void StallAndFlushAllAllocations();
  static uint Get805A9488() { return g805A9488; }
  static uint someInline() { return g805A9488 ? fn_8036CAAC(g805A9488) : 0; }
};

#endif // _CFRAMEDELAYEDKILLER
