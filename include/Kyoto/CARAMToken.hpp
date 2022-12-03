#ifndef _CARAMTOKEN
#define _CARAMTOKEN

#include "types.h"

class CARAMToken {
public:
  enum EStatus {
    kS_Zero,
    kS_One,
  };

  CARAMToken();
  CARAMToken(void* ptr, uint len);
  CARAMToken(const CARAMToken& other);
  ~CARAMToken();
  void PostConstruct(void* ptr, uint len, int unk);
  CARAMToken& operator=(const CARAMToken& other);
  void LoadToMRAM();
  void LoadToARAM();
  void RefreshStatus();
  static void UpdateAllDMAs();
  void InitiallyMoveToList();
  void MoveToList(EStatus status);
  void RemoveFromList();
  void MakeInvalid();

  void sub_803583d4();  
  void sub_80358388();

  void* GetMRAMSafe();
private:
  int x0_;
  void* x4_;
  void* x8_;
  int xc_;
  uint x10_;
  int x14_;
  int x18_;
  bool x1c_24_ : 1;
};

#endif // _CARAMTOKEN
