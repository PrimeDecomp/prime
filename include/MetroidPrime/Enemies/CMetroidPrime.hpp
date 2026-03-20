#ifndef _CMETROIDPRIME
#define _CMETROIDPRIME

#include "MetroidPrime/CActorParameters.hpp"
#include "MetroidPrime/CDamageInfo.hpp"
#include "MetroidPrime/CDamageVulnerability.hpp"
#include "MetroidPrime/Cameras/CCameraShakeData.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"
#include "MetroidPrime/Enemies/CPatternedInfo.hpp"
#include "MetroidPrime/Enemies/CPoisonProjectile.hpp"
#include "MetroidPrime/Weapons/CBeamInfo.hpp"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/SObjectTag.hpp"

#include "rstl/reserved_vector.hpp"

class CGenDescription;
class CInputStream;
struct CMetroidPrimeData;

class CMetroidPrime : public CPatterned {
public:
  struct CMetroidPrimeAttackWeights {
    rstl::reserved_vector< float, 14 > x0_floats;

    explicit CMetroidPrimeAttackWeights(CInputStream& in);
  };

  struct CVulnerabilityEntry {
    uint x0_propertyCount;
    CDamageVulnerability x4_damageVulnerability;
    CColor x6c_color;
    uint x70_[2];

    explicit CVulnerabilityEntry(CInputStream& in);
  };
};
NESTED_CHECK_SIZEOF(CMetroidPrime, CMetroidPrimeAttackWeights, 0x3C)
NESTED_CHECK_SIZEOF(CMetroidPrime, CVulnerabilityEntry, 0x78)

struct CMetroidPrimeIceAttack {
  uint x0_propertyCount;
  CAssetId x4_particle1;
  CAssetId x8_particle2;
  CAssetId xc_particle3;
  CDamageInfo x10_dInfo;
  float x2c_;
  float x30_;
  CAssetId x34_texture;
  ushort x38_;
  ushort x3a_;

  explicit CMetroidPrimeIceAttack(CInputStream& in);
};
CHECK_SIZEOF(CMetroidPrimeIceAttack, 0x3C)

struct CMetroidPrimeParasiteQueenAttack {
  CBeamInfo x0_beamInfo;
  uint x44_;
  CDamageInfo x48_dInfo1;
  rstl::reserved_vector< CAssetId, 8 > x64_struct5;
  float x88_;
  CDamageInfo x8c_dInfo2;

  explicit CMetroidPrimeParasiteQueenAttack(CInputStream& in);
};
CHECK_SIZEOF(CMetroidPrimeParasiteQueenAttack, 0xA8)

struct CMetroidPrimeData {
  uint x0_propertyCount;
  CPatternedInfo x4_patternedInfo;
  CActorParameters x13c_actorParms;
  uint x1a4_;
  CCameraShakeData x1a8_;
  CCameraShakeData x27c_;
  CCameraShakeData x350_;
  CMetroidPrimeIceAttack x424_;
  CAssetId x460_particle1;
  rstl::reserved_vector< CMetroidPrimeParasiteQueenAttack, 4 > x464_;
  CAssetId x708_wpsc1;
  CDamageInfo x70c_dInfo1;
  CCameraShakeData x728_shakeData1;
  CAssetId x7fc_wpsc2;
  CDamageInfo x800_dInfo2;
  CCameraShakeData x81c_shakeData2;
  CPoisonInfo x8f0_;
  CDamageInfo x92c_;
  CCameraShakeData x948_;
  CAssetId xa1c_particle2;
  CAssetId xa20_swoosh;
  CAssetId xa24_particle3;
  CAssetId xa28_particle4;
  rstl::reserved_vector< CMetroidPrime::CVulnerabilityEntry, 4 > xa2c_;

  explicit CMetroidPrimeData(CInputStream& in);

  const CPatternedInfo& GetPatternedInfo() const { return x4_patternedInfo; }

  void LoadPrimeStruct4s(CInputStream& in);
  void LoadPrimeStruct6s(CInputStream& in);
};
CHECK_SIZEOF(CMetroidPrimeData, 0xC10)

#endif // _CMETROIDPRIME
