#ifndef _CENERGYBALL
#define _CENERGYBALL
#include "MetroidPrime/Enemies/CPatterned.hpp"

class CEnergyBall : public CPatterned {
public:
  CEnergyBall(const TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
              const CTransform4f& xf, const CModelData& mData, const CActorParameters& actParms,
              const CPatternedInfo& pInfo, const int w1, const float f1, const CDamageInfo& dInfo1,
              const float f2, const CAssetId a1, const ushort sfxId1, const CAssetId a2,
              const CAssetId a3, const ushort sfxId2, const float f3, const float f4,
              const CAssetId a4, const CDamageInfo& dInfo2, const float f5);
  ~CEnergyBall();

private:
  CSteeringBehaviors mSteeringBehaviors;
  float x56c;
  int x570;
  float x574;
  CDamageInfo x578;
  float mInitialTurnSpeed;
  float x598;
  CAssetId x59c;
  ushort x5a0;
  CAssetId x5a4;
  rstl::optional_object< TToken< CElectricDescription > > x5a8;
  ushort x5b4;
  float x5b8;
  float x5bc;
  rstl::optional_object< TToken< CGenDescription > > x5c0;
  CDamageInfo x5cc;
  float x5e8;
};
#endif
