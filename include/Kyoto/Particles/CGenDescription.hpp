#ifndef _CGENDESCRIPTION
#define _CGENDESCRIPTION

#include "Kyoto/CToken.hpp"
#include "types.h"

#include "Kyoto/Particles/CSpawnSystemKeyframeData.hpp"
#include "Kyoto/Particles/IElement.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/single_ptr.hpp"

class CModel;
class CElectricDescription;
class CSwooshDescription;

class CGenDescription {
public:
  CGenDescription();
  ~CGenDescription();

  IElement* x0_PSLT;
  IElement* x4_PSWT;
  IElement* x8_PSTS;
  IElement* xc_POFS;
  IElement* x10_SEED;
  IElement* x14_LENG;
  IElement* x18_WIDT;
  IElement* x1c_MAXP;
  IElement* x20_GRTE;
  IElement* x24_COLR;
  IElement* x28_LTME;
  IElement* x2c_EMTR;
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
  bool x32_25_OPTS : 1;
  bool x32_24_CIND : 1;
  IElement* x34_MBSP;
  IElement* x38_SIZE;
  IElement* x3c_ROTA;
  IElement* x40_TEXR;
  IElement* x44_TIND;
  rstl::optional_object< TCachedToken< CModel > > x48_PMDL;
  IElement* x58_PMOP;
  IElement* x5c_PMRT;
  IElement* x60_PMSC;
  IElement* x64_PMCL;
  IElement* x68_VEL1;
  IElement* x6c_VEL2;
  IElement* x70_VEL3;
  IElement* x74_VEL4;
  rstl::optional_object< TCachedToken< CGenDescription > > x78_ICTS;
  IElement* x88_NCSY;
  IElement* x8c_CSSD;
  rstl::optional_object< TCachedToken< CGenDescription > > x90_IDTS;
  IElement* xa0_NDSY;
  rstl::optional_object< TCachedToken< CGenDescription > > xa4_IITS;
  IElement* xb4_PISY;
  IElement* xb8_SISY;
  rstl::single_ptr< CSpawnSystemKeyframeData > xbc_KSSM;
  rstl::optional_object< TCachedToken< CSwooshDescription > > xc0_SSWH;
  IElement* xd0_SSSD;
  IElement* xd4_SSPO;
  rstl::optional_object< CToken > xd8_SELC;
  IElement* xe4_SESD;
  IElement* xe8_SEPO;
  IElement* xec_LTYP;
  IElement* xf0_LCLR;
  IElement* xf4_LINT;
  IElement* xf8_LOFF;
  IElement* xfc_LDIR;
  IElement* x100_LFOT;
  IElement* x104_LFOR;
  IElement* x108_LSLA;
  IElement* x10c_ADV1;
  IElement* x110_ADV2;
  IElement* x114_ADV3;
  IElement* x118_ADV4;
  IElement* x11c_ADV5;
  IElement* x120_ADV6;
  IElement* x124_ADV7;
  IElement* x128_ADV8;
};
CHECK_SIZEOF(CGenDescription, 0x12c)

#endif // _CGENDESCRIPTION
