#include <MetroidPrime/CActorParameters.hpp>
#include <MetroidPrime/ScriptObjects/CScriptDock.hpp>

CScriptDock::CScriptDock(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                         const CVector3f& position, const CVector3f& extent, int dock, TAreaId area,
                         bool active, int dockReferenceCount, bool loadConnected)
: CPhysicsActor(
      uid, active, name, info, CTransform4f::Translate(position), CModelData::CModelDataNull(),
      CMaterialList(kMT_Trigger, kMT_Immovable, kMT_AIBlock), CAABox(-(0.5f * extent),  0.5f * extent),
      SMoverData(1.f), CActorParameters::None(), 0.3, 0.1f)
, x258_dockReferenceCount(dockReferenceCount)
, x25c_dock(dock)
, x260_area(area)
, x264_dockState(kDS_InNextRoom)
, x268_24_dockReferenced(false)
, x268_25_loadConnected(loadConnected)
, x268_26_areaPostConstructed(false) {}

CScriptDock::~CScriptDock() {
  
}
