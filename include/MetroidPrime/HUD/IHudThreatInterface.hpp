#ifndef _IHUDTHREATINTERFACE
#define _IHUDTHREATINTERFACE

#include "types.h"

class IHudThreatInterface {
public:
  virtual void SetThreatDistance(float threatDist) = 0;
  virtual void SetIsVisibleDebug(bool v) = 0;
  virtual void SetIsVisibleGame(bool v) = 0;
  virtual void Update(float dt) = 0;
  virtual ~IHudThreatInterface();
};

#endif // _IHUDTHREATINTERFACE
