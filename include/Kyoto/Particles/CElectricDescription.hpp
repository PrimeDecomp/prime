#ifndef _CELECTRICDESCRIPTION
#define _CELECTRICDESCRIPTION

#include "Kyoto/Particles/CParticleDataFactory.hpp"

class CColorElement;
class CEmitterElement;
class CIntElement;
class CRealElement;

// using SParticleModel = STokenDesc<CModel>;
// using SChildGeneratorDesc = STokenDesc<CGenDescription>;
// using SSwooshGeneratorDesc = STokenDesc<CSwooshDescription>;
// using SElectricGeneratorDesc = STokenDesc<CElectricDescription>;

class CElectricDescription {
public:
  CIntElement* x0_LIFE;
  CIntElement* x4_SLIF;
  CRealElement* x8_GRAT;
  CIntElement* xc_SCNT;
  CIntElement* x10_SSEG;
  CColorElement* x14_COLR;
  CEmitterElement* x18_IEMT;
  CEmitterElement* x1c_FEMT;
  CRealElement* x20_AMPL;
  CRealElement* x24_AMPD;
  CRealElement* x28_LWD1;
  CRealElement* x2c_LWD2;
  CRealElement* x30_LWD3;
  CColorElement* x34_LCL1;
  CColorElement* x38_LCL2;
  CColorElement* x3c_LCL3;
  // SSwooshGeneratorDesc x40_SSWH;
  // SChildGeneratorDesc x50_GPSM;
  // SChildGeneratorDesc x60_EPSM;
  // bool x70_ZERY = false;
};

#endif // _CELECTRICDESCRIPTION
