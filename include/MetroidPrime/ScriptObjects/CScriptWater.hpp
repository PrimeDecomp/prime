#ifndef _CSCRIPTWATER
#define _CSCRIPTWATER

#include "types.h"

#include "rstl/single_ptr.hpp"

class CFluidPlaneCPU;

class CScriptWater {
public:
  CFluidPlaneCPU& FluidPlane() { return *x1b4_fluidPlane; }

private:
  uchar x0_pad[0x1b4];
  rstl::single_ptr< CFluidPlaneCPU > x1b4_fluidPlane;
};

#endif // _CSCRIPTWATER
