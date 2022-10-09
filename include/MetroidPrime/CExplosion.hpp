#ifndef _CEXPLOSION
#define _CEXPLOSION

#include "types.h"

#include "MetroidPrime/CEffect.hpp"

#include "rstl/single_ptr.hpp"

class CParticleGen;
class CGenDescription;
class CElectricDescription;

class CExplosion : public CEffect {
public:
  CExplosion(const TLockedToken< CGenDescription >& particle, TUniqueId uid, bool active,
             const CEntityInfo& info, const rstl::string& name, const CTransform4f& xf, uint flags,
             const CVector3f& scale, const CColor& color);

  // CEntity
  ~CExplosion();
  void Accept(IVisitor& visitor) override;
  void Think(float dt, CStateManager& mgr) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;

  // CActor
  void PreRender(CStateManager&, const CFrustumPlanes&) override;
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const override;
  void Render(const CStateManager&) const override;
  void CalculateRenderBounds() override;

public:
  rstl::single_ptr< CParticleGen > xe8_particleGen;
  TUniqueId xec_explosionLight;
  union {
    const CGenDescription* xf0_particleDesc;
    const CElectricDescription* xf0_electricDesc;
  };
  bool xf4_24_renderThermalHot : 1;
  bool xf4_25_ : 1;
  bool xf4_26_renderXray : 1;
  float xf8_time;
};
CHECK_SIZEOF(CExplosion, 0x100)

#endif // _CEXPLOSION
