#include "Weapons/CWeaponDescription.hpp"
#include "Kyoto/Alloc/CMemory.hpp"

CWeaponDescription::CWeaponDescription()
: x0_IORN(nullptr)
, x4_IVEC(nullptr)
, x8_PSOV(nullptr)
, xc_PSVM(nullptr)
, x10_VMD2(false)
, x14_PSLT(nullptr)
, x18_PSCL(nullptr)
, x1c_PCOL(nullptr)
, x20_POFS(nullptr)
, x24_OFST(nullptr)
, x28_APSO(false)
, x2a_AP11(false)
, x2b_AP21(false)
, x2c_AS11(false)
, x2d_AS12(false)
, x2e_AS13(false)
, x30_TRAT(nullptr)
, xa4_EWTR(true)
, xa5_LWTR(true)
, xa6_SWTR(true)
, xa8_PJFX(-1)
, xac_RNGE(nullptr)
, xb0_FOFF(nullptr) {}

CWeaponDescription::~CWeaponDescription() {
  delete x4_IVEC;
  delete x0_IORN;
  delete xc_PSVM;
  delete x8_PSOV;
  delete x14_PSLT;
  delete x18_PSCL;
  delete x1c_PCOL;
  delete x20_POFS;
  delete x24_OFST;
  delete x30_TRAT;
  delete xac_RNGE;
  delete xb0_FOFF;
}
