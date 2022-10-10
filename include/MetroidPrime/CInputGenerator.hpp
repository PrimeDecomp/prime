#ifndef _CINPUTGENERATOR
#define _CINPUTGENERATOR

#include "types.h"

#include "rstl/single_ptr.hpp"

#include "Kyoto/Input/IController.hpp"

class COsContext;
class IController;
class CArchitectureQueue;

class CInputGenerator {
public:
  CInputGenerator(COsContext*, float leftDiv, float rightDiv);
  bool Update(float dt, CArchitectureQueue& queue);
  IController* GetController() const { return x4_controller.get(); }

private:
  COsContext* x0_context;
  rstl::single_ptr< IController > x4_controller;
  bool x8_connectedControllers[4];
  float xc_leftDiv;
  float x10_rightDiv;
};
CHECK_SIZEOF(CInputGenerator, 0x14)

#endif // _CINPUTGENERATOR
