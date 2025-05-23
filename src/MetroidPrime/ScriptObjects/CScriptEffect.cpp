#include "MetroidPrime/ScriptObjects/CScriptEffect.hpp"
#include "Collision/CMaterialList.hpp"
#include "Kyoto/Particles/CElectricDescription.hpp"
#include "Kyoto/Particles/CGenDescription.hpp"
#include "Kyoto/SObjectTag.hpp"
#include "MetroidPrime/CActorParameters.hpp"
#include "MetroidPrime/TCastTo.hpp"

CScriptEffect::CScriptEffect(const TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                             const CTransform4f& xf, const CVector3f& scale, const CAssetId partId,
                             const CAssetId elscId, const bool hotInThermal,
                             const bool noTimerUnlessAreaOccluded, bool rebuildSystemsOnActivate,
                             const bool active, const bool useRateInverseCamDist,
                             float rateInverseCamDist, const float rateInverseCamDistRate,
                             const float duration, const float durationResetWhileVisible,
                             const bool useRateCamDistRange, const float rateCamDistRangeMin,
                             const float rateCamDistRangeMax, const float rateCamDistRangeFarRate,
                             const bool combatVisorVisible, const bool thermalVisorVisible,
                             const bool xrayVisorVisible, const CLightParameters& lParms,
                             const bool dieWhenSystemsDone)
: CActor(uid, active, name, info, xf, CModelData::CModelDataNull(), CMaterialList(kMT_NoStepLogic),
         CActorParameters::None().HotInThermal(hotInThermal), kInvalidUniqueId)
, xe8_electricToken(nullptr)
, xf8_particleSystemToken(nullptr)
, x108_lightId(kInvalidUniqueId)
, x10c_partId(partId)
, x110_24_enable(active)
, x110_25_noTimerUnlessAreaOccluded(noTimerUnlessAreaOccluded)
, x110_26_rebuildSystemsOnActivate(rebuildSystemsOnActivate)
, x110_27_useRateInverseCamDist(useRateCamDistRange)
, x110_28_combatVisorVisible(combatVisorVisible)
, x110_29_thermalVisorVisible(thermalVisorVisible)
, x110_30_xrayVisorVisible(xrayVisorVisible)
, x110_31_anyVisorVisible(xrayVisorVisible && thermalVisorVisible && combatVisorVisible)
, x111_24_useRateCamDistRange(useRateCamDistRange)
, x111_25_dieWhenSystemsDone(dieWhenSystemsDone)
, x111_26_canRender(false)
, x114_rateInverseCamDist(rateInverseCamDist)
, x118_rateInverseCamDistSq(rateInverseCamDist * rateInverseCamDist)
, x11c_rateInverseCamDistRate(rateInverseCamDistRate)
, x120_rateCamDistRangeMin(rateCamDistRangeMin)
, x124_rateCamDistRangeMax(rateCamDistRangeMax)
, x128_rateCamDistRangeFarRate(rateCamDistRangeFarRate)
, x12c_remTime(duration)
, x130_duration(duration)
, x134_durationResetWhileVisible(durationResetWhileVisible)
, x138_actorLights(lParms.MakeActorLights().release())
, x13c_triggerId(kInvalidUniqueId)
, x140_destroyDelayTimer(0.f) {}
