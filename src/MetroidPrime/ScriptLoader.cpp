#include "MetroidPrime/ScriptLoader.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "MetroidPrime/CActorParameters.hpp"
#include "MetroidPrime/CAnimRes.hpp"
#include "MetroidPrime/CAnimationParameters.hpp"
#include "MetroidPrime/CDamageInfo.hpp"
#include "MetroidPrime/CDamageVulnerability.hpp"
#include "MetroidPrime/CFluidUVMotion.hpp"
#include "MetroidPrime/CGrappleParameters.hpp"
#include "MetroidPrime/CHealthInfo.hpp"
#include "MetroidPrime/CModelData.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"

#include "MetroidPrime/ScriptObjects/CRepulsor.hpp"
#include "MetroidPrime/ScriptObjects/CScriptActor.hpp"
#include "MetroidPrime/ScriptObjects/CScriptActorRotate.hpp"
#include "MetroidPrime/ScriptObjects/CScriptAiJumpPoint.hpp"
#include "MetroidPrime/ScriptObjects/CScriptAreaAttributes.hpp"
#include "MetroidPrime/ScriptObjects/CScriptBallTrigger.hpp"
#include "MetroidPrime/ScriptObjects/CScriptCameraHint.hpp"
#include "MetroidPrime/ScriptObjects/CScriptCameraHintTrigger.hpp"
#include "MetroidPrime/ScriptObjects/CScriptCameraPitchVolume.hpp"
#include "MetroidPrime/ScriptObjects/CScriptControllerAction.hpp"
#include "MetroidPrime/ScriptObjects/CScriptCounter.hpp"
#include "MetroidPrime/ScriptObjects/CScriptDamageableTrigger.hpp"
#include "MetroidPrime/ScriptObjects/CScriptDebugCameraWaypoint.hpp"
#include "MetroidPrime/ScriptObjects/CScriptDistanceFog.hpp"
#include "MetroidPrime/ScriptObjects/CScriptDock.hpp"
#include "MetroidPrime/ScriptObjects/CScriptDockAreaChange.hpp"
#include "MetroidPrime/ScriptObjects/CScriptEMPulse.hpp"
#include "MetroidPrime/ScriptObjects/CScriptMazeNode.hpp"
#include "MetroidPrime/ScriptObjects/CScriptMemoryRelay.hpp"
#include "MetroidPrime/ScriptObjects/CScriptMidi.hpp"
#include "MetroidPrime/ScriptObjects/CScriptPickup.hpp"
#include "MetroidPrime/ScriptObjects/CScriptPickupGenerator.hpp"
#include "MetroidPrime/ScriptObjects/CScriptPlayerHint.hpp"
#include "MetroidPrime/ScriptObjects/CScriptPlayerStateChange.hpp"
#include "MetroidPrime/ScriptObjects/CScriptPointOfInterest.hpp"
#include "MetroidPrime/ScriptObjects/CScriptRandomRelay.hpp"
#include "MetroidPrime/ScriptObjects/CScriptRipple.hpp"
#include "MetroidPrime/ScriptObjects/CScriptRoomAcoustics.hpp"
#include "MetroidPrime/ScriptObjects/CScriptSpawnPoint.hpp"
#include "MetroidPrime/ScriptObjects/CScriptSpecialFunction.hpp"
#include "MetroidPrime/ScriptObjects/CScriptSpiderBallAttractionSurface.hpp"
#include "MetroidPrime/ScriptObjects/CScriptSteam.hpp"
#include "MetroidPrime/ScriptObjects/CScriptStreamedMusic.hpp"
#include "MetroidPrime/ScriptObjects/CScriptSwitch.hpp"
#include "MetroidPrime/ScriptObjects/CScriptTargetingPoint.hpp"
#include "MetroidPrime/ScriptObjects/CScriptTimer.hpp"
#include "MetroidPrime/ScriptObjects/CScriptTrigger.hpp"
#include "MetroidPrime/ScriptObjects/CScriptVisorGoo.hpp"
#include "MetroidPrime/ScriptObjects/CScriptWater.hpp"

#include "MetroidPrime/CFluidPlaneManager.hpp"

#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/CResFactory.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Math/CVector2f.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

static CAABox GetCollisionBox(CStateManager& stateMgr, TAreaId id, const CVector3f& extent,
                              const CVector3f& offset) {
  const CAABox box(0.5f * -extent.GetX() + offset.GetX(), 0.5f * -extent.GetY() + offset.GetY(),
                   0.5f * -extent.GetZ() + offset.GetZ(), 0.5f * extent.GetX() + offset.GetX(),
                   0.5f * extent.GetY() + offset.GetY(), 0.5f * extent.GetZ() + offset.GetZ());
  return box.GetTransformedAABox(stateMgr.GetWorld()->GetAreaAlways(id).GetTM().GetRotation());
}

static CTransform4f ConvertEditorEulerToTransform4f(const CVector3f& orientation,
                                                    const CVector3f& position) {
  CQuaternion quat = CQuaternion::ZRotation(CRelAngle::FromDegrees(orientation.GetZ())) *
                     CQuaternion::YRotation(CRelAngle::FromDegrees(orientation.GetY())) *
                     CQuaternion::XRotation(CRelAngle::FromDegrees(orientation.GetX()));
  CMatrix3f mat = quat.BuildTransform();
  return CTransform4f(mat.GetColumn(kDX), mat.GetColumn(kDY), mat.GetColumn(kDZ), position);
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

CAnimationParameters LoadAnimationParameters(CInputStream& in) {
  CAssetId ancs = in.Get< CAssetId >();
  int charIdx = in.Get< int >();
  uint defaultAnim = in.Get< int >();
  return CAnimationParameters(ancs, charIdx, defaultAnim);
}

static CLightParameters LoadLightParameters(CInputStream& in) {
  int propCount = in.ReadLong();
  if (propCount != 14) {
    return CLightParameters::None();
  }

  bool castShadow = in.Get< bool >();
  float shadowScale = in.Get< float >();
  CLightParameters::EShadowTessellation shadowTessInt =
      CLightParameters::EShadowTessellation(in.ReadLong());
  float shadowAlpha = in.Get< float >();
  float maxShadowHeight = in.Get< float >();

  CColor noLightsAmbient(in);

  bool makeLights = in.Get< bool >();
  CLightParameters::EWorldLightingOptions lightOpts =
      CLightParameters::EWorldLightingOptions(in.Get< int >());
  CLightParameters::ELightRecalculationOptions recalcOpts =
      CLightParameters::ELightRecalculationOptions(in.Get< int >());

  CVector3f actorPosBias(in);

  int maxDynamicLights = propCount >= 12 ? in.Get< int >() : -1;
  int maxAreaLights = propCount >= 12 ? in.Get< int >() : -1;
  bool ambientChannelOverflow = propCount >= 13 ? in.Get< bool >() : false;
  int layerIdx = propCount >= 14 ? in.Get< int >() : 0;

  return CLightParameters(castShadow, shadowScale, shadowTessInt, shadowAlpha, maxShadowHeight,
                          noLightsAmbient, makeLights, lightOpts, recalcOpts, actorPosBias,
                          maxDynamicLights, maxAreaLights, ambientChannelOverflow, layerIdx);
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
  int propCount = in.ReadLong();
  bool valid = false;
  if (propCount >= 1 && propCount <= 3)
    valid = true;
  if (!valid)
    return CVisorParameters(0xf, false, false);

  bool b1 = in.ReadBool();
  bool scanPassthrough = false;
  if (propCount > 2)
    scanPassthrough = in.ReadBool();
  uint mask;
  if (propCount >= 2) {
    mask = in.ReadLong();
  } else {
    mask = 0xf;
  }
  return CVisorParameters(mask, b1, scanPassthrough);
}

static CActorParameters LoadActorParameters(CInputStream& in) {
  int propCount = in.ReadLong();
  bool valid = false;
  if (propCount >= 5 && propCount <= 0xe)
    valid = true;
  if (!valid)
    return CActorParameters::None();

  CLightParameters lParms = LoadLightParameters(in);

  CScannableParameters sParms =
      propCount > 5 ? LoadScannableParameters(in) : CScannableParameters(kInvalidAssetId);

  CAssetId xrayModel = in.Get< CAssetId >();
  CAssetId xraySkin = in.Get< CAssetId >();
  CAssetId infraModel = in.Get< CAssetId >();
  CAssetId infraSkin = in.Get< CAssetId >();

  bool globalTimeProvider = propCount > 7 ? in.Get< bool >() : true;
  float fadeInTime = propCount > 8 ? in.Get< float >() : 1.f;
  float fadeOutTime = propCount > 9 ? in.Get< float >() : 1.f;
  CVisorParameters vParms =
      propCount > 6 ? LoadVisorParameters(in) : CVisorParameters(0xf, false, false);

  bool thermalHeat = propCount > 10 ? in.Get< bool >() : false;
  bool renderUnsorted = propCount > 11 ? in.Get< bool >() : false;
  bool noSortThermal = propCount > 12 ? in.Get< bool >() : false;
  float thermalMag = propCount > 13 ? in.Get< float >() : 1.f;

  uint xrayType = gpResourceFactory->GetResourceTypeById(xrayModel);
  uint infraType = gpResourceFactory->GetResourceTypeById(infraModel);

  int flags = 0;
  if (xrayType)
    flags |= 1;
  if (infraType)
    flags |= 2;

  rstl::pair< CAssetId, CAssetId > xray =
      (flags & 1) ? rstl::pair< CAssetId, CAssetId >(xrayModel, xraySkin)
                  : rstl::pair< CAssetId, CAssetId >(CAssetId(), CAssetId());

  rstl::pair< CAssetId, CAssetId > infra =
      (flags & 2) ? rstl::pair< CAssetId, CAssetId >(infraModel, infraSkin)
                  : rstl::pair< CAssetId, CAssetId >(CAssetId(), CAssetId());

  return CActorParameters(lParms, sParms, xray, infra, vParms, globalTimeProvider, thermalHeat,
                          renderUnsorted, noSortThermal, fadeInTime, fadeOutTime, thermalMag);
}

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

static uint LoadParameterFlags(CInputStream& in) {
  int count = in.ReadLong();
  uint ret = 0;
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

  return rs_new CScriptTrigger(mgr.AllocateUniqueId(), name, info, position, box, dInfo,
                               orientedForce, flags, active, b2, b3);
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
    return rs_new CScriptTrigger(mgr.AllocateUniqueId(), aHead.x0_name, info,
                                 aHead.x10_transform.GetTranslation(), box, CDamageInfo(),
                                 CVector3f::Zero(), kTFL_DetectPlayer, active, deactivateOnEnter,
                                 deactivateOnExit);
  } else {
    return rs_new CScriptCameraHintTrigger(mgr.AllocateUniqueId(), active, aHead.x0_name, info,
                                           scale, aHead.x10_transform, deactivateOnEnter,
                                           deactivateOnExit);
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
  CScriptDamageableTrigger::ECanOrbit canOrbit = in.Get< bool >()
                                                     ? CScriptDamageableTrigger::kCO_Orbit
                                                     : CScriptDamageableTrigger::kCO_NoOrbit;
  bool active = in.Get< bool >();
  CVisorParameters vParms = LoadVisorParameters(in);
  return rs_new CScriptDamageableTrigger(mgr.AllocateUniqueId(), name, info, position, volume,
                                         hInfo, dVuln, triggerFlags, patternTex1, patternTex2,
                                         colorTex, canOrbit, active, vParms);
}

static CFluidUVMotion LoadFluidUVMotion(CInputStream& in) {
  CFluidUVMotion::EFluidMotion motion = CFluidUVMotion::EFluidMotion(in.ReadLong());
  float a = in.ReadFloat();
  float b = (in.ReadFloat() * M_PIF) / 180.f - M_PIF;
  float c = in.ReadFloat();
  float d = in.ReadFloat();
  CFluidUVMotion::SFluidLayerMotion pattern1Layer(motion, a, b, c, d);

  motion = CFluidUVMotion::EFluidMotion(in.ReadLong());
  a = in.ReadFloat();
  b = (in.ReadFloat() * M_PIF) / 180.f - M_PIF;
  c = in.ReadFloat();
  d = in.ReadFloat();
  CFluidUVMotion::SFluidLayerMotion pattern2Layer(motion, a, b, c, d);

  motion = CFluidUVMotion::EFluidMotion(in.ReadLong());
  a = in.ReadFloat();
  b = in.ReadFloat();
  c = in.ReadFloat();
  d = in.ReadFloat();
  CFluidUVMotion::SFluidLayerMotion colorLayer(motion, a, (b * M_PIF) / 180.f - M_PIF, c, d);

  a = in.ReadFloat();
  b = in.ReadFloat();
  return CFluidUVMotion(a, (b * M_PIF) / 180.f - M_PIF, colorLayer, pattern1Layer, pattern2Layer);
}

CEntity* ScriptLoader::LoadWater(CStateManager& mgr, CInputStream& in, int propCount,
                                 const CEntityInfo& info) {
  if (propCount != 63)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  CVector3f position(in);
  CVector3f extent(in);
  CDamageInfo dInfo(in);
  CVector3f orientedForce(in);
  uint triggerFlags = in.ReadLong() | 0x7fc;
  bool thermalCold = in.ReadBool();
  bool displaySurface = in.ReadBool();
  CAssetId patternMap1 = in.Get< CAssetId >();
  CAssetId patternMap2 = in.Get< CAssetId >();
  CAssetId colorMap = in.Get< CAssetId >();
  CAssetId bumpMap = in.Get< CAssetId >();
  CAssetId envMap = in.Get< CAssetId >();
  CAssetId envBumpMap = in.Get< CAssetId >();
  CVector3f bumpLightDir = in.Get< CVector3f >();
  if (!bumpLightDir.CanBeNormalized()) {
    bumpLightDir = CVector3f(0.f, 0.f, -1.f);
  }

  float bumpScale = 1.f / in.Get< float >();
  float morphInTime = in.Get< float >();
  float morphOutTime = in.Get< float >();
  bool active = in.ReadBool();
  CFluidPlane::EFluidType fluidType = CFluidPlane::EFluidType(in.ReadLong());
  bool b4 = in.ReadBool();
  float alpha = in.Get< float >();
  CFluidUVMotion uvMotion = LoadFluidUVMotion(in);

  float turbSpeed = in.Get< float >();
  float turbDistance = in.Get< float >();
  float turbFreqMax = in.Get< float >();
  float turbFreqMin = in.Get< float >();
  float turbPhaseMax = (M_2PIF * in.Get< float >()) / 360.f;
  float turbPhaseMin = (M_2PIF * in.Get< float >()) / 360.f;
  float turbAmplitudeMax = in.Get< float >();
  float turbAmplitudeMin = in.Get< float >();
  CColor splashColor(in);
  CColor insideFogColor = in.Get< CColor >();
  CAssetId splashParticle1 = in.Get< CAssetId >();
  CAssetId splashParticle2 = in.Get< CAssetId >();
  CAssetId splashParticle3 = in.Get< CAssetId >();
  CAssetId visorRunoffParticle = in.Get< CAssetId >();
  CAssetId unmorphVisorRunoffParticle = in.Get< CAssetId >();
  int visorRunoffSfx = in.ReadLong();
  int unmorphVisorRunoffSfx = in.ReadLong();
  int splashSfx1 = in.ReadLong();
  int splashSfx2 = in.ReadLong();
  int splashSfx3 = in.ReadLong();
  float tileSize = in.Get< float >();
  uint tileSubdivisions = in.ReadLong();
  float specularMin = in.Get< float >();
  float specularMax = in.Get< float >();
  float reflectionSize = in.Get< float >();
  float rippleIntensity = in.Get< float >();
  float reflectionBlend = in.Get< float >();
  float fogBias = in.Get< float >();
  float fogMagnitude = in.Get< float >();
  float fogSpeed = in.Get< float >();
  CColor fogColor = in.Get< CColor >();
  CAssetId lightmap = in.Get< CAssetId >();
  float unitsPerLightmapTexel = in.Get< float >();
  float alphaInTime = in.Get< float >();
  float alphaOutTime = in.Get< float >();
  uint w21 = in.ReadLong();
  uint w22 = in.ReadLong();
  bool b5 = in.ReadBool();

  int bitVal0 = 0;
  int bitVal1 = 0;
  uint* bitset = NULL;

  if (b5) {
    bitVal0 = (short)in.ReadShort();
    bitVal1 = (short)in.ReadShort();
    int len = (bitVal0 * bitVal1 + 31) / 32;
    bitset = rs_new uint[len];
    in.ReadBytes(bitset, len * 4);
  }

  float hx = extent.GetX() * 0.5f;
  float hy = extent.GetY() * 0.5f;
  float hz = extent.GetZ() * 0.5f;
  CAABox box = CAABox(CVector3f(-hx, -hy, -hz), CVector3f(hx, hy, hz));
  return rs_new CScriptWater(
      mgr, mgr.AllocateUniqueId(), name, info, position, box, dInfo, orientedForce, triggerFlags,
      thermalCold, displaySurface, patternMap1, patternMap2, colorMap, bumpMap,
      bumpMap == kInvalidAssetId ? envMap : kInvalidAssetId,
      bumpMap == kInvalidAssetId ? envBumpMap : kInvalidAssetId, kInvalidAssetId, bumpLightDir,
      bumpScale, morphInTime, morphOutTime, active, fluidType, b4, alpha, uvMotion, turbSpeed,
      turbDistance, turbFreqMax, turbFreqMin, turbPhaseMax, turbPhaseMin, turbAmplitudeMax,
      turbAmplitudeMin, splashColor, insideFogColor, splashParticle1, splashParticle2,
      splashParticle3, visorRunoffParticle, unmorphVisorRunoffParticle, visorRunoffSfx,
      unmorphVisorRunoffSfx, splashSfx1, splashSfx2, splashSfx3, tileSize, tileSubdivisions,
      specularMin, specularMax, reflectionSize, rippleIntensity, reflectionBlend, fogBias,
      fogMagnitude, fogSpeed, fogColor, lightmap, unitsPerLightmapTexel, alphaInTime, alphaOutTime,
      w21, w22, b5, bitVal0, bitVal1, bitset);
}

CEntity* ScriptLoader::LoadSteam(CStateManager& mgr, CInputStream& in, int propCount,
                                 const CEntityInfo& info) {
  if (propCount != 11)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  CVector3f position(in);
  CVector3f extent(in);
  CDamageInfo dInfo(in);
  CVector3f orientedForce(in);
  uint triggerFlags = in.ReadLong();
  bool active = in.ReadBool();
  CAssetId texture = in.ReadLong();
  float f1 = in.ReadFloat();
  float f2 = in.ReadFloat();
  float f3 = in.ReadFloat();
  float f4 = in.ReadFloat();
  bool b2 = in.ReadBool();

  float hx = extent.GetX() * 0.5f;
  float hy = extent.GetY() * 0.5f;
  float hz = extent.GetZ() * 0.5f;
  CAABox aabb = CAABox(CVector3f(-hx, -hy, -hz), CVector3f(hx, hy, hz));
  return rs_new CScriptSteam(mgr.AllocateUniqueId(), name, info, position, aabb, dInfo,
                             orientedForce, triggerFlags, active, texture, f1, f2, f3, f4, b2);
}

CEntity* ScriptLoader::LoadRipple(CStateManager& mgr, CInputStream& in, int propCount,
                                  const CEntityInfo& info) {
  if (propCount != 4)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  CVector3f center(in);
  bool active = in.Get< bool >();
  float mag = in.Get< float >();
  return rs_new CScriptRipple(mgr.AllocateUniqueId(), name, info, center, active, mag);
}

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

  return rs_new CScriptSpawnPoint(
      mgr.AllocateUniqueId(), name, info, ConvertEditorEulerToTransform4f(rotation, position),
      rstl::reserved_vector< int, int(CPlayerState::kIT_Max) >(itemCounts), defaultSpawn, active,
      morphed);
}

CEntity* ScriptLoader::LoadJumpPoint(CStateManager& mgr, CInputStream& in, int propCount,
                                     const CEntityInfo& info) {
  return nullptr;
}

CEntity* ScriptLoader::LoadDock(CStateManager& mgr, CInputStream& in, int propCount,
                                const CEntityInfo& info) {
  if (propCount != 7)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  bool active = in.Get< bool >();
  CVector3f position(in);
  CVector3f scale(in);
  int dock = in.Get< int >();
  TAreaId area = in.Get< int >();
  bool loadConnected = in.Get< bool >();
  return rs_new CScriptDock(mgr.AllocateUniqueId(), name, info, position, scale, dock, area, active,
                            0, loadConnected);
}

CEntity* ScriptLoader::LoadCameraHint(CStateManager& mgr, CInputStream& in, int propCount,
                                      const CEntityInfo& info) {
  if (propCount > 25)
    return nullptr;

  SActorHead aHead(in, mgr);
  bool active = in.Get< bool >();
  int priority = in.Get< int >();
  CBallCamera::EBallCameraBehaviour behaviour = CBallCamera::EBallCameraBehaviour(in.ReadLong());
  uint overrideFlags = LoadParameterFlags(in);
  if (in.ReadBool())
    overrideFlags |= 0x400000;
  float minDist = in.Get< float >();
  if (in.ReadBool())
    overrideFlags |= 0x800000;
  float maxDist = in.Get< float >();
  if (in.ReadBool())
    overrideFlags |= 0x1000000;
  float backwardsDist = in.Get< float >();
  if (in.ReadBool())
    overrideFlags |= 0x2000000;
  CVector3f lookAtOffset(in);
  if (in.ReadBool())
    overrideFlags |= 0x4000000;
  CVector3f chaseLookAtOffset(in);
  CVector3f ballToCam = CVector3f::Zero();
  ballToCam = CVector3f(in);
  if (in.ReadBool())
    overrideFlags |= 0x8000000;
  float fov = in.Get< float >();
  if (in.ReadBool())
    overrideFlags |= 0x10000000;
  CRelAngle attitudeRange = CRelAngle::FromDegrees(in.ReadFloat());
  if (in.ReadBool())
    overrideFlags |= 0x20000000;
  CRelAngle azimuthRange = CRelAngle::FromDegrees(in.ReadFloat());
  if (in.ReadBool())
    overrideFlags |= 0x40000000;
  CRelAngle anglePerSecond = CRelAngle::FromDegrees(in.ReadFloat());
  float clampVelRange = in.Get< float >();
  CRelAngle clampRotRange = CRelAngle::FromDegrees(in.ReadFloat());
  if (in.ReadBool())
    overrideFlags |= 0x80000000;
  float elevation = in.Get< float >();
  // TODO: the following 2 were swapped in Metaforce, so downstream symbols may be wrong
  float clampVelTime = in.Get< float >();
  float interpolateTime = in.Get< float >();
  float controlInterpDur = in.Get< float >();

  return rs_new CScriptCameraHint(
      mgr.AllocateUniqueId(), aHead.x0_name, info, aHead.x10_transform, active, priority, behaviour,
      overrideFlags, minDist, maxDist, backwardsDist, lookAtOffset, chaseLookAtOffset, ballToCam,
      fov, attitudeRange.AsRadians(), azimuthRange.AsRadians(), anglePerSecond.AsRadians(),
      clampVelRange, clampRotRange.AsRadians(), elevation, interpolateTime, clampVelTime,
      controlInterpDur);
}

CEntity* ScriptLoader::LoadPlayerHint(CStateManager& mgr, CInputStream& in, int propCount,
                                      const CEntityInfo& info) {
  if (propCount < 6)
    return nullptr;

  SActorHead aHead(in, mgr);
  bool active = in.Get< bool >();
  uint overrideFlags = LoadParameterFlags(in);
  int priority = in.Get< int >();
  return rs_new CScriptPlayerHint(mgr.AllocateUniqueId(), aHead.x0_name, info, aHead.x10_transform,
                                  active, priority, overrideFlags);
}

CEntity* ScriptLoader::LoadPointOfInterest(CStateManager& mgr, CInputStream& in, int propCount,
                                           const CEntityInfo& info) {
  if (propCount != 6)
    return nullptr;

  SActorHead aHead(in, mgr);
  bool active = in.Get< bool >();
  CScannableParameters sParms = LoadScannableParameters(in);
  float pointSize = in.ReadFloat();
  return rs_new CScriptPointOfInterest(mgr.AllocateUniqueId(), aHead.x0_name, info,
                                       aHead.x10_transform, active, sParms, pointSize);
}

CEntity* ScriptLoader::LoadActor(CStateManager& mgr, CInputStream& in, int propCount,
                                 const CEntityInfo& info) {
  if (propCount != 24)
    return nullptr;

  SScaledActorHead head(in, mgr);
  CVector3f collisionExtent(in);
  CVector3f centroid(in);

  float mass = in.ReadFloat();
  float zMomentum = in.ReadFloat();

  CHealthInfo hInfo(in);

  CDamageVulnerability dVuln(in);

  CAssetId staticId = in.Get< CAssetId >();
  CAnimationParameters aParms = LoadAnimationParameters(in);

  CActorParameters actParms = LoadActorParameters(in);

  bool looping = in.Get< bool >();
  bool immovable = in.Get< bool >();
  bool solid = in.Get< bool >();
  bool cameraPassthrough = in.Get< bool >();
  bool active = in.Get< bool >();
  int shaderIdx = in.Get< int >();
  float xrayAlpha = in.Get< float >();
  bool noThermalHotZ = in.Get< bool >();
  bool castsShadow = in.Get< bool >();
  bool scaleAdvancementDelta = in.Get< bool >();
  bool materialFlag54 = in.Get< bool >();

  FourCC animType = gpResourceFactory->GetResourceTypeById(aParms.GetACSFile());
  if (gpResourceFactory->GetResourceTypeById(staticId) == 0 && animType == 0)
    return nullptr;

  CAABox aabb = GetCollisionBox(mgr, info.GetAreaId(), collisionExtent, centroid);

  CMaterialList list;
  if (immovable) // Bool 2
    list.Add(kMT_Immovable);

  if (solid) // Bool 3
    list.Add(kMT_Solid);

  if (cameraPassthrough) // Bool 4
    list.Add(kMT_CameraPassthrough);

  bool negativeCollisionExtent =
      collisionExtent.GetX() < 0.f || collisionExtent.GetY() < 0.f || collisionExtent.GetZ() < 0.f;

  CModelData data(CModelData::CModelDataNull());
  if (animType == 'ANCS') {
    data = CModelData(CAnimRes(aParms.GetACSFile(), aParms.GetCharacter(), head.x40_scale,
                               aParms.GetInitialAnimation(), false));
  } else {
    data = CModelData(CStaticRes(staticId, head.x40_scale));
  }

  if (collisionExtent == CVector3f::Zero() || negativeCollisionExtent)
    aabb = data.GetBounds(head.x0_actorHead.x10_transform.GetRotation());

  return rs_new CScriptActor(mgr.AllocateUniqueId(), head.x0_actorHead.x0_name, info,
                             head.x0_actorHead.x10_transform, data, aabb, list, mass, zMomentum,
                             hInfo, dVuln, actParms, looping, active, shaderIdx, xrayAlpha,
                             noThermalHotZ, castsShadow, scaleAdvancementDelta, materialFlag54);
}

CEntity* ScriptLoader::LoadPickup(CStateManager& mgr, CInputStream& in, int propCount,
                                  const CEntityInfo& info) {
  if (propCount != 18)
    return nullptr;

  SScaledActorHead head(in, mgr);
  CVector3f extent(in);
  CVector3f offset(in);
  CPlayerState::EItemType itemType = CPlayerState::EItemType(in.Get< int >());
  int capacity = in.Get< int >();
  int amount = in.Get< int >();
  float possibility = in.Get< float >();
  float lifeTime = in.Get< float >();
  float fadeInTime = in.Get< float >();
  CAssetId staticModel = in.Get< CAssetId >();
  CAnimationParameters aParms = LoadAnimationParameters(in);
  CActorParameters actParms = LoadActorParameters(in);
  bool active = in.Get< bool >();
  float startDelay = in.Get< float >();
  CAssetId pickupEffect = in.Get< CAssetId >();

  FourCC staticModelType = gpResourceFactory->GetResourceTypeById(staticModel);
  FourCC animType = gpResourceFactory->GetResourceTypeById(aParms.GetACSFile());
  if (staticModelType == 0 && animType == 0)
    return nullptr;

  const CTransform4f& xf = head.x0_actorHead.x10_transform;
  CAABox aabb = GetCollisionBox(mgr, info.GetAreaId(), extent, offset);

  bool negativeExtent;
  if (extent.GetX() < 0.f)
    negativeExtent = true;
  else if (extent.GetY() < 0.f)
    negativeExtent = true;
  else if (extent.GetZ() < 0.f)
    negativeExtent = true;
  else
    negativeExtent = false;

  CModelData data(CModelData::CModelDataNull());
  if (animType == 'ANCS') {
    data = CModelData(CAnimRes(aParms.GetACSFile(), aParms.GetCharacter(), head.x40_scale,
                               aParms.GetInitialAnimation(), true));
  } else {
    data = CModelData(CStaticRes(staticModel, head.x40_scale));
  }

  if (extent == CVector3f::Zero() || negativeExtent)
    aabb = data.GetBounds(xf.GetRotation());

  return rs_new CScriptPickup(mgr.AllocateUniqueId(), head.x0_actorHead.x0_name, info, xf, data,
                              actParms, aabb, itemType, amount, capacity, pickupEffect, possibility,
                              lifeTime, fadeInTime, startDelay, active);
}

CEntity* ScriptLoader::LoadEnemy(CStateManager& mgr, CInputStream& in, int propCount,
                                 const CEntityInfo& info) {
  return nullptr;
}

CEntity* ScriptLoader::LoadRepulsor(CStateManager& mgr, CInputStream& in, int propCount,
                                    const CEntityInfo& info) {
  if (propCount != 4)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  CVector3f center(in);
  bool active = in.Get< bool >();
  float radius = in.Get< float >();
  return rs_new CRepulsor(mgr.AllocateUniqueId(), active, name, info, center, radius);
}

CEntity* ScriptLoader::LoadTimer(CStateManager& mgr, CInputStream& in, int propCount,
                                 const CEntityInfo& info) {
  if (propCount != 6)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  float startTime = in.Get< float >();
  float maxRandDelay = in.Get< float >();
  bool loop = in.Get< bool >();
  bool autoStart = in.Get< bool >();
  bool active = in.Get< bool >();
  return rs_new CScriptTimer(mgr.AllocateUniqueId(), name, info, startTime, maxRandDelay, loop,
                             autoStart, active);
}

CEntity* ScriptLoader::LoadCounter(CStateManager& mgr, CInputStream& in, int propCount,
                                   const CEntityInfo& info) {
  if (propCount != 5)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  int initial = in.Get< int >();
  int max = in.Get< int >();
  bool autoReset = in.Get< bool >();
  bool active = in.Get< bool >();
  return rs_new CScriptCounter(mgr.AllocateUniqueId(), name, info, initial, max, autoReset, active);
}

CEntity* ScriptLoader::LoadRelay(CStateManager& mgr, CInputStream& in, int propCount,
                                 const CEntityInfo& info) {
  bool valid = false;
  if (propCount >= 3 && propCount <= 4)
    valid = true;
  if (!valid)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  bool b1 = in.Get< bool >();
  bool b2 = in.Get< bool >();
  bool b3 = false;
  if (propCount > 3)
    b3 = in.Get< bool >();
  return rs_new CScriptMemoryRelay(mgr.AllocateUniqueId(), name, info, b1, b2, b3);
}

CEntity* ScriptLoader::LoadRandomRelay(CStateManager& mgr, CInputStream& in, int propCount,
                                       const CEntityInfo& info) {
  if (propCount != 5)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  int sendSetSize = in.Get< int >();
  int sendSetVariance = in.Get< int >();
  bool percentSize = in.ReadBool();
  bool active = in.ReadBool();
  return rs_new CScriptRandomRelay(mgr.AllocateUniqueId(), name, info, sendSetSize, sendSetVariance,
                                   percentSize, active);
}

CEntity* ScriptLoader::LoadSwitch(CStateManager& mgr, CInputStream& in, int propCount,
                                  const CEntityInfo& info) {
  if (propCount != 4)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  bool active = in.Get< bool >();
  bool b2 = in.Get< bool >();
  bool b3 = in.Get< bool >();
  return rs_new CScriptSwitch(mgr.AllocateUniqueId(), name, info, active, b2, b3);
}

CEntity* ScriptLoader::LoadPlayerStateChange(CStateManager& mgr, CInputStream& in, int propCount,
                                             const CEntityInfo& info) {
  if (propCount != 7)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  bool active = in.Get< bool >();
  int itemType = in.Get< int >();
  int itemCount = in.Get< int >();
  int itemCapacity = in.Get< int >();
  int ctrl = in.Get< int >();
  int ctrlCmdOpt = in.Get< int >();
  return rs_new CScriptPlayerStateChange(
      mgr.AllocateUniqueId(), name, info, active, itemType, itemCount, itemCapacity,
      CScriptPlayerStateChange::EControl(ctrl),
      CScriptPlayerStateChange::EControlCommandOption(ctrlCmdOpt));
}

CEntity* ScriptLoader::LoadDockAreaChange(CStateManager& mgr, CInputStream& in, int propCount,
                                          const CEntityInfo& info) {
  if (propCount != 3)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  int dock = in.Get< int >();
  bool active = in.Get< bool >();
  return rs_new CScriptDockAreaChange(mgr.AllocateUniqueId(), name, info, dock, active);
}

CEntity* ScriptLoader::LoadActorRotate(CStateManager& mgr, CInputStream& in, int propCount,
                                       const CEntityInfo& info) {
  if (propCount != 6)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  CVector3f rotation(in);
  float scale = in.Get< float >();
  bool updateActors = in.Get< bool >();
  bool updateOnCreation = in.Get< bool >();
  bool active = in.Get< bool >();
  return rs_new CScriptActorRotate(mgr.AllocateUniqueId(), name, info, rotation, scale,
                                   updateActors, updateOnCreation, active);
}

CEntity* ScriptLoader::LoadTargetingPoint(CStateManager& mgr, CInputStream& in, int propCount,
                                          const CEntityInfo& info) {
  if (propCount != 4)
    return nullptr;

  SActorHead aHead(in, mgr);
  bool active = in.Get< bool >();
  return rs_new CScriptTargetingPoint(mgr.AllocateUniqueId(), aHead.x0_name, info,
                                      aHead.x10_transform, active);
}

CEntity* ScriptLoader::LoadPickupGenerator(CStateManager& mgr, CInputStream& in, int propCount,
                                           const CEntityInfo& info) {
  if (propCount != 4)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  CVector3f pos(in);
  bool active = in.Get< bool >();
  float frequency = in.Get< float >();
  return rs_new CScriptPickupGenerator(mgr.AllocateUniqueId(), name, info, pos, frequency, active);
}

CEntity* ScriptLoader::LoadAiJumpPoint(CStateManager& mgr, CInputStream& in, int propCount,
                                       const CEntityInfo& info) {
  if (propCount != 5)
    return nullptr;

  SActorHead aHead(in, mgr);
  bool active = in.Get< bool >();
  float apex = in.ReadFloat();
  return rs_new CScriptAiJumpPoint(mgr.AllocateUniqueId(), aHead.x0_name, info, aHead.x10_transform,
                                   active, apex);
}

CEntity* ScriptLoader::LoadDebugCameraWaypoint(CStateManager& mgr, CInputStream& in, int propCount,
                                               const CEntityInfo& info) {
  if (propCount != 4)
    return nullptr;

  SActorHead aHead(in, mgr);
  uint w1 = in.Get< uint >();
  return rs_new CScriptDebugCameraWaypoint(mgr.AllocateUniqueId(), aHead.x0_name, info,
                                           aHead.x10_transform, w1);
}

CEntity* ScriptLoader::LoadSpiderBallAttractionSurface(CStateManager& mgr, CInputStream& in,
                                                       int propCount, const CEntityInfo& info) {
  if (propCount != 5)
    return nullptr;

  SScaledActorHead aHead(in, mgr);
  bool active = in.Get< bool >();
  return rs_new CScriptSpiderBallAttractionSurface(
      mgr.AllocateUniqueId(), aHead.x0_actorHead.x0_name, info, aHead.x0_actorHead.x10_transform,
      aHead.x40_scale, active);
}

CEntity* ScriptLoader::LoadAreaAttributes(CStateManager& mgr, CInputStream& in, int propCount,
                                          const CEntityInfo& info) {
  if (propCount != 9)
    return nullptr;

  int load = in.ReadLong();
  if (load != 1)
    return nullptr;

  bool showSkybox = in.ReadBool();
  EEnvFxType fxType = EEnvFxType(in.ReadLong());
  float envFxDensity = in.ReadFloat();
  float thermalHeat = in.ReadFloat();
  float xrayFogDistance = in.ReadFloat();
  float worldLightingLevel = in.ReadFloat();
  CAssetId skybox = in.Get< CAssetId >();
  EPhazonType phazonType = EPhazonType(in.ReadLong());

  return rs_new CScriptAreaAttributes(mgr.AllocateUniqueId(), info, showSkybox, fxType,
                                      envFxDensity, thermalHeat, xrayFogDistance,
                                      worldLightingLevel, skybox, phazonType);
}

CEntity* ScriptLoader::LoadDistanceFog(CStateManager& mgr, CInputStream& in, int propCount,
                                       const CEntityInfo& info) {
  if (propCount != 8)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  uint mode = in.Get< uint >();
  CColor color(in);
  CVector2f range(in);
  float colorDelta = in.Get< float >();
  CVector2f rangeDelta(in);
  bool expl = in.Get< bool >();
  bool active = in.Get< bool >();

  ERglFogMode fogMode;
  switch (mode) {
  case 0:
    fogMode = kRFM_None;
    break;
  case 1:
    fogMode = kRFM_PerspLin;
    break;
  case 2:
    fogMode = kRFM_PerspExp;
    break;
  case 3:
    fogMode = kRFM_PerspExp2;
    break;
  case 4:
    fogMode = kRFM_PerspRevExp;
    break;
  case 5:
    fogMode = kRFM_PerspRevExp2;
    break;
  default:
    return nullptr;
  }

  return rs_new CScriptDistanceFog(mgr.AllocateUniqueId(), name, info, fogMode, color, range,
                                   colorDelta, rangeDelta, expl, active, 0.f, 0.f, 0.f, 0.f);
}

CEntity* ScriptLoader::LoadMazeNode(CStateManager& mgr, CInputStream& in, int propCount,
                                    const CEntityInfo& info) {
  if (propCount != 10)
    return nullptr;

  SActorHead aHead(in, mgr);
  bool active = in.Get< bool >();
  int col = in.Get< int >();
  int row = in.Get< int >();
  int side = in.Get< int >();
  CVector3f actorPos(in);
  CVector3f triggerPos(in);
  CVector3f effectPos(in);

  return rs_new CScriptMazeNode(mgr.AllocateUniqueId(), aHead.x0_name, info, aHead.x10_transform,
                                active, col, row, side, actorPos, triggerPos, effectPos);
}

CEntity* ScriptLoader::LoadWorldLightFader(CStateManager& mgr, CInputStream& in, int propCount,
                                           const CEntityInfo& info) {
  if (propCount != 4)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  bool active = in.Get< bool >();
  float f1 = in.Get< float >();
  float f2 = in.Get< float >();

  return rs_new CScriptDistanceFog(mgr.AllocateUniqueId(), name, info, kRFM_None, CColor::Black(),
                                   CVector2f(0.f, 0.f), 0.f, CVector2f(0.f, 0.f), false, active,
                                   0.f, 0.f, f1, f2);
}

CEntity* ScriptLoader::LoadThermalHeatFader(CStateManager& mgr, CInputStream& in, int propCount,
                                            const CEntityInfo& info) {
  if (propCount != 4)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  bool active = in.Get< bool >();
  float fadedLevel = in.Get< float >();
  float initialLevel = in.Get< float >();

  return rs_new CScriptDistanceFog(mgr.AllocateUniqueId(), name, info, kRFM_None, CColor::Black(),
                                   CVector2f(0.f, 0.f), 0.f, CVector2f(0.f, 0.f), false, active,
                                   fadedLevel, initialLevel, 0.f, 0.f);
}

CEntity* ScriptLoader::LoadRumbleEffect(CStateManager& mgr, CInputStream& in, int propCount,
                                        const CEntityInfo& info) {
  if (propCount != 6)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  CVector3f position(in);
  bool active = in.Get< bool >();
  float f1 = in.Get< float >();
  int w1 = in.Get< int >();
  uint pFlags = LoadParameterFlags(in);

  return rs_new CScriptSpecialFunction(
      mgr.AllocateUniqueId(), name, info,
      ConvertEditorEulerToTransform4f(CVector3f::Zero(), position),
      CScriptSpecialFunction::kSF_RumbleEffect, rstl::string_l(""), f1, float(w1), pFlags, 0.f,
      CVector3f::Zero(), CColor::Black(), active, CDamageInfo(), -1, -1, CPlayerState::kIT_Invalid,
      CSfxManager::kInternalInvalidSfxId, CSfxManager::kInternalInvalidSfxId,
      CSfxManager::kInternalInvalidSfxId);
}

CEntity* ScriptLoader::LoadEnvFxDensityController(CStateManager& mgr, CInputStream& in,
                                                  int propCount, const CEntityInfo& info) {
  if (propCount != 4)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  bool active = in.Get< bool >();
  float density = in.Get< float >();
  int maxDensityDeltaSpeed = in.Get< int >();

  return rs_new CScriptSpecialFunction(
      mgr.AllocateUniqueId(), name, info, CTransform4f::Identity(),
      CScriptSpecialFunction::kSF_EnvFxDensityController, rstl::string_l(""), density,
      float(maxDensityDeltaSpeed), 0.f, 0.f, CVector3f::Zero(), CColor::Black(), active,
      CDamageInfo(), -1, -1, CPlayerState::kIT_Invalid, CSfxManager::kInternalInvalidSfxId,
      CSfxManager::kInternalInvalidSfxId, CSfxManager::kInternalInvalidSfxId);
}

CEntity* ScriptLoader::LoadScriptCameraPitchVolume(CStateManager& mgr, CInputStream& in,
                                                   int propCount, const CEntityInfo& info) {
  if (propCount != 8)
    return nullptr;

  SScaledActorHead aHead(in, mgr);
  bool active = in.Get< bool >();
  float upPitch = in.Get< float >();
  float downPitch = in.Get< float >();
  float scale = in.Get< float >();

  return rs_new CScriptCameraPitchVolume(mgr.AllocateUniqueId(), active, aHead.x0_actorHead.x0_name,
                                         info, aHead.x40_scale, aHead.x0_actorHead.x10_transform,
                                         CRelAngle::FromDegrees(upPitch),
                                         CRelAngle::FromDegrees(downPitch), scale);
}

CEntity* ScriptLoader::LoadRadialDamage(CStateManager& mgr, CInputStream& in, int propCount,
                                        const CEntityInfo& info) {
  if (propCount != 5)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  CVector3f center(in);
  bool active = in.Get< bool >();
  CDamageInfo dInfo = in.Get< CDamageInfo >();
  float radius = in.Get< float >();

  return rs_new CScriptSpecialFunction(
      mgr.AllocateUniqueId(), name, info,
      ConvertEditorEulerToTransform4f(CVector3f::Zero(), center),
      CScriptSpecialFunction::kSF_RadialDamage, rstl::string_l(""), radius, 0.f, 0.f, 0.f,
      CVector3f::Zero(), CColor::Black(), active, dInfo, -1, -1, CPlayerState::kIT_Invalid,
      CSfxManager::kInternalInvalidSfxId, CSfxManager::kInternalInvalidSfxId,
      CSfxManager::kInternalInvalidSfxId);
}

CEntity* ScriptLoader::LoadStreamedMusic(CStateManager& mgr, CInputStream& in, int propCount,
                                         const CEntityInfo& info) {
  if (propCount != 9)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  bool active = in.Get< bool >();
  rstl::string fileName(in);
  bool noStopOnDeactivate = in.Get< bool >();
  float fadeIn = in.Get< float >();
  float fadeOut = in.Get< float >();
  uint volume = in.Get< uint >();
  bool loop = in.Get< uint >() == 0;
  bool music = in.Get< bool >();

  return rs_new CScriptStreamedMusic(mgr.AllocateUniqueId(), info, name, active, fileName,
                                     noStopOnDeactivate, fadeIn, fadeOut, volume, loop, music);
}

CEntity* ScriptLoader::LoadMidi(CStateManager& mgr, CInputStream& in, int propCount,
                                const CEntityInfo& info) {
  if (propCount != 6)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  bool active = in.Get< bool >();
  uint csng = in.Get< uint >();
  float fadeIn = in.Get< float >();
  float fadeOut = in.Get< float >();
  uint vol = in.Get< uint >();
  return rs_new CScriptMidi(mgr.AllocateUniqueId(), info, name, active, csng, fadeIn, fadeOut, vol);
}

CEntity* ScriptLoader::LoadVisorGoo(CStateManager& mgr, CInputStream& in, int propCount,
                                    const CEntityInfo& info) {
  if (propCount != 11)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  CTransform4f xf = CTransform4f::Translate(CVector3f(in));
  CAssetId particle = in.Get< CAssetId >();
  CAssetId electric = in.Get< CAssetId >();
  float minDist = in.Get< float >();
  float maxDist = in.Get< float >();
  float nearProb = in.Get< float >();
  float farProb = in.Get< float >();
  CColor color(in);
  int sfx = in.Get< int >();
  bool forceShow = in.Get< bool >();

  if (particle == kInvalidAssetId && electric == kInvalidAssetId)
    return nullptr;
  return rs_new CScriptVisorGoo(mgr.AllocateUniqueId(), name, info, xf, particle, electric, minDist,
                                maxDist, nearProb, farProb, color, sfx, forceShow, false);
}

CEntity* ScriptLoader::LoadSaveStation(CStateManager& mgr, CInputStream& in, int propCount,
                                       const CEntityInfo& info) {
  return nullptr;
}

CEntity* ScriptLoader::LoadControllerAction(CStateManager& mgr, CInputStream& in, int propCount,
                                            const CEntityInfo& info) {
  if (!(propCount >= 4 && propCount <= 6 ? true : false))
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  bool active = in.Get< bool >();
  CScriptControllerAction::ECommands w1 = CScriptControllerAction::ECommands(in.ReadLong());
  bool b1 = propCount >= 6 ? in.Get< bool >() : false;
  uint w2 = propCount >= 6 ? in.Get< uint >() : 0;
  bool b2 = in.Get< bool >();

  return rs_new CScriptControllerAction(mgr.AllocateUniqueId(), name, info, active, w1, b1, w2, b2);
}

CEntity* ScriptLoader::LoadEMPulse(CStateManager& mgr, CInputStream& in, int propCount,
                                   const CEntityInfo& info) {
  if (propCount != 12)
    return nullptr;

  SActorHead aHead(in, mgr);
  bool active = in.Get< bool >();
  float f1 = in.Get< float >();
  float f2 = in.Get< float >();
  float f3 = in.Get< float >();
  float f4 = in.Get< float >();
  float f5 = in.Get< float >();
  float f6 = in.Get< float >();
  float f7 = in.Get< float >();
  CAssetId particleId = in.Get< CAssetId >();

  return rs_new CScriptEMPulse(mgr.AllocateUniqueId(), aHead.x0_name, info, aHead.x10_transform,
                               active, f1, f2, f3, f4, f5, f6, f7, particleId);
}

CEntity* ScriptLoader::LoadBallTrigger(CStateManager& mgr, CInputStream& in, int propCount,
                                       const CEntityInfo& info) {
  if (propCount != 9)
    return nullptr;

  rstl::string name(in);
  CVector3f pos(in);
  CVector3f scale(in);
  bool b1 = in.Get< bool >();
  float f1 = in.Get< float >();
  float f2 = in.Get< float >();
  float f3 = in.Get< float >();
  CVector3f vec = in.Get< CVector3f >();
  bool b2 = in.Get< bool >();
  return rs_new CScriptBallTrigger(mgr.AllocateUniqueId(), name, info, pos, scale, b1, f1, f2, f3,
                                   vec, b2);
}

CEntity* ScriptLoader::LoadRoomAcoustics(CStateManager& mgr, CInputStream& in, int propCount,
                                         const CEntityInfo& info) {
  if (propCount != 32)
    return nullptr;

  rstl::string name = mgr.HashInstanceName(in);
  bool active = in.Get< bool >();
  uint volScale = in.Get< uint >();
  bool revHi = in.Get< bool >();
  bool revHiDis = in.Get< bool >();
  float revHiColoration = in.Get< float >();
  float revHiMix = in.Get< float >();
  float revHiTime = in.Get< float >();
  float revHiDamping = in.Get< float >();
  float revHiPreDelay = in.Get< float >();
  float revHiCrosstalk = in.Get< float >();
  bool chorus = in.Get< bool >();
  float baseDelay = in.Get< float >();
  float variation = in.Get< float >();
  float period = in.Get< float >();
  bool revStd = in.Get< bool >();
  bool revStdDis = in.Get< bool >();
  float revStdColoration = in.Get< float >();
  float revStdMix = in.Get< float >();
  float revStdTime = in.Get< float >();
  float revStdDamping = in.Get< float >();
  float revStdPreDelay = in.Get< float >();
  bool delay = in.Get< bool >();
  uint delayL = in.Get< uint >();
  uint delayR = in.Get< uint >();
  uint delayS = in.Get< uint >();
  uint feedbackL = in.Get< uint >();
  uint feedbackR = in.Get< uint >();
  uint feedbackS = in.Get< uint >();
  uint outputL = in.Get< uint >();
  uint outputR = in.Get< uint >();
  uint outputS = in.Get< uint >();

  return rs_new CScriptRoomAcoustics(
      mgr.AllocateUniqueId(), name, info, active, volScale, revHi, revHiDis, revHiColoration,
      revHiMix, revHiTime, revHiDamping, revHiPreDelay, revHiCrosstalk, chorus, baseDelay,
      variation, period, revStd, revStdDis, revStdColoration, revStdMix, revStdTime, revStdDamping,
      revStdPreDelay, delay, delayL, delayR, delayS, feedbackL, feedbackR, feedbackS, outputL,
      outputR, outputS);
}
