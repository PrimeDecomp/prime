#ifndef _CACTORLIGHTS_HPP
#define _CACTORLIGHTS_HPP

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Graphics/CLight.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/reserved_vector.hpp"

class CGameArea;
class CStateManager;
class CAABox;

class CActorLights {
public:
  CActorLights(uint areaUpdateFramePeriod, const CVector3f& actorPosBias, int maxDynamicLights, int maxAreaLights,
               bool ambientChannelOverflow, bool layer2, bool disableWorldLights, float positionUpdateThreshold);
  ~CActorLights();

  void BuildConstantAmbientLighting();
  bool BuildAreaLightList(const CStateManager& mgr, const CGameArea& area, const CAABox& bounds);
  void BuildDynamicLightList(const CStateManager& mgr, const CAABox& bounds);

  bool GetNeedsRelight() const { return x298_24_dirty == TRUE; }

private:
  rstl::reserved_vector< CLight, 4 > x0_areaLights;
  rstl::reserved_vector< CLight, 4 > x144_dynamicLights;
  CVector3f x288_ambientColor;
  TAreaId x294_aid;
  bool x298_24_dirty : 1;
  bool x298_25_castShadows : 1;
  bool x298_26_hasAreaLights : 1;
  bool x298_27_findShadowLight : 1;
  bool x298_28_inArea : 1;
  bool x298_29_ambienceGenerated : 1;
  bool x298_30_layer2 : 1;
  bool x298_31_disableWorldLights : 1;
  bool x299_24_inBrightLight : 1;
  bool x299_25_useBrightLightLag : 1;
  bool x299_26_ambientOnly : 1;
  bool x29a_findNearestDynamicLights;
  int x29c_shadowLightArrIdx;
  int x2a0_shadowLightIdx;
  uint x2a4_lastUpdateFrame;
  uint x2a8_areaUpdateFramePeriod;
  CVector3f x2ac_actorPosBias;
  int x2b8_maxAreaLights;
  int x2bc_maxDynamicLights;
  CVector3f x2c0_lastActorPos;
  f32 x2cc_actorPositionDeltaUpdateThreshold;
  f32 x2d0_shadowDynamicRangeThreshold;
  f32 x2d4_worldLightingLevel;
  int x2d8_brightLightIdx;
  uint x2dc_brightLightLag;
};
CHECK_SIZEOF(CActorLights, 0x2e0)

#endif
