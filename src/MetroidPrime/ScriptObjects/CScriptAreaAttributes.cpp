#include "MetroidPrime/ScriptObjects/CScriptAreaAttributes.hpp"

CScriptAreaAttributes::CScriptAreaAttributes(TUniqueId uid, const CEntityInfo& info,
                                             bool showSkybox, EEnvFxType fxType, float envFxDensity,
                                             float thermalHeat, float xrayFogDistance,
                                             float worldLightingLevel, CAssetId skybox,
                                             EPhazonType phazonType)
: CEntity(uid, info, true, rstl::string_l(""))
, x34_24_showSkybox(showSkybox)
, x38_envFx(fxType)
, x3c_envFxDensity(envFxDensity)
, x40_thermalHeat(thermalHeat)
, x44_xrayFogDistance(xrayFogDistance)
, x48_worldLightingLevel(worldLightingLevel)
, x4c_skybox(skybox)
, x50_phazon(phazonType) {}

void CScriptAreaAttributes::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId,
                                            CStateManager& stateMgr) {
  CEntity::AcceptScriptMsg(msg, objId, stateMgr);

  if (GetCurrentAreaId() == kInvalidAreaId) {
    return;
  }

  switch (msg) {
  case kSM_InitializedInArea: {
    stateMgr.World()->Area(GetCurrentAreaId())->SetAreaAttributes(this);
    stateMgr.EnvFxManager()->SetFxDensity(500, x3c_envFxDensity);
    break;
  }

  case kSM_Deleted: {
    if (stateMgr.World()->IsAreaValid(GetCurrentAreaId())) {
      stateMgr.World()->Area(GetCurrentAreaId())->SetAreaAttributes(nullptr);
    }
    break;
  }
  }
}

void CScriptAreaAttributes::Accept(IVisitor& visitor) { visitor.Visit(*this); }

CScriptAreaAttributes::~CScriptAreaAttributes() {}
