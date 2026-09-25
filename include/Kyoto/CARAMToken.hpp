#ifndef _CARAMTOKEN
#define _CARAMTOKEN

#include "types.h"

class CARAMToken {
  static CARAMToken* sLists[7];
public:
  enum EStatus {
    kS_Zero,
    kS_One,
    kS_Two,
    kS_Three,
    kS_Four,
    kS_Five,
    kS_Six,
  };

  CARAMToken();
  CARAMToken(void* ptr, uint len, int unk);
  CARAMToken(const CARAMToken& other);
  ~CARAMToken();
  void PostConstruct(void* ptr, uint len, int unk);
  CARAMToken& operator=(const CARAMToken& other);
  const EStatus GetStatus() const { return mStatus; }
  int GetSize() const { return mDataLen; }
  bool LoadToMRAM();
  bool LoadToARAM();
  bool RefreshStatus();
  static void UpdateAllDMAs();
  void InitiallyMoveToList();
  void MoveToList(EStatus status);
  void RemoveFromList();
  void MakeInvalid();

  void* ForceSyncMRAM();
  void ForceSyncARAM();

  void* GetMRAMSafe();

private:
  EStatus mStatus;
  void* mMramPtr;
  const void* mAramPtr;
  int mDataLen;
  uint mDmaHandle;
  CARAMToken* mPrev;
  CARAMToken* mNext;
  bool x1c_24_ : 1;
};

#endif // _CARAMTOKEN
