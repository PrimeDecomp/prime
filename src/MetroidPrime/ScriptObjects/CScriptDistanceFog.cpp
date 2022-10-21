#include "MetroidPrime/ScriptObjects/CScriptDistanceFog.hpp"

#include "MetroidPrime/CAreaFog.hpp"
#include "MetroidPrime/CGameArea.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CWorld.hpp"

#include "Kyoto/Math/CloseEnough.hpp"

CScriptDistanceFog::CScriptDistanceFog(TUniqueId uid, const rstl::string& name,
                                       const CEntityInfo& info, ERglFogMode mode,
                                       const CColor& color, const CVector2f& range,
                                       float colorDelta, const CVector2f& rangeDelta, bool expl,
                                       bool active, float thermalTarget, float thermalSpeed,
                                       float xrayTarget, float xraySpeed)
: CEntity(uid, info, active, name)
, x34_mode(mode)
, x38_color(color)
, x3c_range(range)
, x44_colorDelta(colorDelta)
, x48_rangeDelta(rangeDelta)
, x50_thermalTarget(thermalTarget)
, x54_thermalSpeed(thermalSpeed)
, x58_xrayTarget(xrayTarget)
, x5c_xraySpeed(xraySpeed)
, x60_explicit(expl)
, x61_nonZero(!close_enough(rangeDelta, CVector2f(0.f, 0.f)) || !close_enough(colorDelta, 0.f)) {}

CScriptDistanceFog::~CScriptDistanceFog() {}

void CScriptDistanceFog::Accept(IVisitor& visitor) { visitor.Visit(*this); }

void CScriptDistanceFog::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId,
                                         CStateManager& stateMgr) {
  CEntity::AcceptScriptMsg(msg, objId, stateMgr);

  if (GetAreaIdAlways() != kInvalidAreaId && GetActive()) {
    switch (msg) {
    case kSM_InitializedInArea:
      if (x60_explicit) {
        CAreaFog* fog = stateMgr.World()->Area(GetAreaIdAlways())->AreaFog();
        if (x34_mode == kRFM_None) {
          fog->DisableFog();
        } else {
          fog->SetFogExplicit(x34_mode, x38_color, x3c_range);
        }
      }
      break;
    case kSM_Action:
      if (x61_nonZero) {
        CAreaFog* fog = stateMgr.World()->Area(GetAreaIdAlways())->AreaFog();
        if (x34_mode != kRFM_None) {
          fog->FadeFog(x34_mode, x38_color, x3c_range, x44_colorDelta, x48_rangeDelta);
        } else {
          fog->RollFogOut(x48_rangeDelta.GetX(), x44_colorDelta, x38_color);
        }
      }

      if (!close_enough(x54_thermalSpeed, 0.f)) {
        stateMgr.World()->Area(GetAreaIdAlways())->SetThermalSpeedAndTarget(x54_thermalSpeed, x50_thermalTarget);
      }
      if (!close_enough(x5c_xraySpeed, 0.f)) {
        stateMgr.World()->Area(GetAreaIdAlways())->SetXRaySpeedAndTarget(x5c_xraySpeed, x58_xrayTarget);
      }
      break;
    }
  }
}
