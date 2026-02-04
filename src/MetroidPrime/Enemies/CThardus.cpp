#include "MetroidPrime/Enemies/CThardus.hpp"

#include "MetroidPrime/CActorParameters.hpp"

#pragma inline_max_size(250)
CDestroyableRock::CDestroyableRock(
    TUniqueId id, bool active, const rstl::string& name, const CEntityInfo& info,
    const CTransform4f& xf, const CModelData& modelData, float mass, const CHealthInfo& health,
    const CDamageVulnerability& vulnerability, const CMaterialList& matList, CAssetId fsm,
    const CActorParameters& actParams, const CModelData& phazonModel, int w1)
: CAi(id, active, name, info, xf, modelData, modelData.GetBounds(), mass, health, vulnerability,
      matList, fsm, actParams, 0.3f, 0.8f)
, x2d8_phazonModel(phazonModel)
, x324_(0.f)
, x328_(0.f)
, x32c_thermalMag(actParams.GetThermalMag())
, x330_(1.f, 1.f, 1.f)
, x334_isCold(false)
, x335_usePhazonModel(false)
, x338_healthInfo(health)
, x341_(w1 == 0) {
  SetDoTargetDistanceTest(false);
  x2d8_phazonModel.SetSortThermal(true);
  SetDrawShadow(false);
}

void CDestroyableRock::PreThink(float dt, CStateManager& mgr) { CEntity::PreThink(dt, mgr); }

void CDestroyableRock::Think(float dt, CStateManager& mgr) {
  if (!GetActive()) {
    return;
  }

  float damageMag = x32c_thermalMag;
  if (x324_ > 0.f) {
    x324_ = CMath::Max(0.f, x324_ - dt);
    x330_ = CColor::Lerp(CColor(0.f, 0.f, 0.f), CColor(0.5f, 0.0f, 0.0f), x324_);
    if (x335_usePhazonModel) {
      damageMag = x324_ * 0.5f + damageMag;
    } else {
      damageMag = x324_ * 0.25f + damageMag;
    }
  }
  SetDamageMag(damageMag);
  CEntity::Think(dt, mgr);
}

void CThardus::RenderThermalSpot(float dt) const {
}