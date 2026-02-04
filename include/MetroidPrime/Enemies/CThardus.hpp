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
  void RenderThermalSpot(float dt) const;
  void ShakeScreen(CStateManager& mgr, const CVector3f& position, const float, const float,
                   const float);
  void StartTimedThermalFlash(CStateManager& mgr, float, CActor& actor);
};
#endif
