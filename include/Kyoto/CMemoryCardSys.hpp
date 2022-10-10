#ifndef _CMEMORYCARDSYS
#define _CMEMORYCARDSYS

#include "types.h"

// TODO: likely comes from dolphin sdk
enum ECardSlot { kCS_SlotA, kCS_SlotB };
enum ECardResult { k_READY }; 
struct FileHandle {};

class CMemoryCardSys {
public:
  struct CardFileHandle {
    ECardSlot slot;
    FileHandle handle;
    CardFileHandle(ECardSlot slot) : slot(slot) {}
    int getFileNo() const;
  };

  struct CCardFileInfo {};

  CMemoryCardSys();
  ~CMemoryCardSys();

  void Initialize();

private:
  // TODO
};

#endif // _CMEMORYCARDSYS
