#include "MetroidPrime/ScriptObjects/CScriptSpiderBallWaypoint.hpp"
#include "MetroidPrime/CActorParameters.hpp"

CScriptSpiderBallWaypoint::CScriptSpiderBallWaypoint(TUniqueId uid, const rstl::string& name,
                                                     const CEntityInfo& info,
                                                     const CTransform4f& xf, const bool active,
                                                     uint w1)
: CActor(uid, active, name, info, xf, CModelData::CModelDataNull(), CMaterialList(kMT_NoStepLogic),
         CActorParameters::None(), kInvalidUniqueId) {}
