#ifndef _CSCRIPTCONTRAPTION
#define _CSCRIPTCONTRAPTION
#include "MetroidPrime/CDamageInfo.hpp"
#include "MetroidPrime/ScriptObjects/CScriptActor.hpp"

class CFlameThrower;
class CWeaponDescription;
class CScriptContraption : public CScriptActor {
public:
  CScriptContraption(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                     const CTransform4f& xf, const CModelData& mData, const CAABox& aabox,
                     const CMaterialList& matList, const float mass, const float zMomentum,
                     const CHealthInfo& hInfo, const CDamageVulnerability& dVuln,
                     const CActorParameters& aParams, const CAssetId part, const CDamageInfo& dInfo,
                     const bool active);

  void Think(float dt, CStateManager& mgr) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;
  void DoUserAnimEvent(CStateManager& mgr, const CInt32POINode& node, EUserEventType type,
                       float dt) override;
  void Accept(IVisitor& visitor) override;

private:
  CFlameThrower* CreateFlameThrower(const rstl::string& name, CStateManager& mgr);

  rstl::list< rstl::pair< TUniqueId, rstl::string > > x2e8_children;
  TToken< CWeaponDescription > x300_flameThrowerGenDesc;
  CAssetId x308_flameFxId;
  CDamageInfo x30c_dInfo;
};
#endif
