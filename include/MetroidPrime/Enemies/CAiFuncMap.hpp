#ifndef _CAIFUNCMAP
#define _CAIFUNCMAP

#include "types.h"

enum EStateMsg {
  kStateMsg_Activate = 0,
  kStateMsg_Update = 1,
  kStateMsg_Deactivate = 2,
};

class CAi;
class CStateManager;
typedef void (CAi::*CAiStateFunc)(CStateManager& mgr, EStateMsg msg, float arg);
typedef bool (CAi::*CAiTriggerFunc)(CStateManager& mgr, float arg);

class CAiFuncMap {
public:
  CAiFuncMap();
  ~CAiFuncMap();

private:
  uchar pad[0x20];
};

#endif // _CAIFUNCMAP
