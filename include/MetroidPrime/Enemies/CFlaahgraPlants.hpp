#ifndef _CFLAAHGRAPLANTS
#define _CFLAAHGRAPLANTS
#include "types.h"

#include "Collision/COBBox.hpp"
#include "Kyoto/Particles/CElementGen.hpp"
#include "MetroidPrime/CDamageInfo.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"

class CPatternedInfo;
class CGenDescription;

class CFlaahgraPlants : public CActor {
public:
  CFlaahgraPlants(const TToken< CGenDescription >&, const CActorParameters&, TUniqueId, TAreaId,
                  TUniqueId, const CTransform4f&, const CDamageInfo&, const CVector3f&);

  // CEntity
  ~CFlaahgraPlants();
  void Accept(IVisitor& visitor);
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId sender, CStateManager& mgr);
  void Think(float dt, CStateManager& mgr);

  // CActor
  void AddToRenderer(const CFrustumPlanes& frustum, const CStateManager& mgr) const;
  rstl::optional_object< CAABox > GetTouchBounds() const;
  void Touch(CActor& actor, CStateManager& mgr);

private:
  rstl::auto_ptr< CElementGen > xe8_elementGen;
  TUniqueId xf0_ownerId;
  CDamageInfo xf4_damageInfo;
  rstl::optional_object< CAABox > x110_aabox;
  float x12c_lastDt;
  COBBox x130_obbox;
  TUniqueId x16c_colAct;
};

#endif // _CFLAAHGRAPLANTS
