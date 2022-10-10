#ifndef _CMEMORYCARDSYS
#define _CMEMORYCARDSYS

#include "types.h"

// TODO: likely comes from dolphin sdk
enum ECardResult { k_READY, k_NOCARD = -3 };
struct FileHandle {
  u8 x0_pad[0x10];
};

struct ProbeResults {
  ECardResult x0_error;
  uint x4_cardSize;   /* in megabits */
  uint x8_sectorSize; /* in bytes */
};

class CMemoryCardSys {
public:
  enum EMemoryCardPort { kCS_SlotA, kCS_SlotB };

  struct CardFileHandle {
    EMemoryCardPort slot;
    FileHandle handle;
    CardFileHandle(EMemoryCardPort slot) : slot(slot) {}
    int getFileNo() const;
  };

  class CCardFileInfo {
    uchar pad[0x114];

  public:
    ~CCardFileInfo();
  };

  CMemoryCardSys();
  ~CMemoryCardSys();

  static ECardResult GetResultCode(int);
  static ProbeResults IsMemoryCardInserted(EMemoryCardPort);

  void Initialize();

private:
  // TODO
};

#endif // _CMEMORYCARDSYS
