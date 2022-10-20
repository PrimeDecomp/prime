#ifndef _CWEAPONDESCRIPTION
#define _CWEAPONDESCRIPTION

#include "Kyoto/Particles/CVectorElement.hpp"
#include "Kyoto/Particles/CModVectorElement.hpp"

#include "rstl/single_ptr.hpp"

class CWeaponDescription {
  public:
  rstl::single_ptr<CVectorElement> x0_IORN;
  rstl::single_ptr<CVectorElement> x4_IVEC;
  rstl::single_ptr<CVectorElement> x8_PSOV;
  rstl::single_ptr<CModVectorElement> xc_PSVM;
  bool x10_VMD2;
  rstl::single_ptr<CIntElement> x14_PSLT;
  rstl::single_ptr<CVectorElement> x18_PSCL;
  rstl::single_ptr<CColorElement> x1c_PCOL;
  rstl::single_ptr<CVectorElement> x20_POFS;
  rstl::single_ptr<CVectorElement> x24_OFST;
};

#endif // _CWEAPONDESCRIPTION
