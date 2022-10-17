#ifndef _CGENDESCRIPTION
#define _CGENDESCRIPTION

#include "types.h"

#include "Kyoto/Particles/IElement.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/single_ptr.hpp"

class CModel;
class CElectricDescription;
class CSwooshDescription;
class CSpawnSystemKeyframeData;

class CGenDescription {
public:
  typedef rstl::optional_object< TCachedToken< CModel > > TParticleModel;
  typedef rstl::optional_object< TCachedToken< CGenDescription > > TChildGeneratorDesc;
  typedef rstl::optional_object< TCachedToken< CSwooshDescription > > TSwooshGeneratorDesc;
  typedef TCachedToken< CElectricDescription > TElectricGeneratorDesc;

  CGenDescription();
  ~CGenDescription();

private:
  rstl::single_ptr< CIntElement > x0_PSLT;
  rstl::single_ptr< CIntElement > x4_PSWT;
  rstl::single_ptr< CRealElement > x8_PSTS;
  rstl::single_ptr< CVectorElement > xc_POFS;
  rstl::single_ptr< CIntElement > x10_SEED;
  rstl::single_ptr< CRealElement > x14_LENG;
  rstl::single_ptr< CRealElement > x18_WIDT;
  rstl::single_ptr< CIntElement > x1c_MAXP;
  rstl::single_ptr< CRealElement > x20_GRTE;
  rstl::single_ptr< CColorElement > x24_COLR;
  rstl::single_ptr< CIntElement > x28_LTME;
  rstl::single_ptr< CEmitterElement > x2c_EMTR;
  bool x30_28_SORT : 1;
  bool x31_24_MBLR : 1;
  bool x30_24_LINE : 1;
  bool x30_29_LIT_ : 1;
  bool x30_26_AAPH : 1;
  bool x30_27_ZBUF : 1;
  bool x30_25_FXLL : 1;
  bool x31_25_PMAB : 1;
  bool x31_31_VMD4 : 1;
  bool x31_30_VMD3 : 1;
  bool x31_29_VMD2 : 1;
  bool x31_28_VMD1 : 1;
  bool x32_25_OPTS : 1;
  bool x31_26_PMUS : 1;
  bool x31_27_PMOO : 1;
  bool x32_24_CIND : 1;
  bool x30_30_ORNT : 1;
  bool x30_31_RSOP : 1;
  rstl::single_ptr< CIntElement > x34_MBSP;
  rstl::single_ptr< CRealElement > x38_SIZE;
  rstl::single_ptr< CRealElement > x3c_ROTA;
  rstl::single_ptr< CUVElement > x40_TEXR;
  rstl::single_ptr< CUVElement > x44_TIND;
  TParticleModel x48_PMDL;
  rstl::single_ptr< CVectorElement > x58_PMOP;
  rstl::single_ptr< CVectorElement > x5c_PMRT;
  rstl::single_ptr< CVectorElement > x60_PMSC;
  rstl::single_ptr< CColorElement > x64_PMCL;
  rstl::single_ptr< CModVectorElement > x68_VEL1;
  rstl::single_ptr< CModVectorElement > x6c_VEL2;
  rstl::single_ptr< CModVectorElement > x70_VEL3;
  rstl::single_ptr< CModVectorElement > x74_VEL4;
  TChildGeneratorDesc x78_ICTS;
  rstl::single_ptr< CIntElement > x88_NCSY;
  rstl::single_ptr< CIntElement > x8c_CSSD;
  TChildGeneratorDesc x90_IDTS;
  rstl::single_ptr< CIntElement > xa0_NDSY;
  TChildGeneratorDesc xa4_IITS;
  rstl::single_ptr< CIntElement > xb4_PISY;
  rstl::single_ptr< CIntElement > xb8_SISY;
  rstl::single_ptr< CSpawnSystemKeyframeData > xbc_KSSM;
  TSwooshGeneratorDesc xc0_SSWH;
  rstl::single_ptr< CIntElement > xd0_SSSD;
  rstl::single_ptr< CVectorElement > xd4_SSPO;
  TElectricGeneratorDesc xd8_SELC;
  rstl::single_ptr< CIntElement > xe4_SESD;
  rstl::single_ptr< CVectorElement > xe8_SEPO;
  rstl::single_ptr< CIntElement > xec_LTYP;
  rstl::single_ptr< CColorElement > xf0_LCLR;
  rstl::single_ptr< CRealElement > xf4_LINT;
  rstl::single_ptr< CVectorElement > xf8_LOFF;
  rstl::single_ptr< CVectorElement > xfc_LDIR;
  rstl::single_ptr< CIntElement > x100_LFOT;
  rstl::single_ptr< CRealElement > x104_LFOR;
  rstl::single_ptr< CRealElement > x108_LSLA;
  rstl::single_ptr< CRealElement > x10c_ADV1;
  rstl::single_ptr< CRealElement > x110_ADV2;
  rstl::single_ptr< CRealElement > x114_ADV3;
  rstl::single_ptr< CRealElement > x118_ADV4;
  rstl::single_ptr< CRealElement > x11c_ADV5;
  rstl::single_ptr< CRealElement > x120_ADV6;
  rstl::single_ptr< CRealElement > x124_ADV7;
  rstl::single_ptr< CRealElement > x128_ADV8;
};
CHECK_SIZEOF(CGenDescription, 0x12c)

#endif // _CGENDESCRIPTION
