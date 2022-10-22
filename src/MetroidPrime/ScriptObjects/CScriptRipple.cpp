#include "MetroidPrime/ScriptObjects/CScriptRipple.hpp"

#include "MetroidPrime/CFluidPlaneCPU.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/ScriptObjects/CScriptWater.hpp"

CScriptRipple::CScriptRipple(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                             const CVector3f& vec, bool active, float f1)
: CEntity(uid, info, active, name), x34_magnitude(f1 >= 0.f ? f1 : 0.5f), x38_center(vec) {}

CScriptRipple::~CScriptRipple() {}

void CScriptRipple::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) {
  switch (msg) {
  case (kSM_Play): {
    if (!GetActive()) {
      return;
    }

    rstl::vector< SConnection >::const_iterator conn = GetConnectionList().begin();
    for (; conn != GetConnectionList().end(); ++conn) {
      if (conn->x0_state != kSS_Active || conn->x4_msg != kSM_Next) {
        continue;
      }

      const CStateManager::TIdListResult& search = mgr.GetIdListForScript(conn->x8_objId);
      if (search.first != search.second) {
        if (CScriptWater* water =
                TCastToPtr< CScriptWater >(mgr.ObjectById(search.first->second))) {
          water->FluidPlane().AddRipple(x34_magnitude, GetUniqueId(), x38_center, *water, mgr);
        }
      }
    }
    break;
  }
  default:
    CEntity::AcceptScriptMsg(msg, uid, mgr);
    break;
  }
}

void CScriptRipple::Think(float, CStateManager&) override {}

void CScriptRipple::Accept(IVisitor& visitor) { visitor.Visit(*this); }
