#ifndef _CENERGYBALL
#define _CENERGYBALL

#include "MetroidPrime/Enemies/CPatterned.hpp"

#include "MetroidPrime/CDamageInfo.hpp"

class CEnergyBall : public CPatterned {
public:
  CEnergyBall(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
              const CTransform4f& xf, const CModelData& mData, const CActorParameters& aParms,
              const CPatternedInfo& pInfo, int w1, float f1, const CDamageInfo& dInfo1, float f2,
              uint a1, ushort sfxId1, uint a2, uint a3, ushort sfxId2, float f3, float f4,
              uint a4, const CDamageInfo& dInfo2, float f5);
  ~CEnergyBall();

  void Accept(IVisitor& visitor) override;

private:
  uchar x568_pad[0x5F0 - 0x568];
};
CHECK_SIZEOF(CEnergyBall, 0x5F0)

#endif // _CENERGYBALL
