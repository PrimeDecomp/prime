#include "MetroidPrime/ScriptObjects/CScriptDebugCameraWaypoint.hpp"
#include "MetroidPrime/CActorParameters.hpp"

CScriptDebugCameraWaypoint::CScriptDebugCameraWaypoint(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                                                       const CTransform4f& xf, uint value)
: CActor(uid, true, name, info, xf, CModelData::CModelDataNull(), CMaterialList(kMT_NoStepLogic), CActorParameters::None(),
         kInvalidUniqueId)
, xe8_value(value) {}

void CScriptDebugCameraWaypoint::Accept(IVisitor& visitor) { visitor.Visit(*this); }

CScriptDebugCameraWaypoint::~CScriptDebugCameraWaypoint() {}
