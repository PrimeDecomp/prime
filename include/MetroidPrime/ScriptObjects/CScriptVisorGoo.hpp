#ifndef _CSCRIPTVISORGOO
#define _CSCRIPTVISORGOO

#include "MetroidPrime/CActor.hpp"

class CGenDescription;
class CElectricDescription;

class CScriptVisorGoo : public CActor {
public:
  CScriptVisorGoo(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                  const CTransform4f& xf, CAssetId particle, CAssetId electric, float minDist,
                  float maxDist, float nearProb, float farProb, const CColor& color, int sfx,
                  bool forceShow, bool active);
  ~CScriptVisorGoo();

  void Accept(IVisitor& visitor);
  void Think(float, CStateManager& stateMgr);
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId, CStateManager& stateMgr);
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const;
  void Render(const CStateManager&) const;
  rstl::optional_object< CAABox > GetTouchBounds() const;
  void Touch(CActor&, CStateManager&);

private:
  TToken< CGenDescription > xe8_particleDesc;
  TToken< CElectricDescription > xf0_electricDesc;
  ushort xf8_sfx;
  CAssetId xfc_particleId;
  CAssetId x100_electricId;
  float x104_minDist;
  float x108_maxDist;
  float x10c_nearProb;
  float x110_farProb;
  CColor x114_color;
  bool x118_24_angleTest : 1;
};

#endif // _CSCRIPTVISORGOO
