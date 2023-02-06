#ifndef _CSCRIPTVISORFLARE
#define _CSCRIPTVISORFLARE

#include "MetroidPrime/CActor.hpp"

#include "MetroidPrime/CVisorFlare.hpp"

class CScriptVisorFlare : public CActor {
  CVisorFlare xe8_flare;
  bool x11c_notInRenderLast;

public:
  CScriptVisorFlare(TUniqueId uid, const rstl::string& name, const CEntityInfo& info, bool active,
                    const CVector3f& pos, CVisorFlare::EBlendMode blendMode, bool, float, float, float, uint, uint,
                    const rstl::vector<CVisorFlare::CFlareDef>& flares);
  ~CScriptVisorFlare();

  void Accept(IVisitor& visitor);
  void Think(float, CStateManager& stateMgr);
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId, CStateManager& stateMgr);
  void PreRender(CStateManager&, const CFrustumPlanes&);
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const;
  void Render(const CStateManager&) const;
};

#endif // _CSCRIPTVISORFLARE
