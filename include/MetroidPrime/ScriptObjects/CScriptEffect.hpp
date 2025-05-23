#ifndef _CSCRIPTEFFECT
#define _CSCRIPTEFFECT

#include "MetroidPrime/CActor.hpp"

class CLightParameters;
class CElectricDescription;
class CParticleElectric;
class CGenDescription;
class CElementGen;
class CScriptEffect : public CActor {
public:
  CScriptEffect(const TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                const CTransform4f& xf, const CVector3f& scale, const CAssetId partId,
                const CAssetId elscId, const bool hotInThermal,
                const bool noTimerUnlessAreaOccluded, bool rebuildSystemsOnActivate,
                const bool active, const bool useRateInverseCamDist, float rateInverseCamDist,
                const float rateInverseCamDistRate, const float duration,
                const float durationResetWhileVisible, const bool useRateCamDistRange,
                const float rateCamDistRangeMin, const float rateCamDistRangeMax,
                const float rateCamDistRangeFarRate, const bool combatVisorVisible,
                const bool thermalVisorVisible, const bool xrayVisorVisible,
                const CLightParameters& lParms, const bool dieWhenSystemsDone);

private:
  TLockedToken< CElectricDescription > xe8_electricToken;
  rstl::single_ptr< CParticleElectric > xf4_electric;
  TLockedToken< CGenDescription > xf8_particleSystemToken;
  rstl::single_ptr< CElementGen > x104_particleSystem;
  TUniqueId x108_lightId;
  CAssetId x10c_partId;
  bool x110_24_enable : 1;
  bool x110_25_noTimerUnlessAreaOccluded : 1;
  bool x110_26_rebuildSystemsOnActivate : 1;
  bool x110_27_useRateInverseCamDist : 1;
  bool x110_28_combatVisorVisible : 1;
  bool x110_29_thermalVisorVisible : 1;
  bool x110_30_xrayVisorVisible : 1;
  bool x110_31_anyVisorVisible : 1;
  bool x111_24_useRateCamDistRange : 1;
  bool x111_25_dieWhenSystemsDone : 1;
  bool x111_26_canRender : 1;
  float x114_rateInverseCamDist;
  float x118_rateInverseCamDistSq;
  float x11c_rateInverseCamDistRate;
  float x120_rateCamDistRangeMin;
  float x124_rateCamDistRangeMax;
  float x128_rateCamDistRangeFarRate;
  float x12c_remTime;
  float x130_duration;
  float x134_durationResetWhileVisible;
  rstl::single_ptr< CActorLights > x138_actorLights;
  TUniqueId x13c_triggerId;
  float x140_destroyDelayTimer;
};

#endif // _CSCRIPTEFFECT
