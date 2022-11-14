#include "MetroidPrime/ScriptLoader.hpp"

#include "MetroidPrime/CActorParameters.hpp"
#include "MetroidPrime/CAnimationParameters.hpp"
#include "MetroidPrime/CDamageVulnerability.hpp"
#include "MetroidPrime/CGrappleParameters.hpp"
#include "MetroidPrime/CHealthInfo.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"

#include "MetroidPrime/ScriptObjects/CScriptCameraHintTrigger.hpp"
#include "MetroidPrime/ScriptObjects/CScriptDamageableTrigger.hpp"
#include "MetroidPrime/ScriptObjects/CScriptSpawnPoint.hpp"
#include "MetroidPrime/ScriptObjects/CScriptTrigger.hpp"

#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

static CTransform4f ConvertEditorEulerToTransform4f(const CVector3f& orientation,
                                                    const CVector3f& position) {
  CQuaternion quat = CQuaternion::ZRotation(CRelAngle::FromDegrees(orientation.GetZ())) *
                     CQuaternion::YRotation(CRelAngle::FromDegrees(orientation.GetY())) *
                     CQuaternion::XRotation(CRelAngle::FromDegrees(orientation.GetX()));

  CMatrix3f mat = quat.BuildTransform();
  // return CTransform4f(mat, position);
  return CTransform4f(mat.GetRow(kDX), mat.GetRow(kDY), mat.GetRow(kDZ), position);
}

static CTransform4f LoadEditorTransform(CInputStream& in) {
  CVector3f position(in);
  CVector3f orientation(in);
  return ConvertEditorEulerToTransform4f(orientation, position);
}

static CTransform4f LoadEditorTransformPivotOnly(CInputStream& in) {
  CVector3f position(in);
  CVector3f orientation(in);
  orientation.SetY(0.0f);
  orientation.SetX(0.0f);
  return ConvertEditorEulerToTransform4f(orientation, position);
}

struct SActorHead {
  rstl::string x0_name;
  CTransform4f x10_transform;

  SActorHead(CInputStream& in, CStateManager& stateMgr);
};

SActorHead::SActorHead(CInputStream& in, CStateManager& stateMgr)
: x0_name(stateMgr.HashInstanceName(in)), x10_transform(LoadEditorTransform(in)) {}

struct SScaledActorHead {
  SActorHead x0_actorHead;
  CVector3f x40_scale;

  SScaledActorHead(CInputStream& in, CStateManager& stateMgr);
};

SScaledActorHead::SScaledActorHead(CInputStream& in, CStateManager& stateMgr)
: x0_actorHead(in, stateMgr), x40_scale(in) {}

static CAnimationParameters LoadAnimationParameters(CInputStream& in) {
  CAssetId ancs = in.Get< CAssetId >();
  int charIdx = in.ReadLong();
  uint defaultAnim = in.ReadLong();
  return CAnimationParameters(ancs, charIdx, defaultAnim);
}

static CLightParameters LoadLightParameters(CInputStream& in) {
  int propCount = in.ReadLong();
  if (propCount != 14) {
    return CLightParameters::None();
  }

  bool a = in.Get< bool >();
  float b = in.Get< float >();
  CLightParameters::EShadowTessellation shadowTess =
      CLightParameters::EShadowTessellation(in.Get< int >());
  float d = in.Get< float >();
  float e = in.Get< float >();

  CColor noLightsAmbient(in);

  bool makeLights = in.ReadBool();
  CLightParameters::EWorldLightingOptions lightOpts =
      CLightParameters::EWorldLightingOptions(in.ReadLong());
  CLightParameters::ELightRecalculationOptions recalcOpts =
      CLightParameters::ELightRecalculationOptions(in.ReadLong());

  CVector3f actorPosBias(in);

  int maxDynamicLights = -1;
  int maxAreaLights = -1;
  if (propCount >= 12) {
    maxDynamicLights = in.ReadLong();
    maxAreaLights = in.ReadLong();
  }

  bool ambientChannelOverflow = false;
  if (propCount >= 13)
    ambientChannelOverflow = in.ReadBool();

  int layerIdx = 0;
  if (propCount >= 14)
    layerIdx = in.ReadLong();

  return CLightParameters(a, b, shadowTess, d, e, noLightsAmbient, makeLights, lightOpts,
                          recalcOpts, actorPosBias, maxDynamicLights, maxAreaLights,
                          ambientChannelOverflow, layerIdx);
}

static CScannableParameters LoadScannableParameters(CInputStream& in) {
  int propCount = in.ReadLong();
  if (propCount != 1) {
    return CScannableParameters(kInvalidAssetId);
  } else {
    return CScannableParameters(in.Get< CAssetId >());
  }
}

static CVisorParameters LoadVisorParameters(CInputStream& in) {
  u32 propCount = in.ReadLong();
  if (propCount >= 1 && propCount <= 3) {
    bool b1 = in.ReadBool();
    bool scanPassthrough = false;
    u8 mask = 0xf;
    if (propCount > 2)
      scanPassthrough = in.ReadBool();
    if (propCount >= 2)
      mask = u8(in.ReadLong());
    return CVisorParameters(mask, b1, scanPassthrough);
  }
  return CVisorParameters(0xf, false, false);
}

static CActorParameters LoadActorParameters(CInputStream&) {}

static CGrappleParameters LoadGrappleParameters(CInputStream& in) {
  in.ReadLong();
  float a = in.ReadFloat();
  float b = in.ReadFloat();
  float c = in.ReadFloat();
  float d = in.ReadFloat();
  float e = in.ReadFloat();
  float f = in.ReadFloat();
  float g = in.ReadFloat();
  float h = in.ReadFloat();
  float i = in.ReadFloat();
  float j = in.ReadFloat();
  float k = in.ReadFloat();
  bool l = in.ReadBool();
  return CGrappleParameters(a, b, c, d, e, f, g, h, i, j, k, l);
}

static int LoadParameterFlags(CInputStream& in) {
  int count = in.ReadLong();
  int ret = 0;
  for (int i = 0; i < count; ++i)
    if (in.ReadBool())
      ret |= 1 << i;
  return ret;
}

CEntity* ScriptLoader::LoadTrigger(CStateManager& mgr, CInputStream& in, int propCount,
                                   const CEntityInfo& info) {
  if (propCount != 9)
    return nullptr;

  rstl::string name(mgr.HashInstanceName(in));
  CVector3f position(in);
  CVector3f extent(in);
  CDamageInfo dInfo(in);
  CVector3f forceVec(in);
  ETriggerFlags flags = ETriggerFlags(in.ReadLong());
  bool active = in.Get< bool >();
  bool b2 = in.Get< bool >();
  bool b3 = in.Get< bool >();

  CAABox box(CVector3f(-(extent.GetX()), -(extent.GetY() * 0.5f), -(extent.GetZ() * 0.5f)),
             CVector3f((extent.GetX() * 0.5f), (extent.GetY() * 0.5f), (extent.GetZ() * 0.5f)));

  CVector3f orientedForce =
      mgr.GetWorld()->GetAreaAlways(info.GetAreaId()).GetTM().Rotate(forceVec);

  return new CScriptTrigger(mgr.AllocateUniqueId(), name, info, position, box, dInfo, orientedForce,
                            flags, active, b2, b3);
}

CEntity* ScriptLoader::LoadCameraHintTrigger(CStateManager& mgr, CInputStream& in, int propCount,
                                             const CEntityInfo& info) {
  if (propCount != 7)
    return nullptr;

  SActorHead aHead(in, mgr);
  CVector3f scale = CVector3f(in) * 0.5f;
  bool active = in.ReadBool();
  bool deactivateOnEnter = in.ReadBool();
  bool deactivateOnExit = in.ReadBool();

  if (aHead.x10_transform.GetRotation() == CTransform4f::Identity()) {
    CAABox box(CVector3f(-(scale.GetX()), -(scale.GetY()), -(scale.GetZ())),
               CVector3f((scale.GetX()), (scale.GetY()), (scale.GetZ())));
    return new CScriptTrigger(mgr.AllocateUniqueId(), aHead.x0_name, info,
                              aHead.x10_transform.GetTranslation(), box, CDamageInfo(),
                              CVector3f::Zero(), kTFL_DetectPlayer, active, deactivateOnEnter,
                              deactivateOnExit);
  } else {
    return new CScriptCameraHintTrigger(mgr.AllocateUniqueId(), active, aHead.x0_name, info, scale,
                                        aHead.x10_transform, deactivateOnEnter, deactivateOnExit);
  }
}

static int ClassifyVector(const CVector3f& dir) {
  CVector3f absDir(fabsf(dir.GetX()), fabsf(dir.GetY()), fabsf(dir.GetZ()));
  int max = (absDir.GetX() > absDir.GetY() ? 0 : 1);
  max = (absDir[max] > absDir.GetZ() ? max : 2);

  bool positive = (absDir[max] == dir[max]);
  if (max == 0)
    return (positive ? 0x08 : 0x04);
  else if (max == 1)
    return (positive ? 0x01 : 0x02);
  else if (max == 2)
    return (positive ? 0x10 : 0x20);

  return 0;
}

static int TransformDamageableTriggerFlags(CStateManager& mgr, TAreaId aId, uint flags) {
  const CGameArea& area = mgr.GetWorld()->GetAreaAlways(aId);
  CTransform4f rotation = area.GetTM().GetRotation();

  u32 ret = 0;
  if (flags & 0x01)
    ret |= ClassifyVector(rotation * CVector3f::Forward());
  if (flags & 0x02)
    ret |= ClassifyVector(rotation * CVector3f::Back());
  if (flags & 0x04)
    ret |= ClassifyVector(rotation * CVector3f::Left());
  if (flags & 0x08)
    ret |= ClassifyVector(rotation * CVector3f::Right());
  if (flags & 0x10)
    ret |= ClassifyVector(rotation * CVector3f::Up());
  if (flags & 0x20)
    ret |= ClassifyVector(rotation * CVector3f::Down());
  return ret;
}

CEntity* ScriptLoader::LoadDamageableTrigger(CStateManager& mgr, CInputStream& in, int propCount,
                                             const CEntityInfo& info) {
  if (propCount != 12)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  CVector3f position(in);
  CVector3f volume(in);

  CHealthInfo hInfo(in);
  CDamageVulnerability dVuln(in);
  int triggerFlags = TransformDamageableTriggerFlags(mgr, info.GetAreaId(), in.Get< int >());
  CAssetId patternTex1 = in.Get< CAssetId >();
  CAssetId patternTex2 = in.Get< CAssetId >();
  CAssetId colorTex = in.Get< CAssetId >();
  CScriptDamageableTrigger::ECanOrbit canOrbit =
      CScriptDamageableTrigger::ECanOrbit(in.Get< bool >());
  bool active = in.Get< bool >();
  CVisorParameters vParms = LoadVisorParameters(in);
  return new CScriptDamageableTrigger(mgr.AllocateUniqueId(), name, info, position, volume, hInfo,
                                      dVuln, triggerFlags, patternTex1, patternTex2, colorTex,
                                      canOrbit, active, vParms);
}

// static CFluidUVMotion LoadFluidUVMotion(CInputStream&) {}

CEntity* ScriptLoader::LoadSpawnPoint(CStateManager& mgr, CInputStream& in, int propCount,
                                      const CEntityInfo& info) {
  if (propCount < 35)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  CVector3f position(in);
  CVector3f rotation(in);

  rstl::reserved_vector< int, int(CPlayerState::kIT_Max) > itemCounts;
  for (int i = 0; i < propCount - 6; ++i)
    itemCounts.push_back(in.ReadLong());

  for (int i = itemCounts.size(); i < itemCounts.capacity(); ++i) {
    itemCounts.push_back(0);
  }

  bool defaultSpawn = in.Get< bool >();
  bool active = in.Get< bool >();
  bool morphed = false;
  if (propCount >= 35)
    morphed = in.Get< bool >();

  return new CScriptSpawnPoint(mgr.AllocateUniqueId(), name, info,
                               ConvertEditorEulerToTransform4f(rotation, position),
                               rstl::reserved_vector< int, int(CPlayerState::kIT_Max) >(itemCounts),
                               defaultSpawn, active, morphed);
}
