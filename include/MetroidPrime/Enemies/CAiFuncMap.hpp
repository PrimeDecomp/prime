#ifndef _CAIFUNCMAP
#define _CAIFUNCMAP

#include "types.h"

enum EStateMsg {
  kStateMsg_Activate = 0,
  kStateMsg_Update = 1,
  kStateMsg_Deactivate = 2,
};

class CAiFuncMap {
public:
  CAiFuncMap();
  ~CAiFuncMap();

private:
  uchar pad[0x20];
};

#endif // _CAIFUNCMAP
