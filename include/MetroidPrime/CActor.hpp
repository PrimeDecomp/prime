#ifndef _CACTOR_HPP
#define _CACTOR_HPP

#include "types.h"

#include "Collision/CMaterialFilter.hpp"
#include "Collision/CMaterialList.hpp"

#include "MetroidPrime/CEntity.hpp"
#include "MetroidPrime/CModelFlags.hpp"
#include "MetroidPrime/CSfxHandle.hpp"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/pair.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/single_ptr.hpp"

class CActorLights;
class CActorParameters;
class CModelData;
class CScannableObjectInfo;
class CSimpleShadow;

// TODO move
struct SAdvancementDeltas {};

class CActor : public CEntity {
public:
  enum EThermalFlags {
    kTF_None = 0,
    kTF_Cold = 1,
    kTF_Hot = 2,
  };

  CActor(TUniqueId uid, bool active, const rstl::string& name, const CEntityInfo& info, const CTransform4f& xf, const CModelData& mData,
         const CMaterialList& list, const CActorParameters& params, TUniqueId nextDrawNode);
  ~CActor();

  SAdvancementDeltas UpdateAnimation(float dt, CStateManager& mgr, bool advTree);

  void UpdateSfxEmitters();
  void RemoveEmitter();

  const CTransform4f& GetTransform() const { return x34_transform; }

protected:
  CTransform4f x34_transform;
  rstl::single_ptr< CModelData > x64_modelData;
  CMaterialList x68_material;
  CMaterialFilter x70_materialFilter;
  TSfxId x88_sfxId;
  CSfxHandle x8c_loopingSfxHandle;
  rstl::single_ptr< CActorLights > x90_actorLights;
  rstl::single_ptr< CSimpleShadow > x94_simpleShadow;
  rstl::single_ptr< TCachedToken< CScannableObjectInfo > > x98_scanObjectInfo;
  CAABox x9c_renderBounds;
  CModelFlags xb4_drawFlags;
  f32 xbc_time;
  u32 xc0_pitchBend;
  TUniqueId xc4_fluidId;
  TUniqueId xc6_nextDrawNode;
  s32 xc8_drawnToken;
  s32 xcc_addedToken;
  f32 xd0_damageMag;
  u8 xd4_maxVol;
  rstl::reserved_vector< CSfxHandle, 2 > xd8_nonLoopingSfxHandles;
  u32 xe4_24_nextNonLoopingSfxHandle : 3;
  u32 xe4_27_notInSortedLists : 1;
  u32 xe4_28_transformDirty : 1;
  u32 xe4_29_actorLightsDirty : 1;
  u32 xe4_30_outOfFrustum : 1;
  u32 xe4_31_calculateLighting : 1;
  u32 xe5_24_shadowEnabled : 1;
  u32 xe5_25_shadowDirty : 1;
  u32 xe5_26_muted : 1;
  u32 xe5_27_useInSortedLists : 1;
  u32 xe5_28_callTouch : 1;
  u32 xe5_29_globalTimeProvider : 1;
  u32 xe5_30_renderUnsorted : 1;
  u32 xe5_31_pointGeneratorParticles : 1;
  u32 xe6_24_fluidCounter : 3;
  EThermalFlags xe6_27_thermalVisorFlags : 2;
  u32 xe6_29_renderParticleDBInside : 1;
  u32 xe6_30_enablePitchBend : 1;
  u32 xe6_31_targetableVisorFlags : 4;
  u32 xe7_27_enableRender : 1;
  u32 xe7_28_worldLightingDirty : 1;
  u32 xe7_29_drawEnabled : 1;
  u32 xe7_30_doTargetDistanceTest : 1;
  u32 xe7_31_targetable : 1;
};
CHECK_SIZEOF(CActor, 0xe8)

#endif
