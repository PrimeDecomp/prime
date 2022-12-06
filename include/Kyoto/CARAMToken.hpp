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
  bool LoadToMRAM();
  bool LoadToARAM();
  bool RefreshStatus();
  static void UpdateAllDMAs();
  void InitiallyMoveToList();
  void MoveToList(EStatus status);
  void RemoveFromList();
  void MakeInvalid();

  void* sub_803583d4();
  void sub_80358388();

  void* GetMRAMSafe();

private:
  EStatus x0_status;
  void* x4_mramPtr;
  const void* x8_aramPtr;
  int xc_dataLen;
  uint x10_dmaHandle;
  CARAMToken* x14_prev;
  CARAMToken* x18_next;
  bool x1c_24_ : 1;
};

#endif // _CARAMTOKEN
