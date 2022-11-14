#ifndef _CACTORLIGHTS
#define _CACTORLIGHTS

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Graphics/CLight.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

class CGameArea;
class CStateManager;
class CAABox;

class CActorLights {
public:
  CActorLights(uint areaUpdateFramePeriod, CVector3f lightingPositionOffset, int maxDynamicLights,
               int maxAreaLights, float positionUpdateThreshold, bool ambientChannelOverflow,
               bool useLightSet2, bool disableWorldLights);
  ~CActorLights();

  void BuildConstantAmbientLighting();
  void BuildConstantAmbientLighting(const CColor&);
  bool BuildAreaLightList(const CStateManager& mgr, const CGameArea& area, const CAABox& bounds);
  void BuildDynamicLightList(const CStateManager& mgr, const CAABox& bounds);
  void BuildFakeLightList(const rstl::vector<CLight>&, const CColor&);

  void ActivateLights() const;

  bool GetNeedsRelight() const { return x298_24_dirty == TRUE; }
  bool HasShadowLight() const { return x29c_shadowLightArrIdx != -1; }
  int GetShadowLightIndex() const { return x2a0_shadowLightIdx; }

  void SetAmbientColor(const CColor& color);
  void SetCastShadows(bool v) { x298_25_castShadows = v; }
  void SetFindShadowLight(bool v) { x298_27_findShadowLight = v; }
  void SetShadowDynamicRangeThreshold(float t) { x2d0_shadowDynamicRangeThreshold = t; }

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
  CVector3f x2ac_lightingPositionOffset;
  int x2b8_maxAreaLights;
  int x2bc_maxDynamicLights;
  CVector3f x2c0_lastActorPos;
  float x2cc_actorPositionDeltaUpdateThreshold;
  float x2d0_shadowDynamicRangeThreshold;
  float x2d4_worldLightingLevel;
  int x2d8_brightLightIdx;
  uint x2dc_brightLightLag;
};
CHECK_SIZEOF(CActorLights, 0x2e0)

#endif // _CACTORLIGHTS
