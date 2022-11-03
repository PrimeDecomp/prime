#include "MetroidPrime/CVisorFlare.hpp"

#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Cameras/CGameCamera.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"

#include "Collision/CRayCastResult.hpp"

#include "MetaRender/CCubeRenderer.hpp"

#include "Kyoto/Graphics/CGX.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/Math/CloseEnough.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

#include "dolphin/gx.h"

#include "math.h"
#include "rstl/math.hpp"

CVisorFlare::CFlareDef::CFlareDef(const TToken< CTexture >& tex, float pos, float scale, uint color)
: x0_tex(tex), x8_pos(pos), xc_scale(scale), x10_color(color) {
  x0_tex.Lock();
}

rstl::optional_object< CVisorFlare::CFlareDef > CVisorFlare::LoadFlareDef(CInputStream& in) {
  uint propCount = in.ReadLong();
  if (propCount != 4)
    return rstl::optional_object_null();

  CAssetId txtrId = in.Get< CAssetId >();
  float f1 = in.ReadFloat();
  float f2 = in.ReadFloat();
  CColor color = in.Get< CColor >();
  if (txtrId == kInvalidAssetId)
    return rstl::optional_object_null();

  TToken< CTexture > tex = gpSimplePool->GetObj(SObjectTag('TXTR', txtrId));

  return CFlareDef(tex, f1, f2, color.GetColor_u32());
}

CVisorFlare::CVisorFlare(EBlendMode blendMode, bool b1, float f1, float f2, float f3, uint w1,
                         uint w2, const rstl::vector< CFlareDef >& flares)
: x0_blendMode(blendMode)
, x4_flareDefs(flares)
, x14_b1(b1)
, x18_f1(rstl::max_val(1.0E-4f, f1))
, x1c_f2(f2)
, x20_f3(f3)
, x24_(0.f)
, x28_(0.f)
, x2c_w1(w1)
, x30_w2(w2) {}

void CVisorFlare::Update(float dt, const CVector3f& pos, const CActor* act, CStateManager& mgr) {
  CPlayerState::EPlayerVisor visor = mgr.GetPlayerState()->GetCurrentVisor();

  if ((visor == CPlayerState::kPV_Combat || (x2c_w1 != 1 && visor == CPlayerState::kPV_Thermal)) &&
      mgr.GetPlayer()->GetMorphballTransitionState() == CPlayer::kMS_Unmorphed) {

    CVector3f camPos = mgr.GetCameraManager()->GetCurrentCamera(mgr)->GetTranslation();
    CVector3f camDiff = pos - camPos;
    float mag = camDiff.Magnitude();
    camDiff *= (1.f / mag);

    CMaterialFilter nearMaterialList = CMaterialFilter::MakeInclude(CMaterialList(kMT_Occluder));
    TEntityList nearVec;
    mgr.BuildNearList(nearVec, camPos, camDiff, mag, nearMaterialList, act);

    CMaterialFilter rayMaterialList = CMaterialFilter::MakeIncludeExclude(
        CMaterialList(kMT_Solid), CMaterialList(kMT_SeeThrough));
    TUniqueId id(kInvalidUniqueId);
    CRayCastResult result =
        mgr.RayWorldIntersection(id, camPos, camDiff, mag, rayMaterialList, nearVec);
    nearVec.clear();

    if (result.IsValid()) {
      x28_ += dt;
    } else {
      x28_ -= dt;
    }
    x28_ = rstl::max_val(rstl::max_val(0.f, x28_), x18_f1);

    const CGameCamera* curCam = mgr.GetCameraManager()->GetCurrentCamera(mgr);
    CVector3f cameraForward = curCam->GetTransform().GetColumn(kDY);
    CVector3f dir = pos - curCam->GetTranslation();
    x24_ = 1.f - x28_ / x18_f1;

    float dot = CVector3f::Dot(dir.AsNormalized(), cameraForward);
    x24_ *= rstl::max_val(0.f, 1.f - (x1c_f2 * 4.f * (1.f - dot)));

    if (x2c_w1 == 2) {
      mgr.AddThermalColdScale2(x24_);
    }
  }
}

void CVisorFlare::Render(const CVector3f& inPos, const CStateManager& mgr) const {
  if (close_enough(x28_, x18_f1) ||
      mgr.GetPlayer()->GetMorphballTransitionState() != CPlayer::kMS_Unmorphed) {
    return;
  }

  switch (mgr.GetPlayerState()->GetActiveVisor(mgr)) {
  case CPlayerState::kPV_Combat:
    if (x30_w2 != 0)
      return;
    break;
  case CPlayerState::kPV_Thermal:
    if (x2c_w1 != 0)
      return;
    break;
  default:
    return;
  }

  CGraphics::DisableAllLights();
  gpRender->SetDepthReadWrite(false, false);
  const CGameCamera* cam = mgr.GetCameraManager()->GetCurrentCamera(mgr);
  CVector3f camPos = cam->GetTranslation();
  CVector3f inPosCopy = inPos;

  CTransform4f viewMatrix = CGraphics::GetViewMatrix();
  const CVector3f invPos = viewMatrix.GetInverse() * inPosCopy;
  const CVector3f invPos2 = viewMatrix * CVector3f(-invPos.GetX(), invPos.GetY(), -invPos.GetZ());
  CVector3f camFront = cam->GetTransform().GetForward();
  if (!close_enough(x24_, 0.f)) {
    float acos = 0.f;
    if (!close_enough(x20_f3, 0.f)) {
      CVector3f camDist(
          CVector3f(inPosCopy.GetX() - camPos.GetX(), inPosCopy.GetY() - camPos.GetY(), 0.f)
              .AsNormalized());
      CVector3f camDir(CVector3f(camFront.GetX(), camFront.GetY(), 0.f).AsNormalized());
      acos = CMath::ArcCosineR(CVector3f::Dot(camDist, camDir));
      if (camDist.GetX() * camDir.GetY() - camDir.GetX() * camDist.GetY() < 0.f) {
        acos = -acos;
      }
      acos = x20_f3 * acos;
    }
    SetupRenderState(mgr);
    for (rstl::vector< CFlareDef >::const_iterator item = x4_flareDefs.begin();
         item != x4_flareDefs.end(); ++item) {
      CVector3f origin = CVector3f::Lerp(inPosCopy, invPos2, item->GetPosition());
      CTransform4f modelMatrix = CTransform4f::LookAt(origin, camPos);
      gpRender->SetModelMatrix(modelMatrix);
      float scale = 0.5f * x24_ * item->GetScale();
      if (x14_b1) {
        CVector3f dist = origin - camPos;
        if (dist.CanBeNormalized()) {
          scale *= dist.Magnitude();
        }
      }
      if (item->GetTexture().IsLoaded()) {
        TToken< CTexture > tok = item->GetTexture();
        tok->Load(GX_TEXMAP0, CTexture::kCM_Repeat);
        float f1;
        if (close_enough(acos, 0.f)) {
          f1 = 0.f;
        } else {
          f1 = scale * sinf(acos);
          scale *= cosf(acos);
        }
        if (mgr.GetThermalDrawFlag() == kTD_Hot) {
          DrawDirect(item->GetColor(), f1, scale);
        } else {
          DrawStreamed(item->GetColor(), f1, scale);
        }
      }
    }
    ResetTevSwapMode(mgr);
  }
}

void CVisorFlare::DrawDirect(const CColor& color, float f1, float f2) const {
  CColor kcolor = color;
  kcolor.SetAlpha(kcolor.GetRed() * x24_);
  CGX::SetTevKColor(GX_KCOLOR0, kcolor.GetGXColor());
  CGX::Begin(GX_TRIANGLESTRIP, GX_VTXFMT0, 4);
  GXPosition3f32(f1 - f2, 0.f, f2 + f1);
  GXTexCoord2f32(0.f, 1.f);
  GXPosition3f32(f1 + f2, 0.f, f2 - f1);
  GXTexCoord2f32(1.f, 1.f);
  GXPosition3f32(-(f1 + f2), 0.f, -(f2 - f1));
  GXTexCoord2f32(0.f, 0.f);
  GXPosition3f32(-f1 + f2, 0.f, -f2 - f1);
  GXTexCoord2f32(1.f, 0.f);
  CGX::End();
}

void CVisorFlare::DrawStreamed(const CColor& color, float f1, float f2) const {
  CGraphics::StreamBegin(kP_TriangleStrip);
  CGraphics::StreamColor(color.WithAlphaModulatedBy(x24_));
  CGraphics::StreamTexcoord(0.f, 1.f);
  CGraphics::StreamVertex(f1 - f2, 0.f, f2 + f1);
  CGraphics::StreamTexcoord(1.f, 1.f);
  CGraphics::StreamVertex(f1 + f2, 0.f, f2 - f1);
  CGraphics::StreamTexcoord(0.f, 0.f);
  CGraphics::StreamVertex(-(f1 + f2), 0.f, -(f2 - f1));
  CGraphics::StreamTexcoord(1.f, 0.f);
  CGraphics::StreamVertex(-f1 + f2, 0.f, -f2 - f1);
  CGraphics::StreamEnd();
}

void CVisorFlare::SetupRenderState(const CStateManager& mgr) const {
  if (mgr.GetThermalDrawFlag() == kTD_Hot) {
    CGX::SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ONE, GX_LO_CLEAR);
    CGX::SetStandardTevColorAlphaOp(GX_TEVSTAGE0);
    CGX::SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
    CGX::SetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
    GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP1);
    CGX::SetTevKColorSel(GX_TEVSTAGE0, GX_TEV_KCSEL_K0_A);
    CGX::SetTevKAlphaSel(GX_TEVSTAGE0, GX_TEV_KASEL_K0_A);
    CGX::SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, GX_CC_ZERO);
    CGX::SetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_TEXA, GX_CA_KONST, GX_CA_ZERO);
    CGX::SetNumTexGens(1);
    CGX::SetNumChans(0);
    CGX::SetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY, false, GX_PTIDENTITY);
    switch (x0_blendMode) {
    case kBM_Additive:
      CGX::SetNumTevStages(1);
      break;
    case kBM_Blend:
      CGX::SetStandardTevColorAlphaOp(GX_TEVSTAGE1);
      CGX::SetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
      CGX::SetTevColorIn(GX_TEVSTAGE1, GX_CC_ZERO, GX_CC_TEXA, GX_CC_CPREV, GX_CC_ZERO);
      CGX::SetTevAlphaIn(GX_TEVSTAGE1, GX_CA_ZERO, GX_CA_TEXA, GX_CA_APREV, GX_CA_ZERO);
      CGX::SetNumTevStages(2);
      break;
    }
    static const GXVtxDescList vtxDescList[3] = {
        {GX_VA_POS, GX_DIRECT},
        {GX_VA_TEX0, GX_DIRECT},
        {GX_VA_NULL, GX_NONE},
    };
    CGX::SetVtxDescv(vtxDescList);
  } else {
    switch (x0_blendMode) {
    case kBM_Additive:
      gpRender->SetBlendMode_AdditiveAlpha();
      break;
    case kBM_Blend:
      gpRender->SetBlendMode_AlphaBlended();
      break;
    }
    CGraphics::SetTevOp(kTS_Stage0, CGraphics::kEnvModulate);
    CGraphics::SetTevOp(kTS_Stage1, CGraphics::kEnvPassthru);
  }
}

void CVisorFlare::ResetTevSwapMode(const CStateManager& mgr) const {
  if (mgr.GetThermalDrawFlag() == kTD_Hot) {
    GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
  }
}
