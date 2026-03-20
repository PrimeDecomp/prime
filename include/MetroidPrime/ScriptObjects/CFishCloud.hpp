#ifndef _CFISHCLOUD
#define _CFISHCLOUD

#include "MetroidPrime/CActor.hpp"

#include "MetroidPrime/CAnimRes.hpp"
#include "Kyoto/Graphics/CColor.hpp"

class CFishCloud : public CActor {
public:
  CFishCloud(TUniqueId uid, bool active, const rstl::string& name, const CEntityInfo& info,
             const CVector3f& scale, const CTransform4f& xf, const CModelData& mData,
             const CAnimRes& aRes, int numBoids, float speed,
             float separationRadius, float cohesionMagnitude, float alignmentWeight,
             float separationMagnitude, float weaponRepelMagnitude, float playerRepelMagnitude,
             float containmentMagnitude, float scatterVel, float maxScatterAngle,
             float weaponRepelDampingSpeed, float playerRepelDampingSpeed,
             float containmentRadius, int updateShift, const CColor& color,
             bool killable, float weaponKillRadius,
             CAssetId part1, int partCount1, CAssetId part2, int partCount2,
             CAssetId part3, int partCount3, CAssetId part4, int partCount4,
             int deathSfx, bool repelFromThreats, bool hotInThermal);
  ~CFishCloud();

  void Accept(IVisitor& visitor) override;

  bool AddRepulsor(TUniqueId source, bool swirl, float radius, float priority);
  bool AddAttractor(TUniqueId source, bool swirl, float radius, float priority);
  void RemoveRepulsor(TUniqueId source);
  void RemoveAttractor(TUniqueId source);

private:
  uchar xe8_pad[0x258 - 0xe8];
};
CHECK_SIZEOF(CFishCloud, 0x258)

#endif // _CFISHCLOUD
