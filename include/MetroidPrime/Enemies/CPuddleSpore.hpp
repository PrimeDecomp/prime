#ifndef _CPUDDLESPORE
#define _CPUDDLESPORE
#include "MetroidPrime/Enemies/CPatterned.hpp"
#include "MetroidPrime/Weapons/CProjectileInfo.hpp"
#include <Kyoto/Particles/CElementGen.hpp>

class CPuddleSpore : public CPatterned {
public:
  CPuddleSpore(const TUniqueId uid, const rstl::string& name, const EFlavorType,
               const CEntityInfo& info, const CTransform4f& xf, const CModelData& mData,
               const CPatternedInfo& pInfo, const EColliderType colType, const CAssetId glowFx,
               const float f1, const float f2, const float f3, const float f4, const float f5,
               const CActorParameters& actParms, const CAssetId weapon, const CDamageInfo& dInfo);

  const CAABox CalculateBoundingBox() const;

private:
  float x568_;
  float x56c_;
  float x570_;
  float x574_;
  float x578_;
  float x57c_;
  float x580_;
  CVector3f mBodyOrigin;
  float mHalfExtent;
  float mHeight;
  float x598_;
  float x59c_;
  CCollidableAABox x5a0_;
  u32 x5c8_;
  u32 x5cc_;
  TLockedToken< CGenDescription > x5d0_;
  rstl::vector< CElementGen > mParticles;
  CProjectileInfo mProjectileInfo;
  bool x614_24 : 1;
  bool x614_25 : 1;
  
  static int kEyeCount;
  static const char* kEyeLocators[];
};

CHECK_SIZEOF(CPuddleSpore, 0x618)


#endif
