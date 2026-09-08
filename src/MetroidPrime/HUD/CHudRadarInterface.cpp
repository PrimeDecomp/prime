#include "MetroidPrime/HUD/CHudRadarInterface.hpp"

#include "GuiSys/CGuiCamera.hpp"
#include "GuiSys/CGuiFrame.hpp"
#include "GuiSys/CGuiWidgetDrawParms.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/Math/CAbsAngle.hpp"
#include "Kyoto/Math/CVector2f.hpp"
#include "MetaRender/CCubeRenderer.hpp"
#include "MetroidPrime/CEulerAngles.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Cameras/CGameCamera.hpp"
#include "MetroidPrime/Enemies/CWallCrawlerSwarm.hpp"
#include "MetroidPrime/Player/CGameState.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/TCastTo.hpp"
#include "MetroidPrime/Tweaks/CTweakGui.hpp"
#include "MetroidPrime/Tweaks/CTweakGuiColors.hpp"

static const char skRadarGroupWidgetName[] = "BaseWidget_RadarStuff";
static const char skReticlePaintTextureName[] = "TXTR_RadarPaint";

CHudRadarInterface::CHudRadarInterface(CGuiFrame& frame, const CStateManager& mgr)
: x0_txtrRadarPaint(gpSimplePool->GetObj(skReticlePaintTextureName))
, xc_radarStuffXf(CTransform4f::Identity())
, x3c_24_visibleGame(true)
, x3c_25_visibleDebug(true) {
  x40_BaseWidget_RadarStuff = frame.FindWidget(rstl::string_l(skRadarGroupWidgetName));
  x44_camera = frame.GetFrameCamera();
  xc_radarStuffXf = x40_BaseWidget_RadarStuff->GetO2PTransform();
  x40_BaseWidget_RadarStuff->SetColor(gpTweakGuiColors->GetRadarStuffColor());
  x0_txtrRadarPaint.Lock();
}

void CHudRadarInterface::SetIsVisibleGame(const bool visible) {
  x3c_24_visibleGame = visible;
  x40_BaseWidget_RadarStuff->SetVisibility(x3c_25_visibleDebug && x3c_24_visibleGame, kTM_Children);
}

void CHudRadarInterface::Update(float dt, const CStateManager& mgr) {
  const CPlayerState& playerState = *mgr.GetPlayerState();
  const float visorAlpha = playerState.GetCurrentVisor() == CPlayerState::kPV_Combat
                               ? playerState.GetVisorTransitionFactor()
                               : 0.f;
  x40_BaseWidget_RadarStuff->SetColor(gpTweakGuiColors->GetRadarStuffColor().WithAlphaModulatedBy(
      visorAlpha * gpGameState->GameOptions().GetHudAlpha()));
  const bool visible = IsWidgetVisibleMode(static_cast< ERadarMode >(gpTweakGui->GetHudVisMode()));
  if (x3c_25_visibleDebug != visible) {
    x3c_25_visibleDebug = !x3c_25_visibleDebug;
    x40_BaseWidget_RadarStuff->SetVisibility(x3c_25_visibleDebug && x3c_24_visibleGame,
                                             kTM_Children);
  }
  x0_txtrRadarPaint.TryCache();
}

void CHudRadarInterface::Draw(const CStateManager& mgr, float alpha) const {
  const float radarAlpha = alpha * gpGameState->GameOptions().GetHudAlpha();
  if (gpTweakGui->GetHudVisMode() == CTweakGui::kHud_Zero || !x3c_24_visibleGame) {
    return;
  }
  const CTexture* const texture = x0_txtrRadarPaint.GetObject();
  if (!texture) {
    return;
  }

  const float xyRadius = mgr.GetPlayer()->IsOverrideRadarRadius()
                             ? mgr.GetPlayer()->GetRadarXYRadiusOverride()
                             : gpTweakGui->GetRadarXYRadius();
  const float zRadius = mgr.GetPlayer()->IsOverrideRadarRadius()
                            ? mgr.GetPlayer()->GetRadarZRadiusOverride()
                            : gpTweakGui->GetRadarZRadius();
  const float zCloseRadius = mgr.GetPlayer()->IsOverrideRadarRadius()
                                 ? 0.667f * zRadius
                                 : gpTweakGui->GetRadarZCloseRadius();
  const float scopeRadius = gpTweakGui->GetRadarScopeCoordRadius();
  const float scopeScalar = scopeRadius / xyRadius;
  const float playerRadius = gpTweakGui->GetRadarPlayerPaintRadius();
  float enemyRadius = gpTweakGui->GetRadarEnemyPaintRadius();
  const CEulerAngles angles =
      CEulerAngles::FromQuaternion(mgr.GetCameraManager()->GetCurrentCamera(mgr).GetRotation());
  const CTransform4f preTranslate =
      CTransform4f::RotateY(CAbsAngle::FromRadians(angles.GetYaw()) - CAbsAngle::FromRadians(0.f));
  const CVector3f playerPos = mgr.GetPlayer()->GetTranslation();
  CTransform4f postTranslate(CTransform4f::Identity());
  x44_camera->Draw(CGuiWidgetDrawParms(0.f, CVector3f::Zero()));
  postTranslate = x40_BaseWidget_RadarStuff->GetWorldTransform();
  gpRender->SetModelMatrix(postTranslate);
  gpRender->SetBlendMode_AdditiveAlpha();
  texture->Load(GX_TEXMAP0, CTexture::kCM_Repeat);
  CGraphics::SetTevOp(kTS_Stage0, CGraphics::kEnvModulate);
  gpRender->SetDepthReadWrite(false, false);
  CGraphics::StreamColor(
      gpTweakGuiColors->GetRadarPlayerPaintColor().WithAlphaModulatedBy(radarAlpha));
  DoDrawRadarPaint(playerRadius);
  const CMaterialFilter filter =
      CMaterialFilter(CMaterialList(kMT_Target, kMT_RadarObject),
                      CMaterialList(kMT_ExcludeFromRadar), CMaterialFilter::kFT_IncludeExclude);
  CAABox bounds(CAABox::MakeMaxInvertedBox());
  const CVector3f extent(xyRadius, xyRadius, zRadius);
  bounds.AccumulateBounds(playerPos + -extent);
  bounds.AccumulateBounds(playerPos + extent);
  rstl::reserved_vector< TUniqueId, 1024 > nearList;
  mgr.BuildNearList(nearList, bounds, filter, nullptr);
  const SRadarPaintDrawParms parms(playerPos, preTranslate, postTranslate, scopeRadius, scopeScalar,
                                   radarAlpha, xyRadius, zRadius, zCloseRadius);
  int count = 0;
  for (AUTO(it, nearList.begin()); it != nearList.end(); ++it) {
    if (const CActor* const actor = TCastToConstPtr< CActor >(mgr.GetObjectById(*it))) {
      if (actor->GetActive()) {
        if (const CWallCrawlerSwarm* const swarm = TCastToConstPtr< CWallCrawlerSwarm >(actor)) {
          const int boidCount = swarm->GetBoidCount();
          const float radius = enemyRadius / 2.f;
          for (int i = 0; i < boidCount; ++i) {
            if (swarm->GetLockOnLocationValid(i)) {
              const CVector3f position = swarm->GetLockOnLocation(i);
              DrawRadarPaint(position, radius, 0.5f, parms);
            }
          }
        } else {
          DrawRadarPaint(actor->GetTranslation(), enemyRadius, 1.f, parms);
        }
        if (++count >= 128) {
          break;
        }
      }
    }
  }
  gpRender->SetDepthReadWrite(true, true);
}

void CHudRadarInterface::DrawRadarPaint(const CVector3f& enemyPos, float radius, float alpha,
                                        const SRadarPaintDrawParms& parms) const {
  const CVector2f playerPos(parms.x0_playerPos.GetX(), parms.x0_playerPos.GetY());
  const CVector2f delta(enemyPos.GetX() - parms.x0_playerPos.GetX(),
                        enemyPos.GetY() - parms.x0_playerPos.GetY());
  const float zDelta = CMath::AbsF(enemyPos.GetZ() - parms.x0_playerPos.GetZ());
  if (delta.Magnitude() <= parms.x78_xyRadius && zDelta <= parms.x7c_zRadius) {
    const float zCloseRadius = parms.x80_zCloseRadius;
    if (zDelta > zCloseRadius) {
      alpha *= 1.f - (zDelta - zCloseRadius) / (parms.x7c_zRadius - zCloseRadius);
    }
    const CVector2f enemyXY(enemyPos.GetX(), enemyPos.GetY());
    const CVector2f scopeScaled = (enemyXY - playerPos) * parms.x70_scopeScalar;
    const CVector3f position =
        parms.xc_preTranslate * CVector3f(scopeScaled.GetX(), 0.f, scopeScaled.GetY());
    gpRender->SetModelMatrix(parms.x3c_postTranslate * CTransform4f::Translate(position));
    CGraphics::StreamColor(
        gpTweakGuiColors->GetRadarEnemyPaintColor().WithAlphaModulatedBy(alpha * parms.x74_alpha));
    DoDrawRadarPaint(radius);
  }
}

void CHudRadarInterface::DoDrawRadarPaint(float radius) const {
  radius = 4.f * radius;
  CGraphics::StreamBegin(kP_TriangleStrip);
  CGraphics::StreamTexcoord(0.f, 1.f);
  CGraphics::StreamVertex(CVector3f(-radius, 0.f, radius));
  CGraphics::StreamTexcoord(0.f, 0.f);
  CGraphics::StreamVertex(CVector3f(-radius, 0.f, -radius));
  CGraphics::StreamTexcoord(1.f, 1.f);
  CGraphics::StreamVertex(CVector3f(radius, 0.f, radius));
  CGraphics::StreamTexcoord(1.f, 0.f);
  CGraphics::StreamVertex(CVector3f(radius, 0.f, -radius));
  CGraphics::StreamEnd();
}
