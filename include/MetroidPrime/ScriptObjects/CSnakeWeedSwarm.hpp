#ifndef _CSNAKEWEEDSWARM
#define _CSNAKEWEEDSWARM

#include "MetroidPrime/CActor.hpp"

#include "MetroidPrime/CDamageInfo.hpp"

class CAnimRes;

class CSnakeWeedSwarm : public CActor {
public:
  CSnakeWeedSwarm(TUniqueId uid, bool active, const rstl::string& name,
                  const CEntityInfo& info, const CVector3f& pos, const CVector3f& scale,
                  const CAnimRes& animRes, const CActorParameters& aParms, float f1, float f2,
                  float f3, float f4, float f5, float f6, float f7, float f8, float f9,
                  float f10, float f11, float f12, float f13, float f14,
                  const CDamageInfo& dInfo, float f15, uint sfxId1, uint sfxId2, uint sfxId3,
                  uint w4, uint w5, uint w6, float f16);
  ~CSnakeWeedSwarm();

  void Accept(IVisitor& visitor) override;

private:
  uchar xe8_pad[0x208 - 0xe8];
};
CHECK_SIZEOF(CSnakeWeedSwarm, 0x208)

#endif // _CSNAKEWEEDSWARM
