#ifndef _CWEAPONDESCRIPTION
#define _CWEAPONDESCRIPTION

#include "Kyoto/Particles/CModVectorElement.hpp"
#include "Kyoto/Particles/CVectorElement.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/single_ptr.hpp"

class CModel;
class CElectricDescription;
class CSwooshDescription;
class CGenDescription;
class CCollisionResponseData;

class CWeaponDescription {
public:
  typedef rstl::optional_object< TCachedToken< CModel > > TParticleModel;
  typedef rstl::optional_object< TCachedToken< CGenDescription > > TChildGeneratorDesc;
  typedef rstl::optional_object< TCachedToken< CSwooshDescription > > TSwooshGeneratorDesc;
  typedef rstl::optional_object< TCachedToken< CCollisionResponseData > > TCollisionResponseDesc;

  CWeaponDescription();
  ~CWeaponDescription();
  rstl::single_ptr< CVectorElement > x0_IORN;
  rstl::single_ptr< CVectorElement > x4_IVEC;
  rstl::single_ptr< CVectorElement > x8_PSOV;
  rstl::single_ptr< CModVectorElement > xc_PSVM;
  bool x10_VMD2;
  rstl::single_ptr< CIntElement > x14_PSLT;
  rstl::single_ptr< CVectorElement > x18_PSCL;
  rstl::single_ptr< CColorElement > x1c_PCOL;
  rstl::single_ptr< CVectorElement > x20_POFS;
  rstl::single_ptr< CVectorElement > x24_OFST;
  bool x28_APSO;
  bool x29_HOMG;
  bool x2a_AP11;
  bool x2b_AP21;
  bool x2c_AS11;
  bool x2d_AS12;
  bool x2e_AS13;
  rstl::single_ptr< CRealElement > x30_TRAT;
  TChildGeneratorDesc x34_APSM;
  TChildGeneratorDesc x44_APS2;
  TSwooshGeneratorDesc x54_ASW1;
  TSwooshGeneratorDesc x64_ASW2;
  TSwooshGeneratorDesc x74_ASW3;
  TParticleModel x84_OHEF;
  TCollisionResponseDesc x94_COLR;
  bool xa4_EWTR;
  bool xa5_LWTR;
  bool xa6_SWTR;
  int xa8_PJFX;
  rstl::single_ptr< CRealElement > xac_RNGE;
  rstl::single_ptr< CRealElement > xb0_FOFF;
};

#endif // _CWEAPONDESCRIPTION
