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
  typedef rstl::optional_object< TLockedToken< CModel > > TParticleModel;
  typedef rstl::optional_object< TCachedToken< CGenDescription > > TChildGeneratorDesc;
  typedef rstl::optional_object< TCachedToken< CSwooshDescription > > TSwooshGeneratorDesc;
  typedef rstl::optional_object< TCachedToken< CCollisionResponseData > > TCollisionResponseDesc;

  const TCollisionResponseDesc& GetCollisionResponse() const { return x94_COLR; }
  const TParticleModel& GetOHEF() const { return x84_OHEF; }
  CWeaponDescription();
  ~CWeaponDescription();
  CVectorElement* x0_IORN;
  CVectorElement* x4_IVEC;
  CVectorElement* x8_PSOV;
  CModVectorElement* xc_PSVM;
  bool x10_VMD2;
  CIntElement* x14_PSLT;
  CVectorElement* x18_PSCL;
  CColorElement* x1c_PCOL;
  CVectorElement* x20_POFS;
  CVectorElement* x24_OFST;
  bool x28_APSO;
  bool x29_HOMG;
  bool x2a_AP11;
  bool x2b_AP21;
  bool x2c_AS11;
  bool x2d_AS12;
  bool x2e_AS13;
  CRealElement* x30_TRAT;
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
  CRealElement* xac_RNGE;
  CRealElement* xb0_FOFF;
};

#endif // _CWEAPONDESCRIPTION
