#ifndef _CSCRIPTWATER
#define _CSCRIPTWATER

#include "types.h"

#include "MetroidPrime/CFluidPlane.hpp"
#include "MetroidPrime/ScriptObjects/CScriptTrigger.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CFrustumPlanes.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/list.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/pair.hpp"
#include "rstl/single_ptr.hpp"
#include "rstl/string.hpp"

class CAABox;
class CColor;
class CDamageInfo;
class CFluidPlaneCPU;
class CFluidUVMotion;
class CGenDescription;
class CStateManager;
class CVector3f;

class CScriptWater : public CScriptTrigger {
public:
  CScriptWater(CStateManager&, TUniqueId, const rstl::string&, const CEntityInfo&, const CVector3f&,
               const CAABox&, const CDamageInfo&, const CVector3f&, uint, bool, bool, uint, uint,
               uint, uint, uint, uint, const CVector3f&, float, float, float, bool,
               CFluidPlane::EFluidType, bool, float, const CFluidUVMotion&, float, float, float,
               float, float, float, float, float, const CColor&, const CColor&, uint, uint, uint,
               uint, int, int, int, float, uint, float, float, float, float, float, float, float,
               float, const CColor&, uint, uint, bool, int, int, const uint*);

  // CEntity
  ~CScriptWater() override;
  void Accept(IVisitor& visitor) override;
  void Think(float dt, CStateManager& mgr) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;

  // CActor
  void PreRender(CStateManager&, const CFrustumPlanes&) override;
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const override;
  void Render(const CStateManager&) const override;
  void CalculateRenderBounds() override;
  void Touch(CActor&, CStateManager&) override;
  EWeaponCollisionResponseTypes GetCollisionResponseType(const CVector3f&, const CVector3f&,
                                                         const CWeaponMode&,
                                                         int /*EProjectileAttrib?*/) const override;
  CAABox GetSortingBounds(const CStateManager&) const override;

  bool CanRippleAtPoint(const CVector3f&) const;
  // UpdateSplashInhabitants__12CScriptWaterFR13CStateManager
  // RenderSurface__12CScriptWaterFv

  CFluidPlaneCPU& FluidPlane() { return *x1b4_fluidPlane; }
  const CFluidPlaneCPU& GetFluidPlane() const { return *x1b4_fluidPlane; }
  // GetWRSurfacePlane__12CScriptWaterCFv
  float GetSurfaceZ() const { return GetTriggerBoundsWR().GetMaxPoint().GetZ(); }
  const CColor& GetUnderwaterFogColor() const { return x2a8_insideFogColor; }
  const rstl::optional_object< TLockedToken< CGenDescription > >& GetVisorRunoffEffect() const {
    return x23c_visorRunoffEffect;
  }
  ushort GetVisorRunoffSfx() const { return x260_visorRunoffSfx; }
  const rstl::optional_object< TLockedToken< CGenDescription > >&
  GetUnmorphVisorRunoffEffect() const {
    return x250_unmorphVisorRunoffEffect;
  }
  ushort GetUnmorphVisorRunoffSfx() const { return x262_unmorphVisorRunoffSfx; }
  // GetFluidType__12CScriptWaterCFv
  // IsMorphing__12CScriptWaterCFv
  // SetMorphing__12CScriptWaterFb
  // GetFrustumPlanes__12CScriptWaterCFv
  // GetSplashIndex__12CScriptWaterCFf
  // GetSplashEffect__12CScriptWaterCFf
  // GetSplashSound__12CScriptWaterCFf
  // GetSplashEffectScale__12CScriptWaterCFf
  // GetSplashColor__12CScriptWaterCFv

  // kSplashScales__12CScriptWater

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
