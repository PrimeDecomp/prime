#include "MetroidPrime/ScriptObjects/CScriptPlatform.hpp"

#include "MetroidPrime/CActorParameters.hpp"
#include "MetroidPrime/CAnimData.hpp"

#include "Kyoto/Graphics/CGX.hpp"

#include "WorldFormat/CCollidableOBBTreeGroup.hpp"

#ifndef TARGET_PC
struct GXData {
  u16 cpSRreg;
  u16 cpCRreg;
};
extern GXData* __GXData;

static inline void write_bp_cmd(u32 cmd) {
  GXWGFifo.u8 = GX_LOAD_BP_REG;
  GXWGFifo.u32 = cmd;
  __GXData->cpCRreg = 0;
}
#endif

void CGX::update_fog(uint flags) {
  if (sGXState.x53_fogType == 0) {
    return;
  }
  if ((sGXState.x56_blendMode & 0xE0) == (flags & 0xE0)) {
    return;
  }
  if ((flags & 0xE0) == 0x20) {
#ifdef TARGET_PC
    static const GXColor sGXClear = {0, 0, 0, 0};
    GXSetFogColor(sGXClear);
#else
    write_bp_cmd(0xf2000000);
#endif
  } else {
#ifdef TARGET_PC
    GXSetFogColor(sGXState.x24c_fogParams.x10_fogColor);
#else
    write_bp_cmd((sGXState.x24c_fogParams.x10_fogColor.b) |
                 (sGXState.x24c_fogParams.x10_fogColor.g << 8) |
                 (sGXState.x24c_fogParams.x10_fogColor.r << 16) | 0xf2000000);
#endif
  }
}

CScriptPlatform::CScriptPlatform(
    TUniqueId uid, const rstl::string& name, const CEntityInfo& info, const CTransform4f& xf,
    const CModelData& mData, const CActorParameters& actParams, const CAABox& aabb, f32 speed,
    bool detectCollision, f32 xrayAlpha, bool active, const CHealthInfo& hInfo,
    const CDamageVulnerability& dVuln,
    const rstl::optional_object< TLockedToken< CCollidableOBBTreeGroupContainer > >& dcln,
    bool rainSplashes, uint maxRainSplashes, uint rainGenRate)
: CPhysicsActor(uid, active, name, info, xf, mData,
                CMaterialList(kMT_Solid, kMT_Immovable, kMT_Platform, kMT_Occluder), aabb,
                SMoverData(15000.f, CVector3f::Zero(), CAxisAngle::Identity(), CVector3f::Zero(),
                           CAxisAngle::Identity()),
                actParams, 0.3f, 0.1f)
, x258_currentWaypoint(kInvalidUniqueId)
, x25a_targetWaypoint(kInvalidUniqueId)
, x25c_currentSpeed(speed)
, x260_moveDelay(0.f)
, x264_collisionRecoverDelay(0.f)
, x268_fadeInTime(actParams.GetFadeInTime())
, x26c_fadeOutTime(actParams.GetFadeOutTime())
, x270_dragDelta(CVector3f::Zero())
, x27c_rotDelta(CQuaternion::NoRotation())
, x28c_initialHealth(hInfo)
, x294_health(hInfo)
, x29c_damageVuln(dVuln)
, x304_treeGroupContainer(dcln)
, x314_treeGroup(nullptr)
, x348_xrayAlpha(xrayAlpha)
, x34c_maxRainSplashes(maxRainSplashes)
, x350_rainGenRate(rainGenRate)
, x354_boundsTrigger(kInvalidUniqueId)
, x356_24_dead(false)
, x356_25_controlledAnimation(false)
, x356_26_detectCollision(detectCollision)
, x356_27_squishedRider(false)
, x356_28_rainSplashes(rainSplashes)
, x356_29_setXrayDrawFlags(false)
, x356_30_disableXrayAlpha(false)
, x356_31_xrayFog(true) {
  SetMaterialFilter(CMaterialFilter::MakeIncludeExclude(
      CMaterialList(kMT_Solid),
      CMaterialList(kMT_NoStaticCollision, kMT_NoPlatformCollision, kMT_Platform)));
  SetMovable(false);
  if (HasAnimation()) {
    AnimationData()->EnableLooping(true);
    AnimationData()->SetIsAnimating(true);
  }
  if (x304_treeGroupContainer) {
    x314_treeGroup = new CCollidableOBBTreeGroup(**x304_treeGroupContainer, GetMaterialList());
  }
}

CScriptPlatform::~CScriptPlatform() {}

rstl::optional_object< CAABox > CScriptPlatform::GetTouchBounds() const {
  if (GetActive()) {
    if (!x314_treeGroup.null()) {
      return x314_treeGroup->CalculateAABox(GetTransform());
    } else {
      return GetBoundingBox();
    }
  } else {
    return rstl::optional_object_null();
  }
}
