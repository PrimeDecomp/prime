#ifndef _CINPUTGENERATOR
#define _CINPUTGENERATOR

#include "types.h"

#include "rstl/single_ptr.hpp"

#include "Kyoto/Input/IController.hpp"

class COsContext;
class IController;

class CInputGenerator {
public:
  CInputGenerator(COsContext*, f32, f32);

  IController* GetController() const { return x4_controller.get(); }

private:
  COsContext* x0_context;
  rstl::single_ptr< IController > x4_controller;
  bool x8_connectedControllers[4];
  f32 xc_leftDiv;
  f32 x10_rightDiv;
};
CHECK_SIZEOF(CInputGenerator, 0x14)

#endif // _CINPUTGENERATOR
