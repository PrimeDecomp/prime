#ifndef _CSCRIPTDAMAGEABLETRIGGER
#define _CSCRIPTDAMAGEABLETRIGGER

#include "MetroidPrime/CActor.hpp"

#include "MetroidPrime/CFluidPlaneDoor.hpp"

#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CFrustumPlanes.hpp"

class CVisorParameters;

class CScriptDamageableTrigger : public CActor {
public:
  enum ECanOrbit {
    kCO_NoOrbit,
    kCO_Orbit,
  };

  CScriptDamageableTrigger(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                           const CVector3f& position, const CVector3f& extent,
                           const CHealthInfo& hInfo, const CDamageVulnerability& dVuln,
                           uint faceFlag, CAssetId patternTex1, CAssetId patternTex2,
                           CAssetId colorTex, ECanOrbit canOrbit, bool active,
                           const CVisorParameters& vParams);

  void Accept(IVisitor& visitor);
  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&);
  EWeaponCollisionResponseTypes GetCollisionResponseType(const CVector3f&, const CVector3f&,
                                                         const CWeaponMode&,
                                                         int /*EProjectileAttrib?*/) const;
  void Render(const CStateManager& mgr) const;
  void AddToRenderer(const CFrustumPlanes& frustum, const CStateManager& mgr) const;
  void PreRender(CStateManager& mgr, const CFrustumPlanes& frustum);
  const CDamageVulnerability* GetDamageVulnerability() const { return &x174_dVuln; }
  CHealthInfo* HealthInfo(CStateManager&) { return &x16c_hInfo; }
  void Think(float, CStateManager&);
  rstl::optional_object< CAABox > GetTouchBounds() const;

private:
  CFrustumPlanes xe8_frustum;
  CAABox x14c_bounds;
  CHealthInfo x164_origHInfo;
  CHealthInfo x16c_hInfo;
  CDamageVulnerability x174_dVuln;
  uint x1dc_faceFlag;
  float x1e0_alpha;
  CTransform4f x1e4_faceDir;
  CTransform4f x214_faceDirInv;
  CVector3f x244_faceTranslate;
  float x250_alphaTimer;
  CFluidPlaneDoor x254_fluidPlane;
  bool x300_24_notOccluded : 1;
  bool x300_25_alphaOut : 1;
  bool x300_26_outOfFrustum : 1;
  bool x300_27_invulnerable : 1;
  bool x300_28_canOrbit : 1;

  void SetLinkedObjectAlpha(float a, CStateManager& mgr);
  float GetPuddleAlphaScale() const;
};

#endif // _CSCRIPTDAMAGEABLETRIGGER
