#ifndef _CSCRIPTACTOR
#define _CSCRIPTACTOR

#include "types.h"

#include "MetroidPrime/CDamageVulnerability.hpp"
#include "MetroidPrime/CHealthInfo.hpp"
#include "MetroidPrime/CPhysicsActor.hpp"

class CActorParameters;

class CScriptActor : public CPhysicsActor {
public:
  CScriptActor(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
               const CTransform4f& xf, const CModelData& mData, const CAABox& aabb,
               const CMaterialList& matList, float mass, float zMomentum, const CHealthInfo& hInfo,
               const CDamageVulnerability& dVuln, const CActorParameters& actParms, bool looping,
               bool active, uint shaderIdx, float xrayAlpha, bool noThermalHotZ, bool castsShadow,
               bool scaleAdvancementDelta, bool materialFlag54);

  // CEntity
  ~CScriptActor();
  void Accept(IVisitor& visitor);
  void Think(float dt, CStateManager& mgr);
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr);

  // CActor
  void PreRender(CStateManager&, const CFrustumPlanes&);
  CHealthInfo* HealthInfo(CStateManager&);
  const CDamageVulnerability* GetDamageVulnerability() const;
  rstl::optional_object< CAABox > GetTouchBounds() const;
  void Touch(CActor&, CStateManager&);

  // CPhysicsActor
  EWeaponCollisionResponseTypes GetCollisionResponseType(const CVector3f&, const CVector3f&,
                                                         const CWeaponMode&,
                                                         int) const;
  CAABox GetSortingBounds(const CStateManager&) const;

  bool IsPlayerActor() const { return x2e3_24_isPlayerActor; }

private:
  CHealthInfo x258_initialHealth;
  CHealthInfo x260_currentHealth;
  CDamageVulnerability x268_damageVulnerability;
  float x2d0_fadeInTime;
  float x2d4_fadeOutTime;
  int x2d8_shaderIdx;
  float x2dc_xrayAlpha;
  TUniqueId x2e0_triggerId;
  bool x2e2_24_noThermalHotZ : 1;
  bool x2e2_25_dead : 1;
  bool x2e2_26_animating : 1;
  bool x2e2_27_xrayAlphaEnabled : 1;
  bool x2e2_28_inXrayAlpha : 1;
  bool x2e2_29_processModelFlags : 1;
  bool x2e2_30_scaleAdvancementDelta : 1;
  bool x2e2_31_materialFlag54 : 1;
  bool x2e3_24_isPlayerActor : 1;
};

#endif // _CSCRIPTACTOR
