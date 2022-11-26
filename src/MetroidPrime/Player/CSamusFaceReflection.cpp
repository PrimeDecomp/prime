#include "MetroidPrime/Player/CSamusFaceReflection.hpp"

#include "MetroidPrime/CActorLights.hpp"
#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CAnimPlaybackParms.hpp"
#include "MetroidPrime/CAnimRes.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Cameras/CFirstPersonCamera.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/TCastTo.hpp"
#include "MetroidPrime/Tweaks/CTweakGui.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayer.hpp"


#include "Kyoto/CResFactory.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CModelFlags.hpp"
#include "Kyoto/Math/CRelAngle.hpp"


static const CTransform4f PreXf =
    CTransform4f::Scale(0.3f) * CTransform4f::Translate(CVector3f(0.f, 0.5f, 0.f));

CSamusFaceReflection::CSamusFaceReflection(const CStateManager& stateMgr)
: x0_modelData(CModelData(CAnimRes(gpResourceFactory->GetResourceIdByName("ACS_SamusFace")->id,
                                   CAnimRes::kDefaultCharIdx, CVector3f(1.f, 1.f, 1.f), 0, true)))
, x4c_lights(new CActorLights(8, CVector3f::Zero(), 4, 4, 0.1f, false, false, false))
, x50_lookRot(CQuaternion::NoRotation())
, x60_lookDir(CVector3f::Forward())
, x6c_(0)
, x70_hidden(true) {

  CAnimPlaybackParms parms(0, -1, 1.f, true);
  x0_modelData.AnimationData()->SetAnimation(parms, false);
}

void CSamusFaceReflection::Update(float dt, const CStateManager& mgr, CRandom16& rand) {
  if (const CFirstPersonCamera* fpCam =
          TCastToConstPtr< CFirstPersonCamera >(mgr.GetCameraManager()->GetCurrentCamera(mgr))) {
    CVector3f camTrans = fpCam->GetTranslation();
    x0_modelData.AdvanceAnimationIgnoreParticles(dt, rand, true);
    x4c_lights->SetFindShadowLight(false);
    TAreaId areaId = mgr.GetPlayer()->GetCurrentAreaId();
    if (areaId == kInvalidAreaId)
      return;

    CAABox aabb(
        CVector3f(camTrans.GetX() - 0.125f, camTrans.GetY() - 0.125f, camTrans.GetZ() - 0.125f),
        CVector3f(camTrans.GetX() + 0.125f, camTrans.GetY() + 0.125f, camTrans.GetZ() + 0.125f));

    const CGameArea& area = mgr.GetWorld()->GetAreaAlways(areaId);
    x4c_lights->BuildFaceLightList(mgr, area, aabb);

    CMatrix3f matrix = fpCam->GetTransform().BuildMatrix3f();
    CUnitVector3f lookDir(matrix.GetColumn(kDY));

    CQuaternion xfLook1 = CQuaternion::LookAt(CUnitVector3f(lookDir), CUnitVector3f::Forward(),
                                              CRelAngle::FromRadians(M_2PIF));
    CQuaternion xfLook2 = CQuaternion::LookAt(
        CUnitVector3f::Forward(), xfLook1.Transform(x60_lookDir), CRelAngle::FromRadians(M_2PIF));
    xfLook2 = xfLook2 * xfLook2;

    CVector3f lookCenter = xfLook2.BuildTransform().GetColumn(kDY);
    CVector3f lookRotCenter = x50_lookRot.BuildTransform().GetColumn(kDY);
    float lookDot = CVector3f::Dot(lookCenter, lookRotCenter);

    float freeLookSpeed = dt * gpTweakPlayer->GetFreeLookSpeed() * 0.5f;

    if (fabsf(lookDot) >= 1.f)
      lookDot = 1.f;

    float lookAng = acos(lookDot);

    float f = 0.0f;
    if (lookAng > 0.0f) {
      f = freeLookSpeed / lookAng;
    }
    x50_lookRot =
        CQuaternion::SlerpLocal(x50_lookRot, xfLook2, CMath::Clamp(0.0f, dt * 18.0f * f, 1.0f));
    x60_lookDir = lookDir;
  }
}

void CSamusFaceReflection::PreDraw(const CStateManager& mgr) {
  if ((x6c_ == 2 || (x4c_lights->GetActiveLightCount() < 1 && (x6c_ == 0 || x6c_ == 3))) ||
      !TCastToConstPtr< CFirstPersonCamera >(mgr.GetCameraManager()->GetCurrentCamera(mgr))) {
    x70_hidden = true;
  } else {
    x70_hidden = false;
    x0_modelData.AnimationData()->PreRender();
  }
}

void CSamusFaceReflection::Draw(const CStateManager& mgr) const {
  if (x70_hidden)
    return;

  if (const CFirstPersonCamera* fpCam =
          TCastToConstPtr< CFirstPersonCamera >(mgr.GetCameraManager()->GetCurrentCamera(mgr))) {

    CVector3f camTranslation = fpCam->GetTransform().GetTranslation();
    CVector3f camYcol = fpCam->GetTransform().GetColumn(kDY);
    CVector3f camZcol = fpCam->GetTransform().GetColumn(kDZ);

    CQuaternion camRot(CQuaternion::FromMatrix(fpCam->GetTransform()));

    float dist = CTweakGui::FaceReflectionDistanceDebugValueToActualValue(
        gpTweakGui->GetFaceReflectionDistance());
    float height = CTweakGui::FaceReflectionHeightDebugValueToActualValue(
        gpTweakGui->GetFaceReflectionHeight());
    float aspect = CTweakGui::FaceReflectionAspectDebugValueToActualValue(
        gpTweakGui->GetFaceReflectionAspect());
    float orthoWidth = CTweakGui::FaceReflectionOrthoWidthDebugValueToActualValue(
        gpTweakGui->GetFaceReflectionOrthoWidth());
    float orthoHeight = CTweakGui::FaceReflectionOrthoHeightDebugValueToActualValue(
        gpTweakGui->GetFaceReflectionOrthoHeight());

    CVector3f camZHeight = height * camZcol;
    CVector3f camYDist = dist * camYcol;
    CVector3f vec1(
        camTranslation.GetX() + camYDist.GetX() + camZHeight.GetX(),
        camTranslation.GetY() + camYDist.GetY() + camZHeight.GetY(),
        camTranslation.GetZ() + camYDist.GetZ() + camZHeight.GetZ());
    ;
    CTransform4f modelXf = CTransform4f((camRot * x50_lookRot).BuildTransform(), vec1) * PreXf;

    CGraphics::SetViewPointMatrix(fpCam->GetTransform());
    CGraphics::SetOrtho(aspect * -orthoWidth, aspect * orthoWidth, orthoHeight, -orthoHeight, -10.f,
                        10.f);

    CActorLights* lights = x6c_ == 1 ? nullptr : x4c_lights.get();
    if (x6c_ == 3) {
      x0_modelData.Render(mgr, modelXf, lights, CModelFlags::Normal());
    } else {
      CPlayerState::EPlayerVisor visor = mgr.GetPlayerState()->GetActiveVisor(mgr);
      float transFactor;
      if (visor == CPlayerState::kPV_Combat)
        transFactor = mgr.GetPlayerState()->GetVisorTransitionFactor();
      else
        transFactor = 0.f;
      if (transFactor > 0.f) {
        x0_modelData.Render(mgr, modelXf, nullptr, CModelFlags::Additive(CColor::Black()).DepthCompareUpdate(true, true));
        x0_modelData.Render(mgr, modelXf, lights, CModelFlags::Additive(transFactor).DepthCompareUpdate(true, false));
      }
    }
  }
}
