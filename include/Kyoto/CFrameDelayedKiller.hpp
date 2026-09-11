#ifndef _CFRAMEDELAYEDKILLER
#define _CFRAMEDELAYEDKILLER

#include "types.h"

class CFrameDelayedKiller {
public:
  struct Stats {
    uint unk1;
    uint unk2;
    uint unk3;
    uint unk4;
    uint unk5;
    uint unk6;
    uint unk7;
    uint unk8;
  };
  enum EWhichFrame {
    kWhichFrame_ThisFrame,
    kWhichFrame_NextFrame,
  };
  static void Initialize();
  static void ShutDown();

  static void FlushAllocationsForFrame();
  static void ScheduleDeletion(const EWhichFrame thisFrame, void* victim);
  static void FlushAllAllocations();
  static void StallAndFlushAllAllocations();
  const CFrameDelayedKiller::Stats& GetStats() {
    return mUnusedStats;
  }
  static Stats mUnusedStats;
};

#endif // _CFRAMEDELAYEDKILLER
