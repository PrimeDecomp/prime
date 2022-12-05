#include "MetroidPrime/CMappableObject.hpp"

#include "MetroidPrime/CMapWorldInfo.hpp"
#include "MetroidPrime/Tweaks/CTweakAutoMapper.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayerRes.hpp"

#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Graphics/CGX.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/SObjectTag.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/math.hpp"

struct SDrawData {
  int x0_;
  int x4_;
  int x8_;
  uchar xc_idxA;
  uchar xd_idxB;
  uchar xe_idxC;
  uchar xf_idxD;
};
static const SDrawData sDoorData[6] = {
    {0x00000000, 0x00000000, 0xBF800000, 6, 4, 2, 0},
    {0x00000000, 0x00000000, 0x3F800000, 3, 1, 7, 5},
    {0x00000000, 0xBF800000, 0x3F800000, 1, 0, 5, 4},
    {0x00000000, 0x3F800000, 0x3F800000, 7, 6, 3, 2},
    {0xBF800000, 0x00000000, 0x00000000, 3, 2, 1, 0},
    {0x3F800000, 0x00000000, 0x00000000, 5, 4, 7, 6},
};

CVector3f CMappableObject::skDoorVerts[8] = {
    CVector3f::Zero(), CVector3f::Zero(), CVector3f::Zero(), CVector3f::Zero(),
    CVector3f::Zero(), CVector3f::Zero(), CVector3f::Zero(), CVector3f::Zero(),
};

void CMappableObject::ReadAutomapperTweaks(const CTweakAutoMapper& tweaks) {
  const CVector3f& center = tweaks.GetDoorCenter();

  // skDoorVerts[0] = CVector3f(-center.GetZ(), -center.GetY(), 0.f);
  // skDoorVerts[1] = CVector3f(-center.GetZ(), skDoorVerts[0].GetY(), center.GetX() * 2.0f);
  // skDoorVerts[2] = CVector3f(-center.GetZ(), center.GetY(), 0.f);
  // skDoorVerts[3] = CVector3f(-center.GetZ(), skDoorVerts[2].GetY(), skDoorVerts[1].GetZ());

  // skDoorVerts[4] = CVector3f(-center.GetZ() * 0.2f, skDoorVerts[0].GetY(), 0.f);
  // skDoorVerts[5] = CVector3f(skDoorVerts[4].GetX(), skDoorVerts[0].GetY(),
  // skDoorVerts[1].GetZ()); skDoorVerts[6] = CVector3f(skDoorVerts[4].GetX(),
  // skDoorVerts[2].GetY(), 0.f); skDoorVerts[7] = CVector3f(skDoorVerts[4].GetX(),
  // skDoorVerts[2].GetY(), skDoorVerts[1].GetZ());

  skDoorVerts[0] = CVector3f(-center.GetZ(), -center.GetY(), 0.f);
  skDoorVerts[1] = CVector3f(-center.GetZ(), -center.GetY(), 2.f * center.GetX());
  skDoorVerts[2] = CVector3f(-center.GetZ(), center.GetY(), 0.f);
  skDoorVerts[3] = CVector3f(-center.GetZ(), center.GetY(), 2.f * center.GetX());
  skDoorVerts[4] = CVector3f(.2f * -center.GetZ(), -center.GetY(), 0.f);
  skDoorVerts[5] = CVector3f(.2f * -center.GetZ(), -center.GetY(), 2.f * center.GetX());
  skDoorVerts[6] = CVector3f(.2f * -center.GetZ(), center.GetY(), 0.f);
  skDoorVerts[7] = CVector3f(.2f * -center.GetZ(), center.GetY(), 2.f * center.GetX());
}

rstl::pair< CColor, CColor >
CMappableObject::GetDoorColors(int curAreaId, const CMapWorldInfo& mwInfo, float alpha) const {
  CColor firstColor(0xff00ffff);
  bool areaNumMatches = x8_objId.AreaNum() == curAreaId;
  bool doorVisited = mwInfo.IsDoorVisited(x8_objId);

  if (areaNumMatches) {
    if (doorVisited && x0_type == kMOT_ShieldDoor) {
      firstColor = gpTweakAutoMapper->GetDoorColor(0);
    } else {
      int colorIdx = 0;
      switch (x0_type) {
      case kMOT_ShieldDoor:
        colorIdx = 1;
        break;
      case kMOT_IceDoor:
      case kMOT_IceDoorCeiling:
      case kMOT_IceDoorFloor:
      case kMOT_IceDoorFloor2:
        colorIdx = 2;
        break;
      case kMOT_WaveDoor:
      case kMOT_WaveDoorCeiling:
      case kMOT_WaveDoorFloor:
      case kMOT_WaveDoorFloor2:
        colorIdx = 3;
        break;
      case kMOT_PlasmaDoor:
      case kMOT_PlasmaDoorCeiling:
      case kMOT_PlasmaDoorFloor:
      case kMOT_PlasmaDoorFloor2:
        colorIdx = 4;
        break;
      default:
        break;
      }
      firstColor = gpTweakAutoMapper->GetDoorColor(colorIdx);
    }

  } else if (doorVisited) {
    firstColor = gpTweakAutoMapper->GetOpenDoorColor();
  } else {
    firstColor = CColor(0);
  }

  firstColor = firstColor.WithAlphaModulatedBy(alpha);

  float r = rstl::min_val(1.0f, firstColor.GetRed() * 1.4f);
  float g = rstl::min_val(1.0f, firstColor.GetGreen() * 1.4f);
  float b = rstl::min_val(1.0f, firstColor.GetBlue() * 1.4f);
  float a = rstl::min_val(1.0f, firstColor.GetAlpha() * 1.4f);
  return rstl::pair< CColor, CColor >(firstColor, CColor(r, g, b, a));
}

void CMappableObject::PostConstruct(const void*) { x10_transform = AdjustTransformForType(); }

void CMappableObject::Draw(int curArea, const CMapWorldInfo& mwInfo, float alpha,
                           bool needsVtxLoad) const {
  bool flag = -1 < x0_type && x0_type < 0x10;
  if (flag) {
    rstl::pair< CColor, CColor > colors = GetDoorColors(curArea, mwInfo, alpha);
    for (int i = 0; i < 6; ++i) {
      if (needsVtxLoad) {
        CGX::SetArray(GX_VA_POS, skDoorVerts, '\f');
      }
      CGX::SetTevKColor(GX_KCOLOR0, colors.first.GetGXColor());
      CGX::Begin(GX_TRIANGLESTRIP, GX_VTXFMT0, 4);
      GXPosition1x8(sDoorData[i].xc_idxA);
      GXPosition1x8(sDoorData[i].xd_idxB);
      GXPosition1x8(sDoorData[i].xe_idxC);
      GXPosition1x8(sDoorData[i].xf_idxD);
      CGX::End();

      CGX::SetTevKColor(GX_KCOLOR0, colors.second.GetGXColor());
      CGX::Begin(GX_LINESTRIP, GX_VTXFMT0, 5);
      GXPosition1x8(sDoorData[i].xc_idxA);
      GXPosition1x8(sDoorData[i].xd_idxB);
      GXPosition1x8(sDoorData[i].xf_idxD);
      GXPosition1x8(sDoorData[i].xe_idxC);
      GXPosition1x8(sDoorData[i].xc_idxA);
      CGX::End();
    }
    return;
  }

  CAssetId iconRes = kInvalidAssetId;
  CColor iconColor = CColor(0xffffffff);

  switch (x0_type) {
  case kMOT_DownArrowYellow:
    iconRes = gpTweakPlayerRes->x10_minesBreakFirstTopIcon;
    iconColor = CColor(0xffff96ff);
    break;
  case kMOT_UpArrowYellow:
    iconRes = gpTweakPlayerRes->x14_minesBreakFirstBottomIcon;
    iconColor = CColor(0xffff96ff);
    break;
  case kMOT_DownArrowGreen:
    iconRes = gpTweakPlayerRes->x10_minesBreakFirstTopIcon;
    iconColor = CColor(0x64ff96ff);
    break;
  case kMOT_UpArrowGreen:
    iconRes = gpTweakPlayerRes->x14_minesBreakFirstBottomIcon;
    iconColor = CColor(0x64ff96ff);
    break;
  case kMOT_DownArrowRed:
    iconRes = gpTweakPlayerRes->x10_minesBreakFirstTopIcon;
    iconColor = CColor(0xff6496ff);
    break;
  case kMOT_UpArrowRed:
    iconRes = gpTweakPlayerRes->x14_minesBreakFirstBottomIcon;
    iconColor = CColor(0xff6496ff);
    break;
  case kMOT_SaveStation:
    iconRes = gpTweakPlayerRes->x4_saveStationIcon;
    break;
  case kMOT_MissileStation:
    iconRes = gpTweakPlayerRes->x8_missileStationIcon;
    break;
  default:
    iconRes = gpTweakPlayerRes->xc_elevatorIcon;
    break;
  }
  TLockedToken< CTexture > tex = gpSimplePool->GetObj(SObjectTag('TXTR', iconRes));
  tex->Load(GX_TEXMAP0, CTexture::kCM_Repeat);
  CGraphics::SetTevOp(kTS_Stage0, CGraphics::kEnvModulate);
  CGraphics::StreamBegin(kP_TriangleStrip);
  CGraphics::StreamColor(iconColor.WithAlphaOf(alpha));
  CGraphics::StreamTexcoord(0.0f, 1.0f);
  CGraphics::StreamVertex(-2.6f, 0.0f, 2.6f);
  CGraphics::StreamTexcoord(0.0f, 0.0f);
  CGraphics::StreamVertex(-2.6f, 0.0f, -2.6f);
  CGraphics::StreamTexcoord(1.0f, 1.0f);
  CGraphics::StreamVertex(2.6f, 0.0f, 2.6f);
  CGraphics::StreamTexcoord(1.0f, 0.0f);
  CGraphics::StreamVertex(2.6f, 0.0f, -2.6f);
  CGraphics::StreamEnd();
}
