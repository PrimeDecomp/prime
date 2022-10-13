#ifndef _CWORLDTRANSMANAGER
#define _CWORLDTRANSMANAGER

#include "types.h"

class CWorldTransManager {
public:
  enum ETransType { kTT_Disabled, kTT_Enabled, kTT_Text };

  ETransType GetTransType() const { return x30_transType; }

private:
  uchar x0_pad[0x30];
  ETransType x30_transType;
  uchar x34_pad[0x14];
};

#endif // _CWORLDTRANSMANAGER
