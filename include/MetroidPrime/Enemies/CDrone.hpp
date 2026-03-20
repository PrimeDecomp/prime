#ifndef _CDRONE
#define _CDRONE

#include "MetroidPrime/Enemies/CPatterned.hpp"

#include "MetroidPrime/CDamageInfo.hpp"
#include "MetroidPrime/CVisorFlare.hpp"

#include "Kyoto/Animation/CharacterCommon.hpp"

#include "rstl/vector.hpp"

class CDrone : public CPatterned {
public:
  CDrone(TUniqueId uid, const rstl::string& name, EFlavorType flavor, const CEntityInfo& info,
         const CTransform4f& xf, float f1, const CModelData& mData, const CPatternedInfo& pInfo,
         const CActorParameters& aParms, EMovementType moveType, EColliderType collider,
         EBodyType bodyType, const CDamageInfo& dInfo1, CAssetId aId1, const CDamageInfo& dInfo2,
         CAssetId aId2, rstl::vector< CVisorFlare::CFlareDef > flares,
         float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9,
         float f10, float f11, float f12, float f13, float f14, float f15, float f16,
         float f17, float f18, float f19, float f20, CAssetId crscId,
         float f21, float f22, float f23, float f24, int soundId, bool b1);
  ~CDrone();

  void Accept(IVisitor& visitor) override;

private:
  uchar x568_pad[0x838 - 0x568];
};
CHECK_SIZEOF(CDrone, 0x838)

#endif // _CDRONE
