#ifndef _CACTORLIGHTS_HPP
#define _CACTORLIGHTS_HPP

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/reserved_vector.hpp"

enum ELightType {
  kLT_Spot = 0,
  kLT_Point = 1,
  kLT_Directional = 2,
  kLT_LocalAmbient = 3,
  kLT_Custom = 4,
};

class CLight {
private:
  CVector3f x0_pos;
  CVector3f xc_dir;
  CColor x18_color;
  ELightType x1c_type;
  f32 x20_spotCutoff;
  f32 x24_distC;
  f32 x28_distL;
  f32 x2c_distQ;
  f32 x30_angleC;
  f32 x34_angleL;
  f32 x38_angleQ;
  u32 x3c_priority;
  u32 x40_lightId;
  mutable f32 x44_cachedRadius;
  mutable f32 x48_cachedIntensity;
  mutable bool x4c_24_intensityDirty : 1;
  mutable bool x4c_25_radiusDirty : 1;
};
CHECK_SIZEOF(CLight, 0x50)

class CGameArea;

class CActorLights {
public:
  ~CActorLights();

  void BuildConstantAmbientLighting();
  bool BuildAreaLightList(const CStateManager& mgr, const CGameArea& area, const CAABox& bounds);
  void BuildDynamicLightList(const CStateManager& mgr, const CAABox& bounds);

  bool GetNeedsRelight() const { return x298_24_dirty; }

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
  s32 x29c_shadowLightArrIdx;
  s32 x2a0_shadowLightIdx;
  u32 x2a4_lastUpdateFrame;
  u32 x2a8_areaUpdateFramePeriod;
  CVector3f x2ac_actorPosBias;
  s32 x2b8_maxAreaLights;
  s32 x2bc_maxDynamicLights;
  CVector3f x2c0_lastActorPos;
  f32 x2cc_actorPositionDeltaUpdateThreshold;
  f32 x2d0_shadowDynamicRangeThreshold;
  f32 x2d4_worldLightingLevel;
  s32 x2d8_brightLightIdx;
  u32 x2dc_brightLightLag;
};
CHECK_SIZEOF(CActorLights, 0x2e0)

#endif