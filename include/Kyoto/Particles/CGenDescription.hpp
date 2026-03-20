#ifndef _CGENDESCRIPTION
#define _CGENDESCRIPTION

#include "Kyoto/CToken.hpp"
#include "types.h"

#include "Kyoto/Particles/CSpawnSystemKeyframeData.hpp"
#include "Kyoto/Particles/IElement.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/single_ptr.hpp"

class CElectricDescription;
class CModel;
class CSwooshDescription;

class CGenDescription {
public:
  CGenDescription();
  ~CGenDescription();

  CIntElement* x0_PSLT;
  CIntElement* x4_PSWT;
  CRealElement* x8_PSTS;
  CVectorElement* xc_POFS;
  CIntElement* x10_SEED;
  CRealElement* x14_LENG;
  CRealElement* x18_WIDT;
  CIntElement* x1c_MAXP;
  CRealElement* x20_GRTE;
  CColorElement* x24_COLR;
  CIntElement* x28_LTME;
  CEmitterElement* x2c_EMTR;
  bool x30_24_LINE : 1;
  bool x30_25_FXLL : 1;
  bool x30_26_AAPH : 1;
  bool x30_27_ZBUF : 1;
  bool x30_28_SORT : 1;
  bool x30_29_LIT_ : 1;
  bool x30_30_ORNT : 1;
  bool x30_31_RSOP : 1;
  bool x31_24_MBLR : 1;
  bool x31_25_PMAB : 1;
  bool x31_26_PMUS : 1;
  bool x31_27_PMOO : 1;
  bool x31_28_VMD1 : 1;
  bool x31_29_VMD2 : 1;
  bool x31_30_VMD3 : 1;
  bool x31_31_VMD4 : 1;
  bool x32_24_CIND : 1;
  bool x32_25_OPTS : 1;
  CIntElement* x34_MBSP;
  CRealElement* x38_SIZE;
  CRealElement* x3c_ROTA;
  CUVElement* x40_TEXR;
  CUVElement* x44_TIND;
  rstl::optional_object< TCachedToken< CModel > > x48_PMDL;
  CVectorElement* x58_PMOP;
  CVectorElement* x5c_PMRT;
  CVectorElement* x60_PMSC;
  CColorElement* x64_PMCL;
  CModVectorElement* x68_VEL1;
  CModVectorElement* x6c_VEL2;
  CModVectorElement* x70_VEL3;
  CModVectorElement* x74_VEL4;
  rstl::optional_object< TCachedToken< CGenDescription > > x78_ICTS;
  CIntElement* x88_NCSY;
  CIntElement* x8c_CSSD;
  rstl::optional_object< TCachedToken< CGenDescription > > x90_IDTS;
  CIntElement* xa0_NDSY;
  rstl::optional_object< TCachedToken< CGenDescription > > xa4_IITS;
  CIntElement* xb4_PISY;
  CIntElement* xb8_SISY;
  rstl::single_ptr< CSpawnSystemKeyframeData > xbc_KSSM;
  rstl::optional_object< TCachedToken< CSwooshDescription > > xc0_SSWH;
  CIntElement* xd0_SSSD;
  CVectorElement* xd4_SSPO;
  rstl::optional_object< CToken > xd8_SELC;
  CIntElement* xe4_SESD;
  CVectorElement* xe8_SEPO;
  CIntElement* xec_LTYP;
  CColorElement* xf0_LCLR;
  CRealElement* xf4_LINT;
  CVectorElement* xf8_LOFF;
  CVectorElement* xfc_LDIR;
  CIntElement* x100_LFOT;
  CRealElement* x104_LFOR;
  CRealElement* x108_LSLA;
  CRealElement* x10c_ADV1;
  CRealElement* x110_ADV2;
  CRealElement* x114_ADV3;
  CRealElement* x118_ADV4;
  CRealElement* x11c_ADV5;
  CRealElement* x120_ADV6;
  CRealElement* x124_ADV7;
  CRealElement* x128_ADV8;
};
CHECK_SIZEOF(CGenDescription, 0x12c)

#endif // _CGENDESCRIPTION
