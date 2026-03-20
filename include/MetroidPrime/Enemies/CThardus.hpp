#ifndef _CTHARDUS
#define _CTHARDUS

#include "MetroidPrime/Enemies/CPatterned.hpp"

class CDestroyableRock : public CAi {
public:
  CDestroyableRock(TUniqueId id, bool active, const rstl::string& name, const CEntityInfo& info,
                   const CTransform4f& xf, const CModelData& modelData, float mass,
                   const CHealthInfo& health, const CDamageVulnerability& vulnerability,
                   const CMaterialList& matList, CAssetId fsm, const CActorParameters& actParams,
                   const CModelData& phazonModel, int w1);

  void PreThink(float dt, CStateManager& mgr) override;
  void Think(float dt, CStateManager& mgr) override;

private:
  CModelData x2d8_phazonModel;
  float x324_;
  float x328_;
  float x32c_thermalMag;
  CColor x330_;
  bool x334_isCold;
  bool x335_usePhazonModel;
  CHealthInfo x338_healthInfo;
  bool x340_;
  bool x341_;
};

class CThardus : public CPatterned {
public:
  CThardus(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
           const CTransform4f& xf, const CModelData& mData,
           const CActorParameters& actParms, const CPatternedInfo& pInfo,
           const rstl::vector< CModelData >& models1,
           const rstl::vector< CModelData >& models2,
           uint particle1, uint particle2, uint particle3,
           float f1, float f2, float f3, float f4, float f5, float f6,
           uint stateMachine, uint particle4, uint particle5,
           uint particle6, uint particle7, uint particle8,
           uint particle9, uint texture, uint sfxID1,
           uint particle10, uint sfxID2, uint sfxID3, uint sfxID4);

  void RenderThermalSpot(float dt) const;
  void ShakeScreen(CStateManager& mgr, const CVector3f& position, const float, const float,
                   const float);
  void StartTimedThermalFlash(CStateManager& mgr, float, CActor& actor);

private:
  uchar x568_pad[0x960 - 0x568];
};
CHECK_SIZEOF(CThardus, 0x960)

#endif // _CTHARDUS
