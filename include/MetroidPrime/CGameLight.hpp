#ifndef _CGAMELIGHT
#define _CGAMELIGHT

#include "MetroidPrime/CActor.hpp"

#include "Kyoto/Graphics/CLight.hpp"

class CGameLight : public CActor {
public:
  CGameLight(TUniqueId uid, TAreaId aid, bool active, const rstl::string& name,
             const CTransform4f& xf, TUniqueId parentId, const CLight& light, uint sourceId,
             uint priority, float lifeTime);

  void Accept(IVisitor& visitor) override;
  void Think(float dt, CStateManager& mgr) override;
  void SetLightPriorityAndId();
  void SetLight(const CLight& light);
  CLight GetLight() const;

private:
  TUniqueId xe8_parentId;
  CLight xec_light;
  uint x13c_lightId;
  uint x140_priority;
  float x144_lifeTime;
};
CHECK_SIZEOF(CGameLight, 0x148)

#endif // _CGAMELIGHT
