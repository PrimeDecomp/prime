#ifndef _ITWEAKOBJECT
#define _ITWEAKOBJECT

#include "types.h"

class ITweakObject {
public:
  virtual ~ITweakObject() = 0;
};

inline ITweakObject::~ITweakObject() {}

#endif // _ITWEAKOBJECT
