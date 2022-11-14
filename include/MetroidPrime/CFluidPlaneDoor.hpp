#ifndef _CFLUIDPLANEDOOR
#define _CFLUIDPLANEDOOR

#include "MetroidPrime/CFluidPlane.hpp"

class CFluidPlaneDoor final : public CFluidPlane {
private:
  float xa0_tileSize;
  int xa4_tileSubdivisions;
  float xa8_rippleResolution;
};

#endif // _CFLUIDPLANEDOOR
