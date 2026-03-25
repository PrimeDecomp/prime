#ifndef _CICESHEEGOTH
#define _CICESHEEGOTH

#include "types.h"

#include "MetroidPrime/CDamageInfo.hpp"
#include "MetroidPrime/CDamageVulnerability.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"

#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/SObjectTag.hpp"

class CIceSheegothData {
public:
  CIceSheegothData(CInputStream& in, int propCount);
  CIceSheegothData(CIceSheegothData&);

  float GetX0() const { return x0_; }
  float GetX4() const { return x4_; }
  const CVector3f& GetX8() const { return x8_; }
  float GetX14() const { return x14_; }
  const CDamageVulnerability& GetX18() const { return x18_; }
  const CDamageVulnerability& GetX80() const { return x80_; }
  const CDamageVulnerability& GetXe8() const { return xe8_; }
  CAssetId GetX150() const { return x150_; }
  const CDamageInfo& GetX154() const { return x154_; }
  float GetX170() const { return x170_; }
  float GetX174() const { return x174_; }
  CAssetId GetX178() const { return x178_; }
  CAssetId GetFireBreathResId() const { return x17c_fireBreathResId; }
  const CDamageInfo& GetFireBreathDamage() const { return x180_fireBreathDamage; }
  CAssetId GetX19c() const { return x19c_; }
  CAssetId GetX1a0() const { return x1a0_; }
  CAssetId GetX1a4() const { return x1a4_; }
  CAssetId GetX1a8() const { return x1a8_; }
  CAssetId GetX1ac() const { return x1ac_; }
  float GetX1b0() const { return x1b0_; }
  float GetX1b4() const { return x1b4_; }
  const CDamageInfo& GetX1b8() const { return x1b8_; }
  short GetX1d4() const { return x1d4_; }
  float GetX1d8() const { return x1d8_; }
  float GetX1dc() const { return x1dc_; }
  float GetMaxInterestTime() const { return x1e0_maxInterestTime; }
  CAssetId GetX1e4() const { return x1e4_; }
  short GetX1e8() const { return x1e8_; }
  CAssetId GetX1ec() const { return x1ec_; }
  bool GetX1f0_24() const { return x1f0_24_; }
  bool GetX1f0_25() const { return x1f0_25_; }

  static int GetNumProperties() { return skNumProperties; }

private:
  float x0_;
  float x4_;
  CVector3f x8_;
  float x14_;
  CDamageVulnerability x18_;
  CDamageVulnerability x80_;
  CDamageVulnerability xe8_;
  CAssetId x150_;
  CDamageInfo x154_;
  float x170_;
  float x174_;
  CAssetId x178_;
  CAssetId x17c_fireBreathResId;
  CDamageInfo x180_fireBreathDamage;
  CAssetId x19c_;
  CAssetId x1a0_;
  CAssetId x1a4_;
  CAssetId x1a8_;
  CAssetId x1ac_;
  float x1b0_;
  float x1b4_;
  CDamageInfo x1b8_;
  short x1d4_;
  float x1d8_;
  float x1dc_;
  float x1e0_maxInterestTime;
  CAssetId x1e4_;
  short x1e8_;
  CAssetId x1ec_;
  bool x1f0_24_ : 1;
  bool x1f0_25_ : 1;

  static const int skNumProperties;
};
CHECK_SIZEOF(CIceSheegothData, 0x1f4)

class CIceSheegoth : public CPatterned {
public:
  CIceSheegoth(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
               const CTransform4f& xf, const CModelData& mData, const CPatternedInfo& pInfo,
               const CActorParameters& actParms, const CIceSheegothData& sheegothData);

  ~CIceSheegoth() override;
  void Accept(IVisitor& visitor) override;

private:
  uchar x568_pad[0xb30 - 0x568];
};
CHECK_SIZEOF(CIceSheegoth, 0xb30)

#endif // _CICESHEEGOTH
