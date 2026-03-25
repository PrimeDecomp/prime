#include "MetroidPrime/CTargetReticles.hpp"

#include "MetroidPrime/CEulerAngles.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/TCastTo.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Cameras/CGameCamera.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/Player/CPlayerGun.hpp"
#include "MetroidPrime/ScriptObjects/CScriptGrapplePoint.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayer.hpp"
#include "MetroidPrime/Tweaks/CTweakGuiColors.hpp"
#include "MetroidPrime/Tweaks/CTweakTargeting.hpp"

#include "MetroidPrime/CGameArea.hpp"
#include "MetroidPrime/CWorld.hpp"

#include "Kyoto/Basics/CCast.hpp"
#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CModel.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Math/CFrustumPlanes.hpp"
#include "Kyoto/Math/CMatrix3f.hpp"
#include "Kyoto/Math/CloseEnough.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Math/CTransform4f.hpp"

#include "MetaRender/CCubeRenderer.hpp"

#include "rstl/math.hpp"

#include "MetroidPrime/SFX/UI.h"

#include <float.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#pragma inline_max_size(250)

static const char skCrosshairsReticleAssetName[] = "CMDL_Crosshairs";
static const char skOrbitZoneReticleAssetName[] = "CMDL_OrbitZone";
static const char skSeekerAssetName[] = "CMDL_Seeker";
static const char skLockConfirmAssetName[] = "CMDL_LockConfirm";
static const char skTargetFlowerAssetName[] = "CMDL_TargetFlower";
static const char skMissileBracketAssetName[] = "CMDL_MissileBracket";
static const char skChargeGaugeAssetName[] = "CMDL_ChargeGauge";
static const char skChargeBeamTickAssetName[] = "CMDL_ChargeTickFirst";
static const char skOuterBeamIconSquareNameBase[] = "CMDL_BeamSquare";
static const char skInnerBeamIconName[] = "CMDL_InnerBeamIcon";
static const char skLockFireAssetName[] = "CMDL_LockFire";
static const char skLockDaggerAssetName[] = "CMDL_LockDagger0";
static const char skGrappleReticleAssetName[] = "CMDL_Grapple";
static const char skXRayRingModelName[] = "CMDL_XRayRetRing";
static const char skThermalReticleAssetName[] = "CMDL_ThermalRet";
static const char skOrbitPointAssetName[] = "CMDL_OrbitPoint";

static bool IsDamageOrbit(CPlayer::EOrbitBrokenType type);
static float offshoot_func(float f1, float f2, float f3);

static const float gkEpsilon = 1.e-5f;

static inline bool close_enough_d(float a, float b, double epsilon) {
  return fabs(a - b) < epsilon;
}

static CTargetReticleRenderState skZeroRenderState(kInvalidUniqueId, 1.f, CVector3f::Zero(), 0.f,
                                                   1.f, true);

// COrbitPointMarker

void COrbitPointMarker::ResetInterpolationTimer(float time) { x20_interpTimer = time; }

void COrbitPointMarker::Draw(const CStateManager& mgr) const {
  if ((x1c_lastFreeOrbit || x20_interpTimer > 0.f) && gpTweakTargeting->GetDrawOrbitPoint()) {
    const_cast< TCachedToken< CModel >& >(x28_orbitPointModel).TryCache();
    if (x28_orbitPointModel.GetObject() != NULL) {
      const CGameCamera& curCam = mgr.GetCameraManager()->GetCurrentCamera(mgr);
      CTransform4f camXf = mgr.GetCameraManager()->GetCurrentCameraTransform(mgr);
      CGraphics::SetViewPointMatrix(camXf);
      {
        CFrustumPlanes frustum(camXf, curCam.GetFov() * 0.01745329238474369f,
                               curCam.GetAspectRatio(), 1.f, false, 100.f);
        gpRender->SetClippingPlanes(frustum);
        gpRender->SetPerspective(curCam.GetFov(),
                                 static_cast< float >(CGraphics::GetViewport().mWidth),
                                 static_cast< float >(CGraphics::GetViewport().mHeight),
                                 curCam.GetNearClipDistance(), curCam.GetFarClipDistance());
      }

      float scale;
      if (x1c_lastFreeOrbit) {
        scale = 1.f - x20_interpTimer / gpTweakTargeting->GetOrbitPointInTime();
      } else {
        scale = x20_interpTimer / gpTweakTargeting->GetOrbitPointOutTime();
      }

      const CTweakTargeting* pTweaks = gpTweakTargeting;
      CTransform4f modelXf = CTransform4f::RotateZ(CRelAngle(x8_lagAzimuth));
      modelXf.ScaleBy(scale);
      modelXf.AddTranslation(x10_lagTargetPos);
      gpRender->SetModelMatrix(modelXf);

      CModel* model = x28_orbitPointModel.GetObject();
      CColor color = pTweaks->GetOrbitPointColor().WithAlphaModulatedBy(scale);
      CModelFlags flags = CModelFlags::Additive(color).DepthCompareUpdate(false, false);
      model->Draw(flags);
    }
  }
}

void COrbitPointMarker::Update(float dt, const CStateManager& mgr) {
  x24_curTime += dt;
  const CPlayer* player = mgr.GetPlayer();
  CPlayer::EPlayerOrbitState orbitState = player->GetOrbitState();
  const CGameCamera& curCam = mgr.GetCameraManager()->GetCurrentCamera(mgr);

  bool freeOrbit = (orbitState == CPlayer::kOS_OrbitPoint || orbitState == CPlayer::kOS_OrbitCarcass);

  if (freeOrbit != x1c_lastFreeOrbit) {
    if (orbitState == CPlayer::kOS_OrbitPoint || orbitState == CPlayer::kOS_OrbitCarcass) {
      ResetInterpolationTimer(gpTweakTargeting->GetOrbitPointInTime());
      x10_lagTargetPos = !x4_camRelZPos
          ? player->GetHUDOrbitTargetPosition() + CVector3f(0.f, 0.f, x0_zOffset)
          : CVector3f(
                player->GetHUDOrbitTargetPosition().GetX(),
                player->GetHUDOrbitTargetPosition().GetY(),
                x0_zOffset + curCam.GetTranslation().GetZ());
      CEulerAngles euler = CEulerAngles::FromQuaternion(
          CQuaternion::FromMatrix(curCam.GetTransform()));
      x8_lagAzimuth = CMath::Deg2Rad(45.f) + euler.GetZ();
    } else {
      ResetInterpolationTimer(gpTweakTargeting->GetOrbitPointOutTime());
    }
    x1c_lastFreeOrbit = !x1c_lastFreeOrbit;
  }

  if (x20_interpTimer > 0.f) {
    x20_interpTimer = rstl::max_val(0.f, x20_interpTimer - dt);
  }

  if (!x4_camRelZPos) {
    CVector3f orbitPos = player->GetHUDOrbitTargetPosition();
    float targetZ = x0_zOffset + orbitPos.GetZ();
    float delta = targetZ - x10_lagTargetPos.GetZ();
    if (delta < 0.1f) {
      x10_lagTargetPos = orbitPos + CVector3f(0.f, 0.f, x0_zOffset);
    } else if (delta < 0.f) {
      x10_lagTargetPos = CVector3f(orbitPos.GetX(), orbitPos.GetY(),
                                   x10_lagTargetPos.GetZ() - 0.1f);
    } else {
      x10_lagTargetPos = CVector3f(orbitPos.GetX(), orbitPos.GetY(),
                                   x10_lagTargetPos.GetZ() + 0.1f);
    }
  } else {
    x10_lagTargetPos = CVector3f(
        player->GetHUDOrbitTargetPosition().GetX(),
        player->GetHUDOrbitTargetPosition().GetY(),
        x0_zOffset + player->GetHUDOrbitTargetPosition().GetZ());
  }

  if (x1c_lastFreeOrbit) {
    CEulerAngles euler = CEulerAngles::FromQuaternion(
        CQuaternion::FromMatrix(curCam.GetTransform()));
    float newAzimuth = CMath::Deg2Rad(45.f) + euler.GetZ();
    float aziDelta = newAzimuth - xc_azimuth;
    if (mgr.GetPlayer()->IsInFreeLook()) {
      x8_lagAzimuth += aziDelta;
    }
    xc_azimuth = newAzimuth;
  }
}

bool COrbitPointMarker::CheckLoadComplete() {
  return x28_orbitPointModel.TryCache();
}

COrbitPointMarker::COrbitPointMarker()
: x0_zOffset(gpTweakTargeting->GetOrbitPointZOffset())
, x4_camRelZPos(true)
, x8_lagAzimuth(0.f)
, xc_azimuth(0.f)
, x10_lagTargetPos(CVector3f::Zero())
, x1c_lastFreeOrbit(false)
, x20_interpTimer(0.f)
, x24_curTime(0.f)
, x28_orbitPointModel(gpSimplePool->GetObj(skOrbitPointAssetName)) {
  x28_orbitPointModel.Lock();
}

// CTargetingManager

void CTargetingManager::Touch() const {
  x0_targetReticle.Touch();
}

void CCompoundTargetReticle::Touch() const {
  if (x34_crosshairs.GetObject()) {
    x34_crosshairs.GetObject()->Touch(0);
  }
  if (x40_seeker.GetObject()) {
    x40_seeker.GetObject()->Touch(0);
  }
  if (x4c_lockConfirm.GetObject()) {
    x4c_lockConfirm.GetObject()->Touch(0);
  }
  if (x58_targetFlower.GetObject()) {
    x58_targetFlower.GetObject()->Touch(0);
  }
  if (x64_missileBracket.GetObject()) {
    x64_missileBracket.GetObject()->Touch(0);
  }
  if (x70_innerBeamIcon.GetObject()) {
    x70_innerBeamIcon.GetObject()->Touch(0);
  }
  if (x7c_lockFire.GetObject()) {
    x7c_lockFire.GetObject()->Touch(0);
  }
  if (x88_lockDagger.GetObject()) {
    x88_lockDagger.GetObject()->Touch(0);
  }
  if (x94_grapple.GetObject()) {
    x94_grapple.GetObject()->Touch(0);
  }
  if (xa0_chargeTickFirst.GetObject()) {
    xa0_chargeTickFirst.GetObject()->Touch(0);
  }
  if (xac_xrayRetRing.GetObject()) {
    xac_xrayRetRing.GetObject()->Touch(0);
  }
  if (xb8_thermalReticle.GetObject()) {
    xb8_thermalReticle.GetObject()->Touch(0);
  }
  if (xc4_chargeGauge.x0_model.GetObject()) {
    xc4_chargeGauge.x0_model.GetObject()->Touch(0);
  }
  for (AUTO(it, xe0_outerBeamIconSquares.begin()); it != xe0_outerBeamIconSquares.end(); ++it) {
    if (it->x0_model.GetObject()) {
      it->x0_model.GetObject()->Touch(0);
    }
  }
}

void CTargetingManager::Draw(const CStateManager& mgr, bool hideLockon) const {
  CGraphics::SetAmbientColor(CColor::White());
  CGraphics::DisableAllLights();
  x21c_orbitPointMarker.Draw(mgr);
  const CGameCamera& curCam = mgr.GetCameraManager()->GetCurrentCamera(mgr);
  CTransform4f camXf = mgr.GetCameraManager()->GetCurrentCameraTransform(mgr);
  CGraphics::SetViewPointMatrix(camXf);
  CFrustumPlanes frustum(camXf, curCam.GetFov() * 0.01745329238474369f, curCam.GetAspectRatio(),
                         1.f, false, 100.f);
  gpRender->SetClippingPlanes(frustum);
  gpRender->SetPerspective(curCam.GetFov(),
                           static_cast< float >(CGraphics::GetViewport().mWidth),
                           static_cast< float >(CGraphics::GetViewport().mHeight),
                           curCam.GetNearClipDistance(), curCam.GetFarClipDistance());
  x0_targetReticle.Draw(mgr, hideLockon);
}

void CTargetingManager::Update(float dt, const CStateManager& mgr) {
  x0_targetReticle.Update(dt, mgr);
  x21c_orbitPointMarker.Update(dt, mgr);
}

bool CTargetingManager::CheckLoadComplete() {
  return x0_targetReticle.CheckLoadComplete() && x21c_orbitPointMarker.CheckLoadComplete();
}

CTargetingManager::CTargetingManager(const CStateManager& mgr)
: x0_targetReticle(mgr) {}

// CTargetReticleRenderState

void CTargetReticleRenderState::InterpolateWithClamp(const CTargetReticleRenderState& a,
                                                     CTargetReticleRenderState& out,
                                                     const CTargetReticleRenderState& b,
                                                     float t) {
  float t2 = CMath::Clamp(0.f, t, 1.f);
  float omt = 1.f - t2;
  out.x4_radiusWorld = omt * a.x4_radiusWorld + t2 * b.x4_radiusWorld;
  out.x14_factor = omt * a.x14_factor + t2 * b.x14_factor;
  out.x18_minVpClampScale = omt * a.x18_minVpClampScale + t2 * b.x18_minVpClampScale;
  out.x8_positionWorld = CVector3f::Lerp(a.x8_positionWorld, b.x8_positionWorld, t2);
  if (t2 == 1.f)
    out.SetTargetId(b.GetTargetId());
  else if (t2 == 0.f)
    out.SetTargetId(a.GetTargetId());
  else
    out.SetTargetId(kInvalidUniqueId);
}

CTargetReticleRenderState::CTargetReticleRenderState(TUniqueId target, float radiusWorld,
                                                     CVector3f positionWorld, float factor,
                                                     float minVpClampScale,
                                                     bool orbitZoneIdlePosition)
: x0_target(target)
, x4_radiusWorld(radiusWorld)
, x8_positionWorld(positionWorld)
, x14_factor(factor)
, x18_minVpClampScale(minVpClampScale)
, x1c_orbitZoneIdlePosition(orbitZoneIdlePosition) {}

// CCompoundTargetReticle

float CCompoundTargetReticle::CalculateClampedScale(CVector3f pos, float scale, float clampMin,
                                                    float clampMax, const CStateManager& mgr) {
  const CGameCamera& cam = mgr.GetCameraManager()->GetCurrentCamera(mgr);
  CTransform4f camXf = mgr.GetCameraManager()->GetCurrentCameraTransform(mgr);
  CVector3f viewSpace = cam.GetTransform().TransposeMultiply(pos);
  float projX1 = cam.GetPerspectiveMatrix().MultiplyOneOverW(viewSpace).GetX();
  float pixelScale = cam.GetPerspectiveMatrix()
                         .MultiplyOneOverW(viewSpace + CVector3f(scale, 1.f, 1.f))
                         .GetX() -
                     projX1;
  pixelScale *= static_cast< float >(CGraphics::GetViewport().mWidth);
  return scale * (CMath::Clamp(clampMin, pixelScale, clampMax) / pixelScale);
}

bool CCompoundTargetReticle::IsGrappleTarget(TUniqueId id, const CStateManager& mgr) {
  return TCastToConstPtr< CScriptGrapplePoint >(
      mgr.GetObjectListById(kOL_All).GetObjectById(id)) != nullptr;
}

CVector3f CCompoundTargetReticle::CalculateOrbitZoneReticlePosition(const CStateManager& mgr,
                                                                    bool lag) const {
  const CGameCamera& cam = mgr.GetCameraManager()->GetCurrentCamera(mgr);
  float halfExtY = CCast::LtoF(gpTweakPlayer->GetOrbitScreenBoxHalfExtentY(0));
  float dist = 224.f / halfExtY;
  dist /= CMath::SlowTangentR(cam.GetFov() * 0.5f * (1.f / 360.f) * (2.f * M_PIF));

  CTransform4f camXf = mgr.GetCameraManager()->GetCurrentCameraTransform(mgr);
  CVector3f fwd = camXf.GetForward();

  if (lag) {
    fwd = x10_laggingOrientation.Transform(fwd);
  }

  return camXf.GetTranslation() + dist * fwd;
}

CVector3f CCompoundTargetReticle::CalculatePositionWorld(const CActor& actor,
                                                         const CStateManager& mgr) const {
  return x20_prevState == kRS_Scan ? actor.GetOrbitPosition(mgr) : actor.GetAimPosition(mgr, 0.f);
}

float CCompoundTargetReticle::CalculateRadiusWorld(const CActor& actor,
                                                   const CStateManager& mgr) const {
  rstl::optional_object< CAABox > touchBounds = actor.GetTouchBounds();
  const CAABox& aabb =
      touchBounds.valid()
          ? *touchBounds
          : CAABox(actor.GetAimPosition(mgr, 0.f), actor.GetAimPosition(mgr, 0.f));

  float minX = aabb.GetMinPoint().GetX();
  float minY = aabb.GetMinPoint().GetY();
  float minZ = aabb.GetMinPoint().GetZ();
  float maxX = aabb.GetMaxPoint().GetX();
  float maxY = aabb.GetMaxPoint().GetY();
  float maxZ = aabb.GetMaxPoint().GetZ();

  float radius;
  switch (gpTweakTargeting->GetTargetRadiusMode()) {
  case 0:
    radius = rstl::min_val(maxX - minX,
                           rstl::min_val(maxZ - minZ, maxY - minY)) *
             0.5f;
    break;
  case 1:
    radius = rstl::max_val(maxX - minX,
                           rstl::max_val(maxZ - minZ, maxY - minY)) *
             0.5f;
    break;
  case 2:
  default: {
    float w = maxX - minX;
    float d = maxZ - minZ;
    float h = maxY - minY;
    radius = (w + d + h) * (1.f / 6.f);
    break;
  }
  }

  return radius > 0.f ? radius : 1.f;
}

void CCompoundTargetReticle::UpdateTargetParameters(CTargetReticleRenderState& state,
                                                    const CStateManager& mgr) {
  const CActor* act =
      TCastToConstPtr< CActor >(mgr.GetObjectListById(kOL_All).GetObjectById(state.GetTargetId()));
  if (act != nullptr) {
    state.SetRadiusWorld(CalculateRadiusWorld(*act, mgr));
    CVector3f pos = CalculatePositionWorld(*act, mgr);
    state.SetTargetPositionWorld(pos);
  } else if (state.GetIsOrbitZoneIdlePosition()) {
    state.SetRadiusWorld(1.f);
    state.SetTargetPositionWorld(
        (x20_prevState == kRS_XRay || x20_prevState == kRS_Thermal)
            ? x100_laggingTargetPos
            : xf4_targetPos);
  }
}

void CCompoundTargetReticle::DrawOrbitZoneGroup(const CMatrix3f& rot,
                                                const CStateManager& mgr) const {
  if (static_cast< int >(x28_noDrawTicks) <= 0 && x1e8_crosshairsScale > 0.f) {
    const_cast< TCachedToken< CModel >& >(x34_crosshairs).TryCache();
    CModel* model = x34_crosshairs.GetObject();
    if (model == nullptr)
      return;

    CTweakTargeting* tweak = gpTweakTargeting;

    gpRender->SetModelMatrix(
        CTransform4f(rot, xf4_targetPos) * CTransform4f::Scale(x1e8_crosshairsScale));

    model->Draw(CModelFlags::Additive(
        tweak->GetCrosshairsColor().WithAlphaModulatedBy(x1e8_crosshairsScale))
        .DepthCompareUpdate(false, false));
  }
}

void CCompoundTargetReticle::DrawNextLockOnGroup(const CMatrix3f& rot,
                                                 const CStateManager& mgr) const {
  if (static_cast< int >(x28_noDrawTicks) > 0)
    return;

  CVector3f position = x174_nextGroupInterp.GetTargetPositionWorld();
  float radius = x174_nextGroupInterp.GetRadiusWorld();
  float factor = x174_nextGroupInterp.GetFactor();
  float visorFactor = mgr.GetPlayerState()->GetVisorTransitionFactor();

  bool scanRet = false;
  bool xrayRet = false;
  bool thermalRet = false;

  switch (x20_prevState) {
  case kRS_Combat:
    break;
  case kRS_Scan:
    scanRet = true;
    break;
  case kRS_XRay:
    xrayRet = true;
    break;
  case kRS_Thermal:
    thermalRet = true;
    break;
  default:
    break;
  }

  float minVpClampScale = x174_nextGroupInterp.GetMinViewportClampScale();

  if (!xrayRet && factor > 0.f) {
    const_cast< TCachedToken< CModel >& >(x40_seeker).TryCache();
    CModel* model = x40_seeker.GetObject();
    if (model != nullptr) {
      float scale = CalculateClampedScale(position, radius,
                                          minVpClampScale * gpTweakTargeting->GetSeekerClampMin(),
                                          gpTweakTargeting->GetSeekerClampMax(), mgr);
      CTweakTargeting* tweak = gpTweakTargeting;
      scale *= tweak->GetSeekerScale();

      CMatrix3f seekerMatrix(rot * CMatrix3f::RotateY(CRelAngle(x1ec_seekerAngle)) * CMatrix3f::Scale(scale));
      CVector3f sPos = x174_nextGroupInterp.GetTargetPositionWorld();
      gpRender->SetModelMatrix(CTransform4f(seekerMatrix, sPos));

      model->Draw(CModelFlags::Additive(
          tweak->GetSeekerColor().WithAlphaModulatedBy(factor))
          .DepthCompareUpdate(false, false));
    }
  }

  if (xrayRet) {
    const_cast< TCachedToken< CModel >& >(xac_xrayRetRing).TryCache();
    CModel* model = xac_xrayRetRing.GetObject();
    if (model != nullptr) {
      float scale = CalculateClampedScale(position, radius,
                                          minVpClampScale * gpTweakTargeting->GetReticuleClampMin(),
                                          gpTweakTargeting->GetReticuleClampMax(), mgr);
      CTweakTargeting* tweak = gpTweakTargeting;
      scale *= tweak->GetReticuleScale();

      CMatrix3f xrayMatrix(rot * CMatrix3f::Scale(scale) * CMatrix3f::RotateY(CRelAngle(x1f0_xrayRetAngle)));
      CVector3f xPos = x174_nextGroupInterp.GetTargetPositionWorld();
      gpRender->SetModelMatrix(CTransform4f(xrayMatrix, xPos));

      model->Draw(CModelFlags::Additive(
          tweak->GetXRayRetRingColor().WithAlphaModulatedBy(visorFactor))
          .DepthCompareUpdate(false, false));
    }
  }

  if (thermalRet) {
    const_cast< TCachedToken< CModel >& >(xb8_thermalReticle).TryCache();
    CModel* model = xb8_thermalReticle.GetObject();
    if (model != nullptr) {
      float scale = CalculateClampedScale(position, radius,
                                          minVpClampScale * gpTweakTargeting->GetReticuleClampMin(),
                                          gpTweakTargeting->GetReticuleClampMax(), mgr);
      CTweakTargeting* tweak = gpTweakTargeting;
      scale *= tweak->GetReticuleScale();

      CMatrix3f thermalMatrix(rot * CMatrix3f::Scale(scale));
      CVector3f tPos = x174_nextGroupInterp.GetTargetPositionWorld();
      gpRender->SetModelMatrix(CTransform4f(thermalMatrix, tPos));

      model->Draw(CModelFlags::Additive(
          tweak->GetThermalReticuleColor().WithAlphaModulatedBy(visorFactor))
          .DepthCompareUpdate(false, false));
    }
  }

  if (scanRet && visorFactor > 0.f) {
    float nextFactor = x174_nextGroupInterp.GetFactor();
    float scale = CalculateClampedScale(position, radius,
                                        minVpClampScale * gpTweakTargeting->GetScanTargetClampMin(),
                                        gpTweakTargeting->GetScanTargetClampMax(), mgr);
    float combinedFactor = visorFactor * nextFactor;
    scale *= 1.f / combinedFactor;

    CMatrix3f scanMatrix(rot * CMatrix3f::Scale(scale));
    CTweakGuiColors* guiColors = gpTweakGuiColors;
    CVector3f scPos = x174_nextGroupInterp.GetTargetPositionWorld();
    gpRender->SetModelMatrix(CTransform4f(scanMatrix, scPos));

    CGraphics::SetDepthWriteMode(true, kE_Less, false);

    float alpha = 0.5f * combinedFactor;

    for (int i = 0; i < 2; ++i) {
      float lineWidth = i == 0 ? 1.f : 2.5f;
      CGraphics::SetLineWidth(lineWidth, kTO_Zero);

      CColor color = guiColors->GetScanReticuleColor().WithAlphaModulatedBy(alpha);

      gpRender->BeginLines(8);
      gpRender->PrimColor(color);
      gpRender->PrimVertex(CVector3f(-0.5f, 0.f, 0.f));
      gpRender->PrimVertex(CVector3f(-20.5f, 0.f, 0.f));
      gpRender->PrimVertex(CVector3f(0.5f, 0.f, 0.f));
      gpRender->PrimVertex(CVector3f(20.5f, 0.f, 0.f));
      gpRender->PrimVertex(CVector3f(0.f, 0.f, -0.5f));
      gpRender->PrimVertex(CVector3f(0.f, 0.f, -20.5f));
      gpRender->PrimVertex(CVector3f(0.f, 0.f, 0.5f));
      gpRender->PrimVertex(CVector3f(0.f, 0.f, 20.5f));
      gpRender->EndPrimitive();

      for (int j = 0; j < 4; ++j) {
        float xSign = j < 2 ? -1.f : 1.f;
        float zSign = (j & 1) != 0 ? -1.f : 1.f;

        gpRender->BeginLineStrip(4);
        gpRender->PrimVertex(CVector3f(0.5f * xSign, 0.f, 0.1f * zSign));
        gpRender->PrimVertex(CVector3f(0.5f * xSign, 0.f, 0.35f * zSign));
        gpRender->PrimVertex(CVector3f(0.35f * xSign, 0.f, 0.5f * zSign));
        gpRender->PrimVertex(CVector3f(0.1f * xSign, 0.f, 0.5f * zSign));
        gpRender->EndPrimitive();
      }
    }

    CGraphics::SetLineWidth(1.f, kTO_Zero);
  }
}

void CCompoundTargetReticle::DrawCurrLockOnGroup(const CMatrix3f& rot,
                                                 const CStateManager& mgr) const {
  if (static_cast< int >(x28_noDrawTicks) > 0)
    return;

  CVector3f position = x10c_currGroupInterp.GetTargetPositionWorld();
  float radius = x10c_currGroupInterp.GetRadiusWorld();

  if (x1e0_grapplePoint0T + x1e4_grapplePoint1T > 0.f)
    return;

  float factor = x10c_currGroupInterp.GetFactor();
  float lockBreakAlpha = factor;
  if (0.f == factor)
    return;

  float visorFactor = mgr.GetPlayerState()->GetVisorTransitionFactor();
  float minVpClampScale = x10c_currGroupInterp.GetMinViewportClampScale();

  bool lockConfirm = false;
  bool lockReticule = false;

  switch (x20_prevState) {
  case kRS_Combat:
    lockConfirm = true;
    lockReticule = true;
    break;
  case kRS_Scan:
    lockConfirm = true;
    break;
  case kRS_XRay:
  case kRS_Thermal:
  case kRS_Four:
  case kRS_Unspecified:
    break;
  }

  CMatrix3f lockBreakXf(CMatrix3f::Identity());
  CColor lockBreakColor(0);

  if (IsDamageOrbit(mgr.GetPlayer()->GetOrbitBrokenType()) &&
      0.f == x14c_currGroupB.GetFactor()) {
    CVector3f right(CVector3f::Right());
    CVector3f forward(CVector3f::Forward());
    CVector3f up(CVector3f::Up());

    for (int i = 0; i < 4; ++i) {
      int r1 = rand();
      int idx = rand() % 9;
      int col = idx % 3;
      int row = idx / 3;
      float rv = static_cast< float >(r1) / static_cast< float >(RAND_MAX) - 0.5f;
      (&right)[col][row] += rv;
    }

    lockBreakXf = CMatrix3f(right, forward, up);

    if (factor > 0.8f) {
      lockBreakColor = CColor::White().WithAlphaOf(
          0.3f * (factor - 0.8f) / 0.2f);
    }

    if (factor > 0.75f) {
      lockBreakAlpha = 1.f;
    } else {
      lockBreakAlpha = rstl::max_val((factor - 0.55f) / 0.2f, 0.f);
    }
  }

  if (lockConfirm) {
    const_cast< TCachedToken< CModel >& >(x4c_lockConfirm).TryCache();
    CModel* model = x4c_lockConfirm.GetObject();
    if (model != nullptr) {
      float scale = CalculateClampedScale(position, radius,
                                          minVpClampScale * gpTweakTargeting->GetLockConfirmClampMin(),
                                          gpTweakTargeting->GetLockConfirmClampMax(), mgr);
      CTweakTargeting* tweak = gpTweakTargeting;
      scale *= tweak->GetLockConfirmScale();
      scale /= factor;

      CMatrix3f combined = rot * CMatrix3f::RotateY(CRelAngle(x1ec_seekerAngle)) * CMatrix3f::Scale(scale);

      CVector3f pos = x10c_currGroupInterp.GetTargetPositionWorld();
      gpRender->SetModelMatrix(CTransform4f(lockBreakXf * combined, pos));

      CColor color = tweak->GetLockConfirmColor().WithAlphaModulatedBy(lockBreakAlpha);
      CColor addedColor = CColor::Add(lockBreakColor, color);
      model->Draw(CModelFlags::Additive(addedColor).DepthCompareUpdate(false, false));
    }
  }

  if (lockReticule) {
    // Target flower
    const_cast< TCachedToken< CModel >& >(x58_targetFlower).TryCache();
    CModel* model = x58_targetFlower.GetObject();
    if (model != nullptr) {
      float scale = CalculateClampedScale(position, radius,
                                          minVpClampScale * gpTweakTargeting->GetTargetFlowerClampMin(),
                                          gpTweakTargeting->GetTargetFlowerClampMax(), mgr);
      CTweakTargeting* tweak = gpTweakTargeting;
      scale *= tweak->GetTargetFlowerScale();
      scale /= lockBreakAlpha;

      CMatrix3f combined = rot * CMatrix3f::RotateY(CRelAngle(x1f0_xrayRetAngle)) * CMatrix3f::Scale(scale);

      CVector3f pos = x10c_currGroupInterp.GetTargetPositionWorld();
      gpRender->SetModelMatrix(CTransform4f(lockBreakXf * combined, pos));

      CColor color = tweak->GetTargetFlowerColor().WithAlphaModulatedBy(
          lockBreakAlpha * visorFactor);
      CColor addedColor = CColor::Add(lockBreakColor, color);
      model->Draw(CModelFlags::Additive(addedColor).DepthCompareUpdate(true, false));
    }

    // Missile bracket
    if (x1f8_missileBracketTimer != 0.f) {
      const_cast< TCachedToken< CModel >& >(x64_missileBracket).TryCache();
      CModel* bracketModel = x64_missileBracket.GetObject();
      if (bracketModel != nullptr) {
        float bracketScale = CalculateClampedScale(position, radius,
                                            minVpClampScale * gpTweakTargeting->GetMissileBracketClampMin(),
                                            gpTweakTargeting->GetMissileBracketClampMax(), mgr);
        CTweakTargeting* tweak = gpTweakTargeting;
        float halfDur = 0.5f * tweak->GetMissileBracketScaleDuration();
        float t = CMath::AbsF((x1fc_missileBracketScaleTimer - halfDur) / halfDur);
        float tscale = (1.f - t) * tweak->GetMissileBracketScaleEnd() +
                       t * tweak->GetMissileBracketScaleStart();
        float s = CMath::AbsF(x1f8_missileBracketTimer) / tweak->GetMissileBracketDuration() *
                  bracketScale * tscale / factor;

        CMatrix3f scaleMtx = CMatrix3f::Scale(s);

        for (int i = 0; i < 4; ++i) {
          float xSign = i < 2 ? 1.f : -1.f;
          float zSign = (i & 1) != 0 ? 1.f : -1.f;
          CMatrix3f flipMtx(xSign, 0.f, 0.f,
                            0.f, 1.f, 0.f,
                            0.f, 0.f, zSign);
          CMatrix3f combined = lockBreakXf * rot * flipMtx * scaleMtx;

          CVector3f pos = x10c_currGroupInterp.GetTargetPositionWorld();
          gpRender->SetModelMatrix(CTransform4f(combined, pos));

          CColor color = tweak->GetMissileBracketColor().WithAlphaModulatedBy(
              lockBreakAlpha * visorFactor);
          CColor addedColor = CColor::Add(lockBreakColor, color);
          bracketModel->Draw(CModelFlags::Additive(addedColor).DepthCompareUpdate(false, false));
        }
      }
    }

    // Outer beam icon squares
    {
      float outerScale = CalculateClampedScale(position, radius,
                                               minVpClampScale * gpTweakTargeting->GetChargeGaugeClampMin(),
                                               gpTweakTargeting->GetChargeGaugeClampMax(), mgr);
      outerScale = gpTweakTargeting->GetOuterBeamSquaresScale() * (1.f / factor * outerScale);

      CMatrix3f outerBeamXf = rot * CMatrix3f::Scale(outerScale);
      CTweakTargeting* tweak = gpTweakTargeting;

      for (int i = 0; i < 9; ++i) {
        const SOuterItemInfo& info = xe0_outerBeamIconSquares[i];
        const_cast< TCachedToken< CModel >& >(info.x0_model).TryCache();
        CModel* outerModel = info.x0_model.GetObject();
        if (outerModel != nullptr) {
          CMatrix3f combined = outerBeamXf * CMatrix3f::RotateY(CRelAngle(info.x10_rotAng));

          CVector3f pos = x10c_currGroupInterp.GetTargetPositionWorld();
          gpRender->SetModelMatrix(CTransform4f(lockBreakXf * combined, pos));

          CColor color = tweak->GetOuterBeamSquareColor().WithAlphaModulatedBy(
              lockBreakAlpha * visorFactor);
          CColor addedColor = CColor::Add(lockBreakColor, color);
          outerModel->Draw(CModelFlags::Additive(addedColor).DepthCompareUpdate(false, false));
        }
      }
    }

    // Charge gauge
    {
      const_cast< SOuterItemInfo& >(xc4_chargeGauge).x0_model.TryCache();
      CModel* gaugeModel = xc4_chargeGauge.x0_model.GetObject();
      if (gaugeModel != nullptr) {
        float gaugeScale = CalculateClampedScale(position, radius,
                                                 minVpClampScale * gpTweakTargeting->GetChargeGaugeClampMin(),
                                                 gpTweakTargeting->GetChargeGaugeClampMax(), mgr);
        gaugeScale = gaugeScale * gpTweakTargeting->GetChargeGaugeScale() / factor;

        CMatrix3f gaugeMtx = rot * CMatrix3f::Scale(gaugeScale);
        CMatrix3f chargeGaugeXf = gaugeMtx * CMatrix3f::RotateY(CRelAngle(xc4_chargeGauge.x10_rotAng));

        float pulsePeriod = gpTweakTargeting->GetChargeGaugePulsePeriod();
        float chargeFadeFactor = x214_fullChargeFadeTimer / gpTweakTargeting->GetFullChargeFadeDuration();
        float secondsMod = CGraphics::GetSecondsMod900();
        float pulseT = CMath::AbsF(static_cast< float >(fmod(
            static_cast< double >(secondsMod), static_cast< double >(pulsePeriod))));
        float halfPeriod = 0.5f * pulsePeriod;
        float pulseRatio;
        if (pulseT < halfPeriod) {
          pulseRatio = pulseT / halfPeriod;
        } else {
          pulseRatio = (pulsePeriod - pulseT) / halfPeriod;
        }

        CColor pulseColor = CColor::Lerp(gpTweakTargeting->GetChargeGaugePulseColorHigh(),
                                          gpTweakTargeting->GetChargeGaugePulseColorLow(),
                                          pulseRatio);
        CColor gaugeColor = CColor::Lerp(gpTweakTargeting->GetChargeGaugeNonFullColor(),
                                          pulseColor, chargeFadeFactor);

        CVector3f pos = x10c_currGroupInterp.GetTargetPositionWorld();
        CTransform4f modelXf = CTransform4f(lockBreakXf * chargeGaugeXf, pos);
        gpRender->SetModelMatrix(modelXf);

        CColor color = gaugeColor.WithAlphaModulatedBy(lockBreakAlpha * visorFactor);
        CColor addedColor = CColor::Add(lockBreakColor, color);
        gaugeModel->Draw(CModelFlags::Additive(addedColor).DepthCompareUpdate(false, false));

        // Charge ticks
        const_cast< TCachedToken< CModel >& >(xa0_chargeTickFirst).TryCache();
        CModel* tickModel = xa0_chargeTickFirst.GetObject();
        if (tickModel != nullptr) {
          const CPlayerGun* gun = mgr.GetPlayer()->GetPlayerGun();
          int numTicks = static_cast< int >(
              static_cast< float >(gpTweakTargeting->GetChargeTickCount()) *
              gun->GetChargeBeamFactor());
          for (int i = 0; i < numTicks; ++i) {
            CColor tickColor = gaugeColor.WithAlphaModulatedBy(lockBreakAlpha * visorFactor);
            CColor tickAdded = CColor::Add(lockBreakColor, tickColor);
            tickModel->Draw(CModelFlags::Additive(tickAdded).DepthCompareUpdate(false, false));
            modelXf.RotateLocalY(CRelAngle(gpTweakTargeting->GetChargeTickAnglePitch()));
            gpRender->SetModelMatrix(modelXf);
          }
        }
      }
    }

    // Inner beam icon
    if (x208_lockonTimer > 0.f) {
      const_cast< TCachedToken< CModel >& >(x70_innerBeamIcon).TryCache();
      CModel* beamModel = x70_innerBeamIcon.GetObject();
      if (beamModel != nullptr) {
        const CColor* iconColor;
        if (x200_beam == CPlayerState::kBI_Power) {
          iconColor = &gpTweakTargeting->GetInnerBeamColorPower();
        } else if (x200_beam == CPlayerState::kBI_Ice) {
          iconColor = &gpTweakTargeting->GetInnerBeamColorIce();
        } else if (x200_beam == CPlayerState::kBI_Wave) {
          iconColor = &gpTweakTargeting->GetInnerBeamColorWave();
        } else {
          iconColor = &gpTweakTargeting->GetInnerBeamColorPlasma();
        }

        float beamScale = CalculateClampedScale(position, radius,
                                                minVpClampScale * gpTweakTargeting->GetInnerBeamClampMin(),
                                                gpTweakTargeting->GetInnerBeamClampMax(), mgr);
        beamScale = beamScale * gpTweakTargeting->GetInnerBeamScale() *
                    (x208_lockonTimer / gpTweakTargeting->GetLockonDuration()) / factor;

        CMatrix3f beamMtx = rot * CMatrix3f::Scale(beamScale);

        CVector3f pos = x10c_currGroupInterp.GetTargetPositionWorld();
        gpRender->SetModelMatrix(CTransform4f(lockBreakXf * beamMtx, pos));

        CColor color = iconColor->WithAlphaModulatedBy(lockBreakAlpha * visorFactor);
        CColor addedColor = CColor::Add(lockBreakColor, color);
        beamModel->Draw(CModelFlags::Additive(addedColor).DepthCompareUpdate(false, false));
      }
    }

    // Lock fire
    if (x210_lockFireTimer > 0.f) {
      const_cast< TCachedToken< CModel >& >(x7c_lockFire).TryCache();
      CTweakTargeting* tweak = gpTweakTargeting;
      CModel* fireModel = x7c_lockFire.GetObject();
      if (fireModel != nullptr) {
        float lockFireFactor = x210_lockFireTimer / tweak->GetLockFireDuration();

        float fireScale = CalculateClampedScale(position, radius,
                                                minVpClampScale * gpTweakTargeting->GetLockFireClampMin(),
                                                gpTweakTargeting->GetLockFireClampMax(), mgr);
        fireScale = fireScale * gpTweakTargeting->GetLockFireScale() / factor;

        CMatrix3f combined = rot * CMatrix3f::Scale(fireScale) * CMatrix3f::RotateY(CRelAngle(x1f0_xrayRetAngle));

        CVector3f pos = x10c_currGroupInterp.GetTargetPositionWorld();
        gpRender->SetModelMatrix(CTransform4f(lockBreakXf * combined, pos));

        CColor color = tweak->GetLockFireColor().WithAlphaModulatedBy(
            visorFactor * lockBreakAlpha * lockFireFactor);
        CColor addedColor = CColor::Add(lockBreakColor, color);
        fireModel->Draw(CModelFlags::Additive(addedColor).DepthCompareUpdate(false, false));
      }
    }

    // Lock dagger
    if (x208_lockonTimer > 0.f) {
      const_cast< TCachedToken< CModel >& >(x88_lockDagger).TryCache();
      CModel* daggerModel = x88_lockDagger.GetObject();
      if (daggerModel != nullptr) {
        float daggerScale = CalculateClampedScale(position, radius,
                                                  minVpClampScale * gpTweakTargeting->GetLockDaggerClampMin(),
                                                  gpTweakTargeting->GetLockDaggerClampMax(), mgr);
        CTweakTargeting* tweak = gpTweakTargeting;
        float halfDur = 0.5f * tweak->GetLockFireDuration();
        float t = CMath::AbsF((x210_lockFireTimer - halfDur) / halfDur);
        float tscale = (1.f - t) * tweak->GetLockDaggerScaleEnd() +
                       t * tweak->GetLockDaggerScaleStart();
        daggerScale = daggerScale * tscale * (x208_lockonTimer / tweak->GetLockonDuration()) / factor;

        CMatrix3f daggerMtx = rot * CMatrix3f::Scale(daggerScale);

        for (int i = 0; i < 3; ++i) {
          float ang;
          if (i == 0) {
            ang = gpTweakTargeting->GetLockDaggerAngle0();
          } else if (i == 1) {
            ang = gpTweakTargeting->GetLockDaggerAngle1();
          } else {
            ang = gpTweakTargeting->GetLockDaggerAngle2();
          }

          CMatrix3f combined = daggerMtx * CMatrix3f::RotateY(CRelAngle(ang));

          CVector3f pos = x10c_currGroupInterp.GetTargetPositionWorld();
          gpRender->SetModelMatrix(CTransform4f(lockBreakXf * combined, pos));

          CColor color = tweak->GetLockDaggerColor().WithAlphaModulatedBy(
              lockBreakAlpha * visorFactor);
          CColor addedColor = CColor::Add(lockBreakColor, color);
          daggerModel->Draw(CModelFlags::Additive(addedColor).DepthCompareUpdate(false, false));
        }
      }
    }
  }
}

void CCompoundTargetReticle::DrawGrapplePoint(const CScriptGrapplePoint& point, float t,
                                              const CStateManager& mgr, const CMatrix3f& rot,
                                              bool zEqual) {
  CVector3f orbitPos = point.GetOrbitPosition(mgr);

  const CColor& selectColor = point.GetGrappleParameters().GetLockSwingTurn()
                                   ? gpTweakTargeting->GetLockedGrapplePointSelectColor()
                                   : gpTweakTargeting->GetGrapplePointSelectColor();
  CColor color = CColor::Lerp(gpTweakTargeting->GetGrapplePointColor(), selectColor, t);

  t = (1.f - t) * gpTweakTargeting->GetGrappleScale() +
      t * gpTweakTargeting->GetGrappleSelectScale();
  float scale = CalculateClampedScale(orbitPos, 1.f,
                                      gpTweakTargeting->GetGrappleClampMin(),
                                      gpTweakTargeting->GetGrappleClampMax(), mgr);
  scale *= t;

  CMatrix3f scaledRot = rot * CMatrix3f::Scale(scale);
  gpRender->SetModelMatrix(CTransform4f(scaledRot, orbitPos));

  x94_grapple.GetObject()->Draw(
      CModelFlags::Additive(color).DepthCompareUpdate(zEqual, false));
}

void CCompoundTargetReticle::DrawGrappleGroup(const CMatrix3f& rot,
                                              const CStateManager& mgr,
                                              bool hideLockon) const {
  if (static_cast< int >(x28_noDrawTicks) > 0)
    return;

  if (!mgr.GetPlayerState()->HasPowerUp(CPlayerState::kIT_GrappleBeam))
    return;

  const_cast< TCachedToken< CModel >& >(x94_grapple).TryCache();
  if (x94_grapple.GetObject() == nullptr)
    return;

  if (x20_prevState == kRS_Scan)
    return;

  const CObjectList& list = mgr.GetObjectListById(kOL_All);

  if (hideLockon) {
    for (int i = list.GetFirstObjectIndex(); i != -1; i = list.GetNextObjectIndex(i)) {
      const CScriptGrapplePoint* gp = TCastToConstPtr< CScriptGrapplePoint >(list[i]);
      if (gp == nullptr)
        continue;
      if (!gp->GetActive())
        continue;
      TAreaId areaId = gp->GetCurrentAreaId();
      if (areaId != kInvalidAreaId) {
        const CGameArea& area = mgr.GetWorld()->GetAreaAlways(areaId);
        if (area.GetOcclusionState() != CGameArea::kOS_Visible)
          continue;
      }
      float t = 0.f;
      TUniqueId uid = gp->GetUniqueId();
      if (uid == x1dc_grapplePoint0)
        t = x1e0_grapplePoint0T;
      else if (uid == x1de_grapplePoint1)
        t = x1e4_grapplePoint1T;
      if (close_enough_d(t, 0.f, gkEpsilon)) {
        const_cast< CCompoundTargetReticle* >(this)->DrawGrapplePoint(*gp, t, mgr, rot, true);
      }
    }
  } else {
    const CScriptGrapplePoint* gp0 =
        TCastToConstPtr< CScriptGrapplePoint >(mgr.GetObjectById(x1dc_grapplePoint0));
    const CScriptGrapplePoint* gp1 =
        TCastToConstPtr< CScriptGrapplePoint >(mgr.GetObjectById(x1de_grapplePoint1));
    for (int i = 0; i < 2; ++i) {
      const CScriptGrapplePoint* gp = (i == 0) ? gp0 : gp1;
      float t = (i == 0) ? x1e0_grapplePoint0T : x1e4_grapplePoint1T;
      if (gp != nullptr) {
        const_cast< CCompoundTargetReticle* >(this)->DrawGrapplePoint(*gp, t, mgr, rot, false);
      }
    }
  }
}

void CCompoundTargetReticle::Draw(const CStateManager& mgr, bool hideLockon) const {
  if (mgr.GetPlayer()->GetMorphballTransitionState() == CPlayer::kMS_Unmorphed &&
      !mgr.GetCameraManager()->IsInCinematicCamera()) {
    CTransform4f camXf = mgr.GetCameraManager()->GetCurrentCameraTransform(mgr);
    CGraphics::SetViewPointMatrix(camXf);
    CMatrix3f rot = camXf.BuildMatrix3f();

    CGraphics::SetCullMode(kCM_None);

    if (!hideLockon) {
      DrawCurrLockOnGroup(rot, mgr);
      DrawNextLockOnGroup(rot, mgr);
      DrawOrbitZoneGroup(rot, mgr);
    }

    DrawGrappleGroup(rot, mgr, hideLockon);

    CGraphics::SetCullMode(kCM_Front);
  }

  if (static_cast< int >(x28_noDrawTicks) > 0) {
    const_cast< CCompoundTargetReticle* >(this)->x28_noDrawTicks = x28_noDrawTicks - 1;
  }
}

void CCompoundTargetReticle::UpdateOrbitZoneGroup(float dt, const CStateManager& mgr) {
  if (xf0_targetId == kInvalidUniqueId && xf2_nextTargetId != kInvalidUniqueId) {
    x20c_unk = rstl::min_val(2.f * dt + x20c_unk, 1.f);
  } else {
    x20c_unk = rstl::max_val(x20c_unk - 2.f * dt, 0.f);
  }

  if (mgr.GetPlayer()->IsCrosshairsOpen() &&
      mgr.GetPlayerState()->GetCurrentVisor() != CPlayerState::kPV_Scan) {
    x1e8_crosshairsScale =
        rstl::min_val(x1e8_crosshairsScale + dt / gpTweakTargeting->GetCrosshairsScaleDuration(), 1.f);
  } else {
    x1e8_crosshairsScale =
        rstl::max_val(x1e8_crosshairsScale - dt / gpTweakTargeting->GetCrosshairsScaleDuration(), 0.f);
  }
}

void CCompoundTargetReticle::UpdateNextLockOnGroup(float dt, const CStateManager& mgr) {
  const CPlayer* player = mgr.GetPlayer();
  TUniqueId nextTargetId = player->GetOrbitNextTargetId();
  if (mgr.GetPlayerState()->GetCurrentVisor() == CPlayerState::kPV_Scan &&
      player->GetOrbitTargetId() != kInvalidUniqueId) {
    nextTargetId = player->GetOrbitTargetId();
  }

  if (nextTargetId != xf2_nextTargetId) {
    if (kInvalidUniqueId == nextTargetId) {
      x194_nextGroupA = x174_nextGroupInterp;
      x194_nextGroupA.SetIsOrbitZoneIdlePosition(false);
      bool lag = (x20_prevState == kRS_XRay || x20_prevState == kRS_Thermal);
      x1b4_nextGroupB = CTargetReticleRenderState(
          kInvalidUniqueId, 1.f,
          lag ? x100_laggingTargetPos : xf4_targetPos,
          0.f, 1.f, true);
      x1d4_nextGroupDur = gpTweakTargeting->GetNextLockOnExitDuration();
      x1d8_nextGroupTimer = x1d4_nextGroupDur;
      xf2_nextTargetId = nextTargetId;
    } else {
      x194_nextGroupA = x174_nextGroupInterp;
      x194_nextGroupA.SetIsOrbitZoneIdlePosition(false);
      float scale = IsGrappleTarget(nextTargetId, mgr)
                        ? gpTweakTargeting->GetGrappleMinClampScale()
                        : 1.f;
      x1b4_nextGroupB = CTargetReticleRenderState(
          nextTargetId, 1.f, CVector3f::Zero(), 1.f, scale, true);
      x1d4_nextGroupDur = (kInvalidUniqueId == xf2_nextTargetId)
                              ? gpTweakTargeting->GetNextLockOnEnterDuration()
                              : gpTweakTargeting->GetNextLockOnSwitchDuration();
      x1d8_nextGroupTimer = x1d4_nextGroupDur;
      xf2_nextTargetId = nextTargetId;
    }
  }

  if (x1d8_nextGroupTimer > 0.f) {
    UpdateTargetParameters(x194_nextGroupA, mgr);
    UpdateTargetParameters(x1b4_nextGroupB, mgr);
    x1d8_nextGroupTimer = rstl::max_val(0.f, x1d8_nextGroupTimer - dt);
    CTargetReticleRenderState::InterpolateWithClamp(
        x194_nextGroupA, x174_nextGroupInterp, x1b4_nextGroupB,
        1.f - x1d8_nextGroupTimer / x1d4_nextGroupDur);
  } else {
    UpdateTargetParameters(x174_nextGroupInterp, mgr);
  }
}

void CCompoundTargetReticle::UpdateCurrLockOnGroup(float dt, const CStateManager& mgr) {
  const CPlayer* player = mgr.GetPlayer();
  const TUniqueId targetId = player->GetOrbitTargetId();

  if (targetId != xf0_targetId) {
    if (xf0_targetId != targetId && targetId != kInvalidUniqueId) {
      if (TCastToConstPtr< CScriptGrapplePoint >(mgr.GetObjectById(targetId))) {
        CSfxManager::SfxStart(SFXui_x_graplock_00);
      } else {
        CSfxManager::SfxStart(SFXui_x_lockon_00);
      }
    }

    if (kInvalidUniqueId == targetId) {
      CPlayer::EOrbitBrokenType orbitBrokenType = player->GetOrbitBrokenType();
      x12c_currGroupA = x10c_currGroupInterp;
      x12c_currGroupA.SetIsOrbitZoneIdlePosition(false);
      x14c_currGroupB.SetFactor(0.f);
      x16c_currGroupDur =
          IsDamageOrbit(orbitBrokenType)
              ? 0.65f
              : gpTweakTargeting->GetCurrLockOnEnterDuration();
    } else {
      x12c_currGroupA = x10c_currGroupInterp;
      x12c_currGroupA.SetIsOrbitZoneIdlePosition(false);
      if (xf0_targetId == kInvalidUniqueId) {
        x12c_currGroupA.SetTargetId(targetId);
      }
      float scale = IsGrappleTarget(targetId, mgr)
                        ? gpTweakTargeting->GetGrappleMinClampScale()
                        : 1.f;
      x14c_currGroupB = CTargetReticleRenderState(
          targetId, 1.f, CVector3f::Zero(), 1.f, scale, false);
      x16c_currGroupDur = (kInvalidUniqueId == xf0_targetId)
                              ? gpTweakTargeting->GetCurrLockOnExitDuration()
                              : gpTweakTargeting->GetCurrLockOnSwitchDuration();
    }

    x170_currGroupTimer = x16c_currGroupDur;
    xf0_targetId = targetId;
  }

  if (x170_currGroupTimer > 0.f) {
    UpdateTargetParameters(x12c_currGroupA, mgr);
    UpdateTargetParameters(x14c_currGroupB, mgr);
    x170_currGroupTimer = rstl::max_val(0.f, x170_currGroupTimer - dt);
    CTargetReticleRenderState::InterpolateWithClamp(
        x12c_currGroupA, x10c_currGroupInterp, x14c_currGroupB,
        1.f - x170_currGroupTimer / x16c_currGroupDur);
  } else {
    UpdateTargetParameters(x10c_currGroupInterp, mgr);
  }

  if (x1f8_missileBracketTimer != 0.f &&
      x1f8_missileBracketTimer < gpTweakTargeting->GetMissileBracketDuration()) {
    if (x1f8_missileBracketTimer < 0.f) {
      x1f8_missileBracketTimer = rstl::min_val(x1f8_missileBracketTimer + dt, 0.f);
    } else {
      x1f8_missileBracketTimer =
          rstl::min_val(x1f8_missileBracketTimer + dt,
                        gpTweakTargeting->GetMissileBracketDuration());
    }
  }

  if (x204_chargeGaugeOvershootTimer > 0.f) {
    x204_chargeGaugeOvershootTimer =
        rstl::max_val(x204_chargeGaugeOvershootTimer - dt, 0.f);
    if (x204_chargeGaugeOvershootTimer == 0.f) {
      for (int i = 0; i < 9; ++i) {
        xe0_outerBeamIconSquares[i].x10_rotAng = xe0_outerBeamIconSquares[i].x14_baseAngle;
      }
      xc4_chargeGauge.x10_rotAng = xc4_chargeGauge.x14_baseAngle;
      x208_lockonTimer = FLT_EPSILON;
    } else {
      float offshoot =
          offshoot_func(x2c_overshootOffsetHalf, x30_premultOvershootOffset,
                        1.f - x204_chargeGaugeOvershootTimer /
                                  gpTweakTargeting->GetChargeGaugeOvershootDuration());
      for (int i = 0; i < 9; ++i) {
        SOuterItemInfo& item = xe0_outerBeamIconSquares[i];
        float angleDelta = offshoot * item.x18_offshootAngleDelta;
        item.x10_rotAng = CMath::ClampRadians(angleDelta + item.xc_offshootBaseAngle);
      }
      xc4_chargeGauge.x10_rotAng = CMath::ClampRadians(
          xc4_chargeGauge.xc_offshootBaseAngle +
          offshoot * xc4_chargeGauge.x18_offshootAngleDelta);
    }
  }

  if (x208_lockonTimer > 0.f && x208_lockonTimer < gpTweakTargeting->GetLockonDuration()) {
    x208_lockonTimer =
        rstl::min_val(x208_lockonTimer + dt, gpTweakTargeting->GetLockonDuration());
  }

  if (x210_lockFireTimer > 0.f) {
    x210_lockFireTimer = rstl::max_val(0.f, x210_lockFireTimer - dt);
  }

  if (x1fc_missileBracketScaleTimer > 0.f) {
    x1fc_missileBracketScaleTimer = rstl::max_val(0.f, x1fc_missileBracketScaleTimer - dt);
  }
}

void CCompoundTargetReticle::Update(float dt, const CStateManager& mgr) {
  // 1. Orientation slerp
  CRelAngle angle = x10_laggingOrientation.AngleFrom(x0_leadingOrientation);
  float angleDeg = angle.AsDegrees();
  bool extreme = false;
  if (angleDeg < 0.1f || angleDeg > 45.f) {
    extreme = true;
  }
  float t;
  if (extreme) {
    t = 1.f;
  } else {
    float lagSpeed = gpTweakTargeting->GetAngularLagSpeed();
    t = rstl::min_val(1.f, lagSpeed * dt / angleDeg);
  }
  x10_laggingOrientation =
      t == 1.f ? x0_leadingOrientation
               : CQuaternion::Slerp(x10_laggingOrientation, x0_leadingOrientation, t);

  // 2. Target positions
  xf4_targetPos = CalculateOrbitZoneReticlePosition(mgr, false);
  x100_laggingTargetPos = CalculateOrbitZoneReticlePosition(mgr, true);

  // 3. Sub-updates
  UpdateCurrLockOnGroup(dt, mgr);
  UpdateNextLockOnGroup(dt, mgr);
  UpdateOrbitZoneGroup(dt, mgr);

  // 4. Reticle state transitions
  EReticleState desiredState = GetDesiredReticleState(mgr);
  if (desiredState != x20_prevState && x20_prevState == x24_nextState) {
    x24_nextState = desiredState;
    x28_noDrawTicks = 2;
  }

  if (x20_prevState != x24_nextState && static_cast< int >(x28_noDrawTicks) <= 0) {
    x20_prevState = x24_nextState;
    bool combat = false;
    bool scan = false;
    bool xray = false;
    bool thermal = false;
    switch (x24_nextState) {
    case kRS_Combat:
      combat = true;
      break;
    case kRS_Scan:
      scan = true;
      break;
    case kRS_XRay:
      xray = true;
      break;
    case kRS_Thermal:
      thermal = true;
      break;
    default:
      break;
    }

    if (combat) {
      x40_seeker.Lock();
    } else {
      x40_seeker.Unlock();
    }
    if (combat) {
      x4c_lockConfirm.Lock();
    } else {
      x4c_lockConfirm.Unlock();
    }
    if (combat) {
      x58_targetFlower.Lock();
    } else {
      x58_targetFlower.Unlock();
    }
    if (combat) {
      x64_missileBracket.Lock();
    } else {
      x64_missileBracket.Unlock();
    }
    if (combat) {
      x70_innerBeamIcon.Lock();
    } else {
      x70_innerBeamIcon.Unlock();
    }
    if (combat) {
      x7c_lockFire.Lock();
    } else {
      x7c_lockFire.Unlock();
    }
    if (combat) {
      x88_lockDagger.Lock();
    } else {
      x88_lockDagger.Unlock();
    }
    if (combat) {
      xa0_chargeTickFirst.Lock();
    } else {
      xa0_chargeTickFirst.Unlock();
    }
    if (xray) {
      xac_xrayRetRing.Lock();
    } else {
      xac_xrayRetRing.Unlock();
    }
    if (thermal) {
      xb8_thermalReticle.Lock();
    } else {
      xb8_thermalReticle.Unlock();
    }
    if (combat) {
      xc4_chargeGauge.x0_model.Lock();
    } else {
      xc4_chargeGauge.x0_model.Unlock();
    }
    if (scan) {
      x94_grapple.Unlock();
    } else {
      x94_grapple.Lock();
    }
    for (AUTO(it, xe0_outerBeamIconSquares.begin()); it != xe0_outerBeamIconSquares.end(); ++it) {
      if (combat) {
        it->x0_model.Lock();
      } else {
        it->x0_model.Unlock();
      }
    }
  }

  // 5. Charge gauge / fully charged
  bool fullyCharged = mgr.GetPlayer()->GetPlayerGun()->GetChargeBeamFactor() >= 1.f;
  if (fullyCharged != x21a_fullyCharged) {
    x21a_fullyCharged = fullyCharged;
  }
  if (x21a_fullyCharged) {
    x214_fullChargeFadeTimer =
        rstl::min_val(gpTweakTargeting->GetFullChargeFadeDuration(),
                      x214_fullChargeFadeTimer + dt / gpTweakTargeting->GetFullChargeFadeDuration());
  } else {
    x214_fullChargeFadeTimer =
        rstl::max_val(0.f,
                      x214_fullChargeFadeTimer - dt / gpTweakTargeting->GetFullChargeFadeDuration());
  }

  // 6. Missile active state
  bool missileActive = mgr.GetPlayer()->GetPlayerGun()->GetMissileMode() == CPlayerGun::kMM_Active;
  if (missileActive != x1f4_missileActive) {
    if (x1f8_missileBracketTimer != 0.f) {
      x1f8_missileBracketTimer = FLT_EPSILON - x1f8_missileBracketTimer;
    } else {
      x1f8_missileBracketTimer = FLT_EPSILON;
    }
    x1f4_missileActive = missileActive;
  }

  // 7. Beam change
  CPlayerState::EBeamId beam = mgr.GetPlayer()->GetPlayerGun()->GetPrimaryWeaponId();
  if (beam != x200_beam) {
    x204_chargeGaugeOvershootTimer = gpTweakTargeting->GetChargeGaugeOvershootDuration();
    for (int i = 0; i < 9; ++i) {
      SOuterItemInfo& icon = xe0_outerBeamIconSquares[i];
      float baseAngle = CMath::ClampRadians(
          gpTweakTargeting->GetOuterBeamSquareAngles(beam)[i]);
      CRelAngle offshootAngleDelta(baseAngle - icon.x10_rotAng);
      if (i % 2 == 1) {
        offshootAngleDelta = offshootAngleDelta.AsRadians() > 0.f
                                 ? CRelAngle(-1.f * (M_2PIF - offshootAngleDelta.AsRadians()))
                                 : CRelAngle(M_2PIF + offshootAngleDelta.AsRadians());
      }
      icon.xc_offshootBaseAngle = icon.x10_rotAng;
      icon.x18_offshootAngleDelta = offshootAngleDelta.AsRadians();
      icon.x14_baseAngle = baseAngle;
    }

    float chargeBaseAngle = CMath::ClampRadians(
        gpTweakTargeting->GetChargeGaugeAngle(beam));
    bool odd = rand() % 2 == 1;
    CRelAngle chargeOffshootAngleDelta(chargeBaseAngle - xc4_chargeGauge.x10_rotAng);
    if (odd) {
      chargeOffshootAngleDelta = chargeOffshootAngleDelta.AsRadians() > 0.f
                                     ? CRelAngle(-1.f * (M_2PIF - chargeOffshootAngleDelta.AsRadians()))
                                     : CRelAngle(M_2PIF + chargeOffshootAngleDelta.AsRadians());
    }
    xc4_chargeGauge.xc_offshootBaseAngle = xc4_chargeGauge.x10_rotAng;
    xc4_chargeGauge.x18_offshootAngleDelta = chargeOffshootAngleDelta.AsRadians();
    xc4_chargeGauge.x14_baseAngle = chargeBaseAngle;
    x200_beam = beam;
    x208_lockonTimer = 0.f;
  }

  // 8. Beam shot / lock fire
  const CPlayerGun* gun = mgr.GetPlayer()->GetPlayerGun();
  if (gun->GetFiring() & 0x1) {
    if (!x218_beamShot) {
      x210_lockFireTimer = gpTweakTargeting->GetLockFireDuration();
    }
    x218_beamShot = true;
  } else {
    x218_beamShot = false;
  }

  // 9. Missile shot / missile bracket scale
  if (gun->GetFiring() & 0x2) {
    if (!x219_missileShot) {
      x1fc_missileBracketScaleTimer = gpTweakTargeting->GetMissileBracketScaleDuration();
    }
    x219_missileShot = true;
  } else {
    x219_missileShot = false;
  }

  // 10. Grapple point tracking
  const CScriptGrapplePoint* castResult =
      TCastToConstPtr< CScriptGrapplePoint >(
          mgr.GetObjectListById(kOL_All).GetObjectById(xf2_nextTargetId));
  const CScriptGrapplePoint* grapplePoint = nullptr;
  if (xf2_nextTargetId != kInvalidUniqueId) {
    grapplePoint = castResult;
  }
  if (grapplePoint != nullptr) {
    TUniqueId gpId = grapplePoint->GetUniqueId();
    if (gpId != x1dc_grapplePoint0) {
      float tmp;
      if (gpId == x1de_grapplePoint1) {
        tmp = rstl::max_val(gkEpsilon, x1e4_grapplePoint1T);
      } else {
        tmp = FLT_EPSILON;
      }
      x1de_grapplePoint1 = x1dc_grapplePoint0;
      x1e4_grapplePoint1T = x1e0_grapplePoint0T;
      x1e0_grapplePoint0T = tmp;
      x1dc_grapplePoint0 = gpId;
    }
  } else {
    if (x1dc_grapplePoint0 != kInvalidUniqueId) {
      x1de_grapplePoint1 = x1dc_grapplePoint0;
      x1e4_grapplePoint1T = x1e0_grapplePoint0T;
      x1e0_grapplePoint0T = 0.f;
      x1dc_grapplePoint0 = kInvalidUniqueId;
    }
  }

  // 11. Grapple point interpolation timers
  if (x1e0_grapplePoint0T > 0.f) {
    x1e0_grapplePoint0T = rstl::min_val(1.f, x1e0_grapplePoint0T + dt / 0.5f);
  }
  if (x1e4_grapplePoint1T > 0.f) {
    x1e4_grapplePoint1T = rstl::max_val(0.f, x1e4_grapplePoint1T - dt / 0.5f);
    if (x1e4_grapplePoint1T == 0.f) {
      x1de_grapplePoint1 = kInvalidUniqueId;
    }
  }

  // 12. Xray/seeker angle updates
  x1f0_xrayRetAngle = CMath::ClampRadians(
      x1f0_xrayRetAngle +
      CRelAngle::FromDegrees(gpTweakTargeting->GetXRayRetAngleSpeed() * dt).AsRadians());
  x1ec_seekerAngle = CMath::ClampRadians(
      x1ec_seekerAngle +
      CRelAngle::FromDegrees(gpTweakTargeting->GetSeekerAngleSpeed() * dt).AsRadians());
}

EReticleState CCompoundTargetReticle::GetDesiredReticleState(const CStateManager& mgr) const {
  switch (mgr.GetPlayerState()->GetCurrentVisor()) {
  case CPlayerState::kPV_Scan:
    return kRS_Scan;
  case CPlayerState::kPV_XRay:
    return kRS_XRay;
  case CPlayerState::kPV_Combat:
    return kRS_Combat;
  case CPlayerState::kPV_Thermal:
    return kRS_Thermal;
  default:
    return kRS_Combat;
  }
}

bool CCompoundTargetReticle::CheckLoadComplete() { return true; }

static float calculate_premultiplied_overshoot_offset(float f) {
  float x = static_cast< float >(asin(static_cast< double >(1.f / f)));
  return 2.f * (M_PIF - x);
}

static float offshoot_func(float f1, float f2, float f3) {
  return f1 * CMath::FastSinR((f3 - 0.5f) * f2) + 0.5f;
}

static bool IsDamageOrbit(CPlayer::EOrbitBrokenType type) {
  switch (type) {
  case CPlayer::kOB_Five:
  case CPlayer::kOB_ActivateOrbitSource:
  case CPlayer::kOB_ProjectileCollide:
  case CPlayer::kOB_Freeze:
  case CPlayer::kOB_DamageOnGrapple:
    return true;
  default:
    return false;
  }
}

CCompoundTargetReticle::SOuterItemInfo::SOuterItemInfo(const char* modelName)
: x0_model(gpSimplePool->GetObj(modelName))
, xc_offshootBaseAngle(0.f)
, x10_rotAng(0.f)
, x14_baseAngle(0.f)
, x18_offshootAngleDelta(0.f) {}

CCompoundTargetReticle::CCompoundTargetReticle(const CStateManager& mgr)
: x0_leadingOrientation(
      CQuaternion::FromMatrix(mgr.GetCameraManager()->GetCurrentCamera(mgr).GetTransform()))
, x10_laggingOrientation(
      CQuaternion::FromMatrix(mgr.GetCameraManager()->GetCurrentCamera(mgr).GetTransform()))
, x20_prevState(kRS_Unspecified)
, x24_nextState(kRS_Unspecified)
, x28_noDrawTicks(0)
, x2c_overshootOffsetHalf(0.5f * gpTweakTargeting->GetChargeGaugeOvershootOffset())
, x30_premultOvershootOffset(
      calculate_premultiplied_overshoot_offset(gpTweakTargeting->GetChargeGaugeOvershootOffset()))
, x34_crosshairs(gpSimplePool->GetObj(skCrosshairsReticleAssetName))
, x40_seeker(gpSimplePool->GetObj(skSeekerAssetName))
, x4c_lockConfirm(gpSimplePool->GetObj(skLockConfirmAssetName))
, x58_targetFlower(gpSimplePool->GetObj(skTargetFlowerAssetName))
, x64_missileBracket(gpSimplePool->GetObj(skMissileBracketAssetName))
, x70_innerBeamIcon(gpSimplePool->GetObj(skInnerBeamIconName))
, x7c_lockFire(gpSimplePool->GetObj(skLockFireAssetName))
, x88_lockDagger(gpSimplePool->GetObj(skLockDaggerAssetName))
, x94_grapple(gpSimplePool->GetObj(skGrappleReticleAssetName))
, xa0_chargeTickFirst(gpSimplePool->GetObj(skChargeBeamTickAssetName))
, xac_xrayRetRing(gpSimplePool->GetObj(skXRayRingModelName))
, xb8_thermalReticle(gpSimplePool->GetObj(skThermalReticleAssetName))
, xc4_chargeGauge(skChargeGaugeAssetName)
, xf0_targetId(kInvalidUniqueId)
, xf2_nextTargetId(kInvalidUniqueId)
, xf4_targetPos(CalculateOrbitZoneReticlePosition(mgr, false))
, x100_laggingTargetPos(CalculateOrbitZoneReticlePosition(mgr, true))
, x10c_currGroupInterp(skZeroRenderState)
, x12c_currGroupA(skZeroRenderState)
, x14c_currGroupB(skZeroRenderState)
, x16c_currGroupDur(0.f)
, x170_currGroupTimer(0.f)
, x174_nextGroupInterp(skZeroRenderState)
, x194_nextGroupA(skZeroRenderState)
, x1b4_nextGroupB(skZeroRenderState)
, x1d4_nextGroupDur(0.f)
, x1d8_nextGroupTimer(0.f)
, x1dc_grapplePoint0(kInvalidUniqueId)
, x1de_grapplePoint1(kInvalidUniqueId)
, x1e0_grapplePoint0T(0.f)
, x1e4_grapplePoint1T(0.f)
, x1e8_crosshairsScale(0.f)
, x1ec_seekerAngle(0.f)
, x1f0_xrayRetAngle(0.f)
, x1f4_missileActive(false)
, x1f8_missileBracketTimer(0.f)
, x1fc_missileBracketScaleTimer(0.f)
, x200_beam(CPlayerState::kBI_Power)
, x204_chargeGaugeOvershootTimer(0.f)
, x208_lockonTimer(gpTweakTargeting->GetLockonDuration())
, x20c_unk(0.f)
, x210_lockFireTimer(0.f)
, x214_fullChargeFadeTimer(0.f)
, x218_beamShot(false)
, x219_missileShot(false)
, x21a_fullyCharged(false) {
  xe0_outerBeamIconSquares.reserve(9);
  for (int i = 0; i < 9; ++i) {
    char buf[64];
    sprintf(buf, "%s%d", skOuterBeamIconSquareNameBase, i);
    xe0_outerBeamIconSquares.push_back(SOuterItemInfo(buf));
  }
  x34_crosshairs.Lock();
}


