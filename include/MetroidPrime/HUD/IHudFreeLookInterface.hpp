#ifndef _IHUDFREELOOKINTERFACE
#define _IHUDFREELOOKINTERFACE

#include "types.h"

class IHudFreeLookInterface {
public:
  virtual void SetFreeLookState(bool inFreeLook, bool lookControlHeld, bool lockedOnObj,
                                float vertLookAngle) = 0;
  virtual void SetIsVisibleDebug(bool v) = 0;
  virtual void SetIsVisibleGame(bool v) = 0;
  virtual void Update(float dt) = 0;
  virtual ~IHudFreeLookInterface();
};

#endif // _IHUDFREELOOKINTERFACE
