#ifndef _CSCRIPTWATER
#define _CSCRIPTWATER

#include "types.h"

#include "MetroidPrime/ScriptObjects/CScriptTrigger.hpp"

#include "Kyoto/Math/CFrustumPlanes.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/list.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/pair.hpp"
#include "rstl/single_ptr.hpp"

class CFluidPlaneCPU;
class CGenDescription;

class CScriptWater : public CScriptTrigger {
public:
  // TODO

  bool CanRippleAtPoint(const CVector3f&) const;

  CFluidPlaneCPU& FluidPlane() { return *x1b4_fluidPlane; }
  float GetSurfaceZ() const { return GetTriggerBoundsWR().GetMaxPoint().GetZ(); }

private:
  CFrustumPlanes x150_frustum;
  rstl::single_ptr< CFluidPlaneCPU > x1b4_fluidPlane;
  CVector3f x1b8_positionMorphed;
  CVector3f x1c4_extentMorphed;
  float x1d0_morphInTime;
  CVector3f x1d4_positionOrig;
  CVector3f x1e0_extentOrig;
  float x1ec_damageOrig;
  float x1f0_damageMorphed;
  float x1f4_morphOutTime;
  float x1f8_morphFactor;
  rstl::list< rstl::pair< TUniqueId, bool > > x1fc_waterInhabitants;
  float x214_fogBias;
  float x218_fogMagnitude;
  float x21c_origFogBias;
  float x220_origFogMagnitude;
  float x224_fogSpeed;
  CColor x228_fogColor;
  CAssetId x22c_splashParticle1Id;
  CAssetId x230_splashParticle2Id;
  CAssetId x234_splashParticle3Id;
  CAssetId x238_visorRunoffParticleId;
  rstl::optional_object< TLockedToken< CGenDescription > > x23c_visorRunoffEffect;
  CAssetId x24c_unmorphVisorRunoffParticleId;
  rstl::optional_object< TLockedToken< CGenDescription > > x250_unmorphVisorRunoffEffect;
  ushort x260_visorRunoffSfx;
  ushort x262_unmorphVisorRunoffSfx;
  rstl::reserved_vector< rstl::optional_object< TLockedToken< CGenDescription > >, 3 >
      x264_splashEffects;
  rstl::reserved_vector< ushort, 3 > x298_splashSounds;
  CColor x2a4_splashColor;
  CColor x2a8_insideFogColor;
  float x2ac_alphaInTime;
  float x2b0_alphaOutTime;
  float x2b4_alphaInRecip;
  float x2b8_alphaOutRecip;
  float x2bc_alpha;
  float x2c0_tileSize;
  int x2c4_gridDimX;
  int x2c8_gridDimY;
  int x2cc_gridCellCount;
  int x2d0_patchDimX;
  int x2d4_patchDimY;
  rstl::single_ptr< bool[] > x2d8_tileIntersects;
  rstl::single_ptr< bool[] > x2dc_vertIntersects;
  // 0: all clear, 1: all intersect, 2: partial intersect
  rstl::single_ptr< uchar[] > x2e0_patchIntersects;
  int x2e4_computedGridCellCount;
  bool x2e8_24_b4 : 1;
  bool x2e8_25_morphIn : 1;
  bool x2e8_26_morphing : 1;
  bool x2e8_27_allowRender : 1;
  bool x2e8_28_recomputeClipping : 1;
  bool x2e8_29_alphaIn : 1;
  bool x2e8_30_alphaOut : 1;
};

#endif // _CSCRIPTWATER
