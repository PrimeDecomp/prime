#ifndef _CDECALDESCRIPTION
#define _CDECALDESCRIPTION

#include "Kyoto/Particles/CGenDescription.hpp"

class CDecalDescription {
public:
  struct SQuadDescr {
    rstl::single_ptr< CIntElement > x0_LFT;
    rstl::single_ptr< CRealElement > x4_SZE;
    rstl::single_ptr< CRealElement > x8_ROT;
    rstl::single_ptr< CVectorElement > xc_OFF;
    rstl::single_ptr< CColorElement > x10_CLR;
    rstl::single_ptr< CUVElement > x14_TEX;
    bool x18_ADD;
    SQuadDescr();
  };

  CDecalDescription();

// private:
  SQuadDescr x0_quad1;
  SQuadDescr x1c_quad2;
  CGenDescription::TParticleModel x38_DMDL;
  rstl::single_ptr< CIntElement > x48_DLFT;
  rstl::single_ptr< CVectorElement > x4c_DMOP;
  rstl::single_ptr< CVectorElement > x50_DMRT;
  rstl::single_ptr< CVectorElement > x54_DMSC;
  rstl::single_ptr< CColorElement > x58_DMCL;
  bool x5c_24_DMAB : 1;
  bool x5c_25_DMOO : 1;
};

#endif // _CDECALDESCRIPTION
