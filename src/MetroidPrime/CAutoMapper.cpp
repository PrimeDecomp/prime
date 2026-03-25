#include "MetroidPrime/CAutoMapper.hpp"
#include "rstl/math.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Basics/CBasics.hpp"
#include "Kyoto/CResFactory.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CModel.hpp"
#include "Kyoto/Graphics/CModelFlags.hpp"
#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/SObjectTag.hpp"
#include "Kyoto/Text/CStringTable.hpp"

#include "GuiSys/CGuiFrame.hpp"
#include "GuiSys/CGuiTextPane.hpp"
#include "GuiSys/CGuiWidgetDrawParms.hpp"

#include "MetaRender/CCubeRenderer.hpp"

#include "MetroidPrime/CControlMapper.hpp"
#include "MetroidPrime/CEulerAngles.hpp"
#include "MetroidPrime/CGameArea.hpp"
#include "MetroidPrime/CGameHintInfo.hpp"
#include "MetroidPrime/CMain.hpp"
#include "MetroidPrime/CMapArea.hpp"
#include "MetroidPrime/CMapUniverse.hpp"
#include "MetroidPrime/CMapWorld.hpp"
#include "MetroidPrime/CMapWorldInfo.hpp"
#include "MetroidPrime/CMemoryCard.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Cameras/CGameCamera.hpp"
#include "MetroidPrime/Player/CGameState.hpp"

#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/Tweaks/CTweakAutoMapper.hpp"
#include "MetroidPrime/Tweaks/CTweakGui.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayerRes.hpp"
#include "rstl/StringExtras.hpp"
#include "rstl/rc_ptr.hpp"

static const char* const skFRME_MapScreen = "FRME_MapScreen";

static inline const rstl::vector< CGameHintInfo::CGameHint >& GetGameHints() {
  return (*reinterpret_cast< TLockedToken< CGameHintInfo >* >(gpMemoryCard))->GetHints();
}

CAutoMapper::SAutoMapperRenderState::SAutoMapperRenderState(
    const CVector2i& viewportSize, const CQuaternion& camOrientation, float camDist, float camAngle,
    const CVector3f& areaPoint, float drawDepth1, float drawDepth2, float alphaSurfaceVisited,
    float alphaOutlineVisited, float alphaSurfaceUnvisited, float alphaOutlineUnvisited)
: x0_viewportSize(viewportSize)
, x8_camOrientation(camOrientation)
, x18_camDist(camDist)
, x1c_camAngle(camAngle)
, x20_areaPoint(areaPoint)
, x2c_drawDepth1(drawDepth1)
, x30_drawDepth2(drawDepth2)
, x34_alphaSurfaceVisited(alphaSurfaceVisited)
, x38_alphaOutlineVisited(alphaOutlineVisited)
, x3c_alphaSurfaceUnvisited(alphaSurfaceUnvisited)
, x40_alphaOutlineUnvisited(alphaOutlineUnvisited)
, x44_viewportEase(kE_None)
, x48_camEase(kE_None)
, x4c_pointEase(kE_None)
, x50_depth1Ease(kE_None)
, x54_depth2Ease(kE_None)
, x58_alphaEase(kE_None) {}

// TODO: what is this?
static inline float Lerp(float a, float b, float t) { return a * (1.f - t) + b * t; }

void CAutoMapper::SAutoMapperRenderState::InterpolateWithClamp(const SAutoMapperRenderState& a,
                                                               SAutoMapperRenderState& out,
                                                               const SAutoMapperRenderState& b,
                                                               float t) {
  float ct = CMath::Clamp(0.f, t, 1.f);
  float easeIn = CMath::Clamp(0.f, ct * ct * ct, 1.f);
  float omt = 1.f - ct;
  float omtCubed = omt * omt * omt;
  float easeOut = CMath::Clamp(0.f, 1.f - omtCubed, 1.f);

  float easeInOut;
  if (ct >= 0.5f) {
    easeInOut = CMath::Clamp(0.f, 0.5f * CMath::SqrtF(2.f * ct - 1.f) + 0.5f, 1.f);
  } else {
    easeInOut = CMath::Clamp(0.f, 1.f - (0.5f * CMath::SqrtF(2.f * omt - 1.f) + 0.5f), 1.f);
  }

  float eases[5] = {0.f, ct, easeOut, easeIn, easeInOut};

  if (b.x44_viewportEase != kE_None) {
    float easeB = eases[b.x44_viewportEase];
    out.x0_viewportSize = CVector2i::Lerp(a.x0_viewportSize, b.x0_viewportSize, easeB);
  }

  if (b.x48_camEase != kE_None) {
    float easeB = eases[b.x48_camEase];
    out.x8_camOrientation = CQuaternion::Slerp(a.x8_camOrientation, b.x8_camOrientation, easeB);
    out.x18_camDist = Lerp(a.x18_camDist, b.x18_camDist, easeB);
    out.x1c_camAngle = Lerp(a.x1c_camAngle, b.x1c_camAngle, easeB);
  }

  if (b.x4c_pointEase != kE_None) {
    float eB = eases[b.x4c_pointEase];
    out.x20_areaPoint = CVector3f::Lerp(a.x20_areaPoint, b.x20_areaPoint, eB);
  }

  if (b.x50_depth1Ease != kE_None) {
    float eB = eases[b.x50_depth1Ease];
    out.x2c_drawDepth1 = Lerp(a.x2c_drawDepth1, b.x2c_drawDepth1, eB);
  }

  if (b.x54_depth2Ease != kE_None) {
    float eB = eases[b.x54_depth2Ease];
    out.x30_drawDepth2 = Lerp(a.x30_drawDepth2, b.x30_drawDepth2, eB);
  }

  if (b.x58_alphaEase != kE_None) {
    float eB = eases[b.x58_alphaEase];
    out.x34_alphaSurfaceVisited = Lerp(a.x34_alphaSurfaceVisited, b.x34_alphaSurfaceVisited, eB);
    out.x38_alphaOutlineVisited = Lerp(a.x38_alphaOutlineVisited, b.x38_alphaOutlineVisited, eB);
    out.x3c_alphaSurfaceUnvisited =
        Lerp(a.x3c_alphaSurfaceUnvisited, b.x3c_alphaSurfaceUnvisited, eB);
    out.x40_alphaOutlineUnvisited =
        Lerp(a.x40_alphaOutlineUnvisited, b.x40_alphaOutlineUnvisited, eB);
  }
}

void CAutoMapper::SAutoMapperRenderState::ResetInterpolation() {
  x44_viewportEase = kE_None;
  x48_camEase = kE_None;
  x4c_pointEase = kE_None;
  x50_depth1Ease = kE_None;
  x54_depth2Ease = kE_None;
  x58_alphaEase = kE_None;
}

CAutoMapper::SAutoMapperHintLocation::SAutoMapperHintLocation(uint showBeacon, float beaconAlpha,
                                                              CAssetId worldId, TAreaId areaId)
: x0_showBeacon(showBeacon), x4_beaconAlpha(beaconAlpha), x8_worldId(worldId), xc_areaId(areaId) {}

CAutoMapper::CAutoMapper(CStateManager& stateMgr)
: x4_loadPhase(kLP_LoadResources)
, x8_mapu(gpSimplePool->GetObj("MAPU_MapUniverse"))
, x14_dummyWorlds()
, x24_world(stateMgr.World())
, x28_frmeMapScreen()
, x2c_frmeInitialized(nullptr)
, x30_miniMapSamus(gpSimplePool->GetObj("CMDL_MiniMapSamus"))
, x3c_hintBeacon(gpSimplePool->GetObj("TXTR_HintBeacon"))
, x48_mapIcons()
, x74_areaHintDescId(kInvalidAssetId)
, x78_areaHintDesc()
, x88_mapAreaStringId(kInvalidAssetId)
, x8c_mapAreaString()
, x9c_worldIdx(0)
, xa0_curAreaId(x24_world->IGetCurrentAreaId())
, xa4_otherAreaId(xa0_curAreaId)
, xa8_renderState0(BuildMiniMapWorldRenderState(
      stateMgr,
      CQuaternion::FromMatrix(
          stateMgr.GetCameraManager()->GetCurrentCamera(stateMgr).GetTransform()),
      xa0_curAreaId.value))
, x104_renderState1(xa8_renderState0)
, x160_renderState2(xa8_renderState0)
, x1bc_state(kAMS_MiniMap)
, x1c0_nextState(kAMS_MiniMap)
, x1c4_interpDur(0.f)
, x1c8_interpTime(0.f)
, x1cc_panningSfx()
, x1d0_rotatingSfx()
, x1d4_zoomingSfx()
, x1d8_flashTimer(0.f)
, x1dc_playerFlashPulse(0.f)
, x1e0_hintSteps()
, x1f8_hintLocations()
, x210_lstick()
, x25c_cstick()
, x2a8_ltrigger()
, x2bc_rtrigger()
, x2d0_abutton()
, x2e4_lStickPos(0)
, x2e8_rStickPos(0)
, x2ec_lTriggerPos(0)
, x2f0_rTriggerPos(0)
, x2f4_aButtonPos(0)
, x2f8_textpane_areaname(NULL)
, x2fc_textpane_hint(NULL)
, x300_textpane_instructions(NULL)
, x304_textpane_instructions1(NULL)
, x308_textpane_instructions2(NULL)
, x30c_basewidget_leftPane(NULL)
, x310_basewidget_yButtonPane(NULL)
, x314_basewidget_bottomPane(NULL)
, x318_leftPanePos(0.f)
, x31c_yButtonPanePos(0.f)
, x320_bottomPanePos(0.f)
, x324_zoomState(kZS_None)
, x328_(0)
, x32c_loadingDummyWorld(false) {
  x8_mapu.Lock();
  x30_miniMapSamus.Lock();
  x3c_hintBeacon.Lock();

  x48_mapIcons.push_back(
      gpSimplePool->GetObj(SObjectTag('TXTR', gpTweakPlayerRes->x4_saveStationIcon)));
  x48_mapIcons.push_back(
      gpSimplePool->GetObj(SObjectTag('TXTR', gpTweakPlayerRes->x8_missileStationIcon)));
  x48_mapIcons.push_back(
      gpSimplePool->GetObj(SObjectTag('TXTR', gpTweakPlayerRes->xc_elevatorIcon)));
  x48_mapIcons.push_back(
      gpSimplePool->GetObj(SObjectTag('TXTR', gpTweakPlayerRes->x10_minesBreakFirstTopIcon)));
  x48_mapIcons.push_back(
      gpSimplePool->GetObj(SObjectTag('TXTR', gpTweakPlayerRes->x14_minesBreakFirstBottomIcon)));

  for (CToken* it = x48_mapIcons.begin(); it != x48_mapIcons.end(); ++it) {
    it->Lock();
  }

  for (int i = 0; i < 9; ++i) {
    x210_lstick.push_back(gpSimplePool->GetObj(
        SObjectTag('TXTR', ((const CAssetId*)((const char*)gpTweakPlayerRes + 0x24))[i])));
    x25c_cstick.push_back(gpSimplePool->GetObj(
        SObjectTag('TXTR', ((const CAssetId*)((const char*)gpTweakPlayerRes + 0x4c))[i])));
  }

  for (int i = 0; i < 2; ++i) {
    x2a8_ltrigger.push_back(gpSimplePool->GetObj(
        SObjectTag('TXTR', ((const CAssetId*)((const char*)gpTweakPlayerRes + 0x74))[i])));
    x2bc_rtrigger.push_back(gpSimplePool->GetObj(
        SObjectTag('TXTR', ((const CAssetId*)((const char*)gpTweakPlayerRes + 0x80))[i])));
    x2d0_abutton.push_back(gpSimplePool->GetObj(
        SObjectTag('TXTR', ((const CAssetId*)((const char*)gpTweakPlayerRes + 0x98))[i])));
  }
}

template < class T >
void CAutoMapper::SetResLockState(T& list, bool lock) {
  CToken* it = list.data();
  for (; it != list.data() + list.size(); ++it) {
    if (lock) {
      it->Lock();
    } else {
      it->Unlock();
    }
  }
}

CAutoMapper::~CAutoMapper() { CSfxManager::KillAll(CSfxManager::kSC_PauseScreen); }

bool CAutoMapper::CheckLoadComplete() {
  switch (x4_loadPhase) {
  case kLP_LoadResources: {
    CToken* iconIt = x48_mapIcons.data();
    CToken* iconEnd = iconIt + x48_mapIcons.size();
    for (; iconIt != iconEnd; ++iconIt) {
      if (!iconIt->IsLoaded())
        return false;
    }
    if (x30_miniMapSamus.TryCache()) {
      if (x3c_hintBeacon.TryCache()) {
        x4_loadPhase = kLP_LoadUniverse;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
  case kLP_LoadUniverse: {
    if (x8_mapu.TryCache()) {
      int numWorlds = x8_mapu.GetObject()->GetNumMapWorldDatas();
      rstl::auto_ptr< IWorld > dummy;
      rstl::vector< rstl::auto_ptr< IWorld > > worlds(numWorlds, dummy);
      x14_dummyWorlds = worlds;
      SetCurWorldAssetId(x24_world->IGetWorldAssetId());
      x4_loadPhase = kLP_Done;
    } else {
      return false;
    }
  }
  case kLP_Done:
    return true;
  default:
    return false;
  }
}

void CAutoMapper::SetupHintNavigation() {
  if (!gpGameState->GameOptions().GetIsHintSystemEnabled())
    return;

  rstl::list< SAutoMapperHintStep >::iterator stepEnd = x1e0_hintSteps.end();
  rstl::list< SAutoMapperHintStep >::iterator stepIt = x1e0_hintSteps.begin();
  while (stepIt != stepEnd) {
    stepIt = x1e0_hintSteps.erase(stepIt);
  }

  rstl::list< SAutoMapperHintLocation >::iterator locEnd = x1f8_hintLocations.end();
  rstl::list< SAutoMapperHintLocation >::iterator locIt = x1f8_hintLocations.begin();
  while (locIt != locEnd) {
    locIt = x1f8_hintLocations.erase(locIt);
  }

  CHintOptions& hintOpts = gpGameState->HintOptions();
  const SHintState* curHint = hintOpts.GetCurrentDisplayedHint();
  bool navigating = false;
  if (curHint != NULL && const_cast< SHintState* >(curHint)->CanContinue()) {
    navigating = true;
    x1e0_hintSteps.push_back(SAutoMapperHintStep(SAutoMapperHintStep::kHST_ShowBeacon, 0.75f));

    int nextIdx = hintOpts.GetNextHintIdx();
    const CGameHintInfo::CGameHint& nextHint = GetGameHints()[nextIdx];
    CAssetId curMlvl = x24_world->IGetWorldAssetId();
    const rstl::vector< CGameHintInfo::SHintLocation >& locs = nextHint.GetLocations();
    for (int i = 0; i < static_cast< int >(locs.size()); ++i) {
      const CGameHintInfo::SHintLocation& loc = locs[i];
      if (loc.x0_mlvlId != curMlvl) {
        x1e0_hintSteps.push_back(
            SAutoMapperHintStep(SAutoMapperHintStep::kHST_SwitchToUniverse, 0));
        x1e0_hintSteps.push_back(SAutoMapperHintStep(SAutoMapperHintStep::kHST_PanToWorld,
                                                     static_cast< int >(loc.x0_mlvlId)));
        x1e0_hintSteps.push_back(SAutoMapperHintStep(SAutoMapperHintStep::kHST_SwitchToWorld,
                                                     static_cast< int >(loc.x0_mlvlId)));
        curMlvl = loc.x0_mlvlId;
      } else {
        x1e0_hintSteps.push_back(SAutoMapperHintStep(SAutoMapperHintStep::kHST_ZoomOut, 0));
      }
      x1e0_hintSteps.push_back(
          SAutoMapperHintStep(SAutoMapperHintStep::kHST_PanToArea, loc.x8_areaId.value));
      x1e0_hintSteps.push_back(SAutoMapperHintStep(SAutoMapperHintStep::kHST_ZoomIn, 0));
      x1e0_hintSteps.push_back(SAutoMapperHintStep(SAutoMapperHintStep::kHST_ShowBeacon, 1.f));
      x1f8_hintLocations.push_back(SAutoMapperHintLocation(0, 0.f, loc.x0_mlvlId, loc.x8_areaId));
    }
  }

  const rstl::vector< SHintState >& hintStates = hintOpts.GetHintStates();
  for (int i = 0; i < static_cast< int >(hintStates.size()); ++i) {
    if (navigating && hintOpts.GetNextHintIdx() == i)
      continue;
    if (hintStates[i].x0_state != kHS_Displaying)
      continue;
    const CGameHintInfo::CGameHint& hint = GetGameHints()[i];
    const rstl::vector< CGameHintInfo::SHintLocation >& locs = hint.GetLocations();
    for (int j = 0; j < static_cast< int >(locs.size()); ++j) {
      x1f8_hintLocations.push_back(
          SAutoMapperHintLocation(1, 1.f, locs[j].x0_mlvlId, locs[j].x8_areaId));
    }
  }
}

void CAutoMapper::OnNewInGameGuiState(EInGameGuiState state, CStateManager& mgr) {
  if (state == kIGGS_MapScreen) {
    CMain::EnsureWorldPaksReady();
    CWorld* wld = mgr.World();
    wld->GetMapWorld()->SetWhichMapAreasLoaded(*wld, 0, 9999);
    SetupHintNavigation();
    BeginMapperStateTransition(kAMS_MapScreen, mgr);
    x28_frmeMapScreen = rs_new TCachedToken< CGuiFrame >(gpSimplePool->GetObj(skFRME_MapScreen));
    x28_frmeMapScreen->Lock();
    SetResLockState(x210_lstick, true);
    SetResLockState(x25c_cstick, true);
    SetResLockState(x2a8_ltrigger, true);
    SetResLockState(x2bc_rtrigger, true);
    SetResLockState(x2d0_abutton, true);
  } else {
    CMain::EnsureWorldPakReady(gpGameState->CurrentWorldAssetId());
    if (x1bc_state == kAMS_MapScreenUniverse || x24_world == mgr.GetWorld()) {
      BeginMapperStateTransition(kAMS_MiniMap, mgr);
      x328_ = 0;
    }
    LeaveMapScreenState();
  }
}

bool CAutoMapper::CanLeaveMapScreen(const CStateManager& mgr) const {
  bool ret = false;
  if (x328_ == 3 && CanLeaveMapScreenInternal(mgr))
    ret = true;
  return ret;
}

bool CAutoMapper::CanLeaveMapScreenInternal(const CStateManager& mgr) const {
  if (!NotHintNavigating())
    return false;
  if (IsRenderStateInterpolating())
    return false;
  if (IsInMapperState(kAMS_MapScreenUniverse))
    return true;
  bool ret = false;
  if (x24_world == mgr.GetWorld() && IsInMapperState(kAMS_MapScreen))
    ret = true;
  return ret;
}

bool CAutoMapper::NotHintNavigating() const { return x1e0_hintSteps.empty(); }

void CAutoMapper::UnmuteAllLoopedSounds() {
  CSfxManager::SfxVolume(x1cc_panningSfx, 127);
  CSfxManager::SfxVolume(x1d0_rotatingSfx, 127);
  CSfxManager::SfxVolume(x1d4_zoomingSfx, 127);
}

bool CAutoMapper::HasCurrentMapUniverseWorld() {
  CMapUniverse* mapu = x8_mapu.GetObject();
  CAssetId mlvlId = x24_world->IGetWorldAssetId();
  int numWorlds = mapu->GetNumMapWorldDatas();
  for (int i = 0; i < numWorlds; ++i) {
    if (mapu->GetMapWorldData(i).GetWorldAssetId() == mlvlId)
      return true;
  }
  return false;
}

bool CAutoMapper::CheckDummyWorldLoad(const CStateManager& mgr) {
  uint worldIdx = x9c_worldIdx;
  IWorld* dummyWorld = x14_dummyWorlds[worldIdx].get();
  const CMapUniverse::CMapWorldData& mapuWld = x8_mapu.GetObject()->GetMapWorldData(worldIdx);
  if (dummyWorld != NULL) {
    if (dummyWorld->ICheckWorldComplete()) {
      CWorldState& worldState = gpGameState->StateForWorld(dummyWorld->IGetWorldAssetId());
      CMapWorldInfo* mwInfo = worldState.GetMapWorldInfo().GetPtr();

      CVector3f localPoint(mapuWld.GetWorldTransform().GetQuickInverse() *
                           xa8_renderState0.x20_areaPoint);
      CMatrix3f camRot(xa8_renderState0.x8_camOrientation.BuildTransform());
      CVector3f camDir = camRot.GetColumn(kDY);
      CUnitVector3f unitDir(camDir.GetX(), camDir.GetY(), camDir.GetZ());
      int aid = FindClosestVisibleArea(localPoint, unitDir, mgr, *dummyWorld, *mwInfo);
      if (aid != -1) {
        xa0_curAreaId = aid;
        dummyWorld->IMapWorld()->RecalculateWorldSphere(*mwInfo, *dummyWorld);
        x24_world = dummyWorld;
        BeginMapperStateTransition(kAMS_MapScreen, mgr);
        x32c_loadingDummyWorld = false;
        return true;
      }
      x32c_loadingDummyWorld = false;
      return false;
    }
    return true;
  }
  x32c_loadingDummyWorld = false;
  return false;
}

void CAutoMapper::UpdateHintNavigation(float dt, const CStateManager& mgr) {
  SAutoMapperHintStep& nextStep = *x1e0_hintSteps.begin();
  float beaconTime = nextStep.x4_float;
  bool oldProcessing = nextStep.x8_processing;
  nextStep.x8_processing = true;
  switch (nextStep.x0_type) {
  case SAutoMapperHintStep::kHST_PanToArea: {
    int areaId = nextStep.x4_areaId.value;
    const CMapWorld* mapWorld = x24_world->IGetMapWorld();
    if (mapWorld->GetMapArea(areaId) != NULL) {
      x160_renderState2 = xa8_renderState0;
      x104_renderState1.x20_areaPoint = GetAreaPointOfInterest(mgr, areaId);
      x104_renderState1.ResetInterpolation();
      x104_renderState1.x4c_pointEase = SAutoMapperRenderState::kE_Linear;
      ResetInterpolationTimer(2.f * gpTweakAutoMapper->x6c_hintPanTime);
      x1e0_hintSteps.pop_front();
    }
    break;
  }
  case SAutoMapperHintStep::kHST_PanToWorld: {
    const CMapUniverse::CMapWorldData& mwData =
        x8_mapu.GetObject()->GetMapWorldDataByWorldId(nextStep.x4_worldId);
    CVector3f centerPoint = mwData.GetWorldCenterPoint();
    x160_renderState2 = xa8_renderState0;
    x104_renderState1.x20_areaPoint = centerPoint;
    x104_renderState1.ResetInterpolation();
    x104_renderState1.x4c_pointEase = SAutoMapperRenderState::kE_Linear;
    ResetInterpolationTimer(2.f * gpTweakAutoMapper->x6c_hintPanTime);
    x1e0_hintSteps.pop_front();
    break;
  }
  case SAutoMapperHintStep::kHST_SwitchToUniverse: {
    if (HasCurrentMapUniverseWorld()) {
      BeginMapperStateTransition(kAMS_MapScreenUniverse, mgr);
      x1e0_hintSteps.pop_front();
    } else {
      rstl::list< SAutoMapperHintStep >::iterator end = x1e0_hintSteps.end();
      rstl::list< SAutoMapperHintStep >::iterator it = x1e0_hintSteps.begin();
      while (it != end) {
        it = x1e0_hintSteps.erase(it);
      }
    }
    break;
  }
  case SAutoMapperHintStep::kHST_SwitchToWorld: {
    x1e0_hintSteps.pop_front();
    x32c_loadingDummyWorld = true;
    if (!CheckDummyWorldLoad(mgr)) {
      rstl::list< SAutoMapperHintStep >::iterator end = x1e0_hintSteps.end();
      rstl::list< SAutoMapperHintStep >::iterator it = x1e0_hintSteps.begin();
      while (it != end) {
        it = x1e0_hintSteps.erase(it);
      }
    }
    break;
  }
  case SAutoMapperHintStep::kHST_ShowBeacon: {
    if (!oldProcessing) {
      if (xa0_curAreaId == mgr.GetNextAreaId() && x24_world == mgr.GetWorld()) {
        CSfxManager::SfxStart(0x56a, 127, 64, false, CSfxManager::kMedPriority, false,
                              CSfxManager::kAllAreas);
      } else {
        CSfxManager::SfxStart(0x56b, 127, 64, false, CSfxManager::kMedPriority, false,
                              CSfxManager::kAllAreas);
      }
    }
    beaconTime -= dt;
    if (beaconTime <= 0.f)
      beaconTime = 0.f;
    nextStep.x4_float = beaconTime;
    rstl::list< SAutoMapperHintLocation >::iterator locIt = x1f8_hintLocations.begin();
    for (; locIt != x1f8_hintLocations.end(); ++locIt) {
      if (x24_world->IGetWorldAssetId() == locIt->x8_worldId && xa0_curAreaId == locIt->xc_areaId) {
        locIt->x0_showBeacon = 1;
        float alpha = beaconTime / 0.5f;
        if (alpha >= 1.f)
          alpha = 1.f;
        locIt->x4_beaconAlpha = 1.f - alpha;
        break;
      }
    }
    if (0.f == beaconTime) {
      x1e0_hintSteps.pop_front();
    }
    break;
  }
  case SAutoMapperHintStep::kHST_ZoomOut: {
    x160_renderState2 = xa8_renderState0;
    x104_renderState1.x18_camDist = gpTweakAutoMapper->x10_maxCamDist;
    x104_renderState1.ResetInterpolation();
    x104_renderState1.x48_camEase = SAutoMapperRenderState::kE_Linear;
    ResetInterpolationTimer(0.5f);
    x1e0_hintSteps.pop_front();
    break;
  }
  case SAutoMapperHintStep::kHST_ZoomIn: {
    x160_renderState2 = xa8_renderState0;
    x104_renderState1.x18_camDist = gpTweakAutoMapper->x8_camDist;
    x104_renderState1.ResetInterpolation();
    x104_renderState1.x48_camEase = SAutoMapperRenderState::kE_Linear;
    ResetInterpolationTimer(0.5f);
    x1e0_hintSteps.pop_front();
    break;
  }
  default:
    break;
  }
}

void CAutoMapper::ProcessControllerInput(const CFinalInput& input, const CStateManager& mgr) {
  if (!IsRenderStateInterpolating()) {
    bool inPlayerControl =
        IsInMapperState(kAMS_MapScreen) || IsInMapperState(kAMS_MapScreenUniverse);
    if (inPlayerControl) {
      if (x32c_loadingDummyWorld) {
        CheckDummyWorldLoad(mgr);
      } else if (static_cast< int >(x1e0_hintSteps.size()) > 0) {
        UpdateHintNavigation(input.Time(), mgr);
      } else if (x328_ == 0) {
        ProcessMapScreenInput(input, mgr);
      }
    }
  }

  CMatrix3f camRot = xa8_renderState0.x8_camOrientation.BuildTransform();
  if (IsInMapperState(kAMS_MapScreen)) {
    CWorldState& worldState = gpGameState->StateForWorld(x24_world->IGetWorldAssetId());
    CMapWorldInfo* mwInfo = worldState.GetMapWorldInfo().GetPtr();
    CVector3f camDir = camRot.GetColumn(kDY);
    CUnitVector3f unitDir(camDir.GetX(), camDir.GetY(), camDir.GetZ());
    int aid =
        FindClosestVisibleArea(xa8_renderState0.x20_areaPoint, unitDir, mgr, *x24_world, *mwInfo);
    if (aid != xa0_curAreaId.value) {
      xa0_curAreaId = aid;
      xa8_renderState0.x2c_drawDepth1 = GetMapAreaMaxDrawDepth(mgr, xa0_curAreaId.value);
      xa8_renderState0.x30_drawDepth2 = GetMapAreaMaxDrawDepth(mgr, xa0_curAreaId.value);
    }
  } else if (IsInMapperState(kAMS_MapScreenUniverse)) {
    CMapUniverse* mapu = x8_mapu.GetObject();
    uint oldWldIdx = x9c_worldIdx;
    if (static_cast< int >(x1e0_hintSteps.size()) > 0) {
      SAutoMapperHintStep& nextStep = *x1e0_hintSteps.begin();
      if (nextStep.x0_type == SAutoMapperHintStep::kHST_PanToWorld ||
          nextStep.x0_type == SAutoMapperHintStep::kHST_SwitchToWorld) {
        SetCurWorldAssetId(nextStep.x4_worldId);
      } else {
        CVector3f camDir = camRot.GetColumn(kDY);
        CUnitVector3f unitDir(camDir.GetX(), camDir.GetY(), camDir.GetZ());
        SClosestWorldResult result =
            FindClosestVisibleWorld(xa8_renderState0.x20_areaPoint, unitDir, mgr);
        x9c_worldIdx = result.x0_worldIdx;
      }
    } else {
      CVector3f camDir = camRot.GetColumn(kDY);
      CUnitVector3f unitDir(camDir.GetX(), camDir.GetY(), camDir.GetZ());
      SClosestWorldResult result =
          FindClosestVisibleWorld(xa8_renderState0.x20_areaPoint, unitDir, mgr);
      x9c_worldIdx = result.x0_worldIdx;
    }

    if (x9c_worldIdx != oldWldIdx) {
      CAssetId curMlvl = gpGameState->CurrentWorldAssetId();
      for (uint i = 0; static_cast< int >(i) < static_cast< int >(x14_dummyWorlds.size()); ++i) {
        const CMapUniverse::CMapWorldData& mwData = mapu->GetMapWorldData(i);
        if (i == x9c_worldIdx && curMlvl != mwData.GetWorldAssetId()) {
          if (gpResourceFactory->CanBuild(SObjectTag('MLVL', mwData.GetWorldAssetId()))) {
            CDummyWorld* dw = rs_new CDummyWorld(mwData.GetWorldAssetId());
            rstl::auto_ptr< IWorld > newWorld(dw);
            x14_dummyWorlds[i] = newWorld;
          }
        } else {
          rstl::auto_ptr< IWorld > emptyWorld;
          x14_dummyWorlds[i] = emptyWorld;
        }
      }
      if (curMlvl == mapu->GetMapWorldData(x9c_worldIdx).GetWorldAssetId()) {
        x24_world = const_cast< CWorld* >(mgr.GetWorld());
      } else {
        x24_world = NULL;
      }
    }
  }

  if (x300_textpane_instructions != NULL) {
    if (x78_areaHintDesc.valid() && x78_areaHintDesc->TryCache()) {
      x2fc_textpane_hint->TextSupport().SetText(
          rstl::wstring(x78_areaHintDesc->GetObject()->GetString(0)));
      x304_textpane_instructions1->TextSupport().SetText(rstl::wstring_l(L""));
      x300_textpane_instructions->TextSupport().SetText(rstl::wstring_l(L""));
      x308_textpane_instructions2->TextSupport().SetText(rstl::wstring_l(L""));
    } else {
      x2fc_textpane_hint->TextSupport().SetText(rstl::wstring_l(L""));

      const wchar_t imagePrefix[] = L"&image=";
      const wchar_t imageSuffix[] = L";";
      CStringTable* strTable = gpStringTable;

      rstl::wstring string;
      string.reserve(0x100);
      string.append(imagePrefix, -1);
      {
        rstl::string hexStr(
            CBasics::Stringize("SI,0.6,1.0,%8.8X", gpTweakPlayerRes->x24_lStick[x2e4_lStickPos]));
        string.append(CStringExtras::ConvertToUNICODE(hexStr));
      }
      string.append(imageSuffix, -1);
      string.append(strTable->GetString(0x2e), -1);
      x300_textpane_instructions->TextSupport().SetText(string);

      string.assign(imagePrefix, -1);
      {
        rstl::string hexStr(
            CBasics::Stringize("SI,0.6,1.0,%8.8X", gpTweakPlayerRes->x4c_cStick[x2e8_rStickPos]));
        string.append(CStringExtras::ConvertToUNICODE(hexStr));
      }
      string.append(imageSuffix, -1);
      string.append(strTable->GetString(0x2f), -1);
      x304_textpane_instructions1->TextSupport().SetText(string);

      string.assign(imagePrefix, -1);
      {
        rstl::string hexStr(
            CBasics::Stringize("%8.8X", gpTweakPlayerRes->x74_lTrigger[x2ec_lTriggerPos]));
        string.append(CStringExtras::ConvertToUNICODE(hexStr));
      }
      string.append(imageSuffix, -1);
      string.append(strTable->GetString(0x30), -1);
      string.append(imagePrefix, -1);
      {
        rstl::string hexStr(
            CBasics::Stringize("%8.8X", gpTweakPlayerRes->x80_rTrigger[x2f0_rTriggerPos]));
        string.append(CStringExtras::ConvertToUNICODE(hexStr));
      }
      string.append(imageSuffix, -1);
      x308_textpane_instructions2->TextSupport().SetText(string);
    }
  }

  if (input.PY()) {
    CSystemState& sysState = gpGameState->SystemState();
    int keyState = sysState.GetAutoMapperKeyState();
    if (keyState == 0) {
      sysState.SetAutoMapperKeyState(1);
      CSfxManager::SfxStart(0x5ac, 127, 64, false, CSfxManager::kMedPriority, false,
                            CSfxManager::kAllAreas);
    } else if (keyState == 1) {
      sysState.SetAutoMapperKeyState(2);
      CSfxManager::SfxStart(0x5a6, 127, 64, false, CSfxManager::kMedPriority, false,
                            CSfxManager::kAllAreas);
    } else if (keyState == 2) {
      sysState.SetAutoMapperKeyState(0);
      CSfxManager::SfxStart(0x5ad, 127, 64, false, CSfxManager::kMedPriority, false,
                            CSfxManager::kAllAreas);
    }
  }

  if ((input.PZ() || input.PB()) && x328_ == 0) {
    if (CanLeaveMapScreenInternal(mgr)) {
      LeaveMapScreen(mgr);
    } else if (NotHintNavigating()) {
      BeginMapperStateTransition(kAMS_MapScreenUniverse, mgr);
      x328_ = 1;
    }
  }
}

void CAutoMapper::ProcessMapScreenInput(const CFinalInput& input, const CStateManager& mgr) {
  CMatrix3f camRot(xa8_renderState0.x8_camOrientation.BuildTransform());
  if (x1bc_state == kAMS_MapScreen) {
    if (input.PA() && x328_ == 0) {
      if (HasCurrentMapUniverseWorld()) {
        BeginMapperStateTransition(kAMS_MapScreenUniverse, mgr);
      }
    }
  } else if (x1bc_state == kAMS_MapScreenUniverse && input.PA()) {
    const CMapUniverse::CMapWorldData& mapuWld = x8_mapu.GetObject()->GetMapWorldData(x9c_worldIdx);
    CVector3f pointLocal =
        mapuWld.GetWorldTransform().GetQuickInverse() * xa8_renderState0.x20_areaPoint;
    if (mapuWld.GetWorldAssetId() != gpGameState->CurrentWorldAssetId()) {
      x32c_loadingDummyWorld = true;
      CheckDummyWorldLoad(mgr);
    } else {
      x24_world = const_cast< CWorld* >(mgr.GetWorld());
      CWorldState& worldState = gpGameState->StateForWorld(x24_world->IGetWorldAssetId());
      CMapWorldInfo* mwInfo = worldState.GetMapWorldInfo().GetPtr();
      CVector3f camDir = camRot.GetColumn(kDY);
      xa0_curAreaId.value = FindClosestVisibleArea(
          pointLocal, CUnitVector3f(camDir.GetX(), camDir.GetY(), camDir.GetZ()), mgr, *x24_world,
          *mwInfo);
      BeginMapperStateTransition(kAMS_MapScreen, mgr);
    }
  }

  x2f4_aButtonPos = 0;
  if (input.PA()) {
    x2f4_aButtonPos = 1;
  }

  bool inPlayerControl = false;
  if (IsInMapperState(kAMS_MapScreen) || IsInMapperState(kAMS_MapScreenUniverse)) {
    inPlayerControl = true;
  }
  if (inPlayerControl) {
    x2e4_lStickPos = 0;
    x2e8_rStickPos = 0;
    x2ec_lTriggerPos = 0;
    x2f0_rTriggerPos = 0;
    ProcessMapRotateInput(input, mgr);
    ProcessMapZoomInput(input, mgr);
    ProcessMapPanInput(input, mgr);
  }
}

void CAutoMapper::ProcessMapRotateInput(const CFinalInput& input, const CStateManager& mgr) {
  float up = ControlMapper::GetAnalogInput(ControlMapper::kC_MapCircleUp, input);
  float down = ControlMapper::GetAnalogInput(ControlMapper::kC_MapCircleDown, input);
  float left = ControlMapper::GetAnalogInput(ControlMapper::kC_MapCircleLeft, input);
  float right = ControlMapper::GetAnalogInput(ControlMapper::kC_MapCircleRight, input);

  int flags = 0;
  if (up > 0.f)
    flags += 2;
  if (down > 0.f)
    flags += 1;
  if (left > 0.f)
    flags += 4;
  if (right > 0.f)
    flags += 8;

  switch (flags) {
  case 1:
    x2e4_lStickPos = 1;
    break;
  case 2:
    x2e4_lStickPos = 5;
    break;
  case 4:
    x2e4_lStickPos = 3;
    break;
  case 5:
    x2e4_lStickPos = 2;
    break;
  case 6:
    x2e4_lStickPos = 4;
    break;
  case 8:
    x2e4_lStickPos = 7;
    break;
  case 9:
    x2e4_lStickPos = 8;
    break;
  case 10:
    x2e4_lStickPos = 6;
    break;
  default:
    break;
  }

  float maxMag = up;
  int dirSlot = 0;
  if (down > up) {
    maxMag = down;
    dirSlot = 1;
  }
  if (left > maxMag) {
    maxMag = left;
    dirSlot = 2;
  }
  if (right > maxMag) {
    maxMag = right;
    dirSlot = 3;
  }

  float dirs2 = 0.f;
  float dirs0 = 0.f;
  float dirs1 = 0.f;
  float dirs3 = 0.f;
  switch (dirSlot) {
  case 0:
    dirs0 = maxMag;
    break;
  case 1:
    dirs1 = maxMag;
    break;
  case 2:
    dirs2 = maxMag;
    break;
  case 3:
    dirs3 = maxMag;
    break;
  default:
    break;
  }

  if (dirs0 > 0.f || dirs1 > 0.f || dirs2 > 0.f || dirs3 > 0.f) {
    float deltaFrames = 60.f * input.Time();
    SetShouldRotatingSoundBePlaying(true);
    float minCamRotateX = gpTweakAutoMapper->x14_minCamRotateX;
    float maxCamRotateX = gpTweakAutoMapper->x18_maxCamRotateX;
    CEulerAngles eulers = CEulerAngles::FromQuaternion(xa8_renderState0.x8_camOrientation);
    CRelAngle angX(CMath::ClampRadians(eulers.GetX()));
    CRelAngle angZ(CMath::ClampRadians(eulers.GetZ()));

    float dt = deltaFrames * gpTweakAutoMapper->x74_rotateDegPerFrame;

    angZ -= CRelAngle::FromDegrees(dt * dirs2);
    angZ = CRelAngle(CMath::ClampRadians(angZ.AsRadians()));
    angZ += CRelAngle::FromDegrees(dt * dirs3);
    angZ = CRelAngle(CMath::ClampRadians(angZ.AsRadians()));

    angX -= CRelAngle::FromDegrees(dt * dirs0);
    angX = CRelAngle(CMath::ClampRadians(angX.AsRadians()));
    angX += CRelAngle::FromDegrees(dt * dirs1);
    angX = CRelAngle(CMath::ClampRadians(angX.AsRadians()));

    float angXDeg = angX.AsDegrees();
    if (angXDeg > 180.f)
      angXDeg -= 360.f;
    float clampedX = CMath::Clamp(minCamRotateX, angXDeg, maxCamRotateX);
    angX = CRelAngle(CMath::ClampRadians(CRelAngle::FromDegrees(clampedX).AsRadians()));

    CQuaternion q = CQuaternion::ZRotation(angZ) * CQuaternion::XRotation(angX) *
                    CQuaternion::YRotation(CRelAngle(0.f));
    xa8_renderState0.x8_camOrientation = q;
  } else {
    SetShouldRotatingSoundBePlaying(false);
  }
}

void CAutoMapper::ProcessMapZoomInput(const CFinalInput& input, const CStateManager& mgr) {
  bool zoomIn = ControlMapper::GetDigitalInput(ControlMapper::kC_MapZoomIn, input);
  bool zoomOut = ControlMapper::GetDigitalInput(ControlMapper::kC_MapZoomOut, input);

  int curState = x324_zoomState;
  int nextZoomState = 0;
  float oldDist = xa8_renderState0.x18_camDist;
  switch (curState) {
  case 0:
    if (zoomIn)
      nextZoomState = 1;
    else if (zoomOut)
      nextZoomState = 2;
    break;
  case 1:
    if (zoomIn)
      nextZoomState = 1;
    else if (zoomOut)
      nextZoomState = 2;
    break;
  case 2:
    if (zoomOut)
      nextZoomState = 2;
    else if (zoomIn)
      nextZoomState = 1;
    break;
  default:
    break;
  }

  x324_zoomState = static_cast< EZoomState >(nextZoomState);

  float deltaFrames = 60.f * input.Time();
  float speedMult = x1bc_state == kAMS_MapScreen ? 1.f : 4.f;
  float delta = gpTweakAutoMapper->x70_zoomUnitsPerFrame * (deltaFrames * speedMult);

  if (x324_zoomState == kZS_In) {
    xa8_renderState0.x18_camDist =
        GetClampedMapScreenCameraDistance(xa8_renderState0.x18_camDist - delta);
    x2f0_rTriggerPos = 1;
    x324_zoomState = kZS_In;
  } else if (x324_zoomState == kZS_Out) {
    xa8_renderState0.x18_camDist =
        GetClampedMapScreenCameraDistance(xa8_renderState0.x18_camDist + delta);
    x2ec_lTriggerPos = 1;
    x324_zoomState = kZS_Out;
  }

  if (oldDist == xa8_renderState0.x18_camDist)
    SetShouldZoomingSoundBePlaying(false);
  else
    SetShouldZoomingSoundBePlaying(true);
}

void CAutoMapper::ProcessMapPanInput(const CFinalInput& input, const CStateManager& mgr) {
  float forward = ControlMapper::GetAnalogInput(ControlMapper::kC_MapMoveForward, input);
  float back = ControlMapper::GetAnalogInput(ControlMapper::kC_MapMoveBack, input);
  float left = ControlMapper::GetAnalogInput(ControlMapper::kC_MapMoveLeft, input);
  float right = ControlMapper::GetAnalogInput(ControlMapper::kC_MapMoveRight, input);

  CMatrix3f camRot = xa8_renderState0.x8_camOrientation.BuildTransform();
  if (forward > 0.f || back > 0.f || left > 0.f || right > 0.f) {
    float deltaFrames = 60.f * input.Time();
    float speed = GetFinalMapScreenCameraMoveSpeed();
    int flags = 0;
    if (forward > 0.f)
      flags += 1;
    if (back > 0.f)
      flags += 2;
    if (left > 0.f)
      flags += 4;
    if (right > 0.f)
      flags += 8;

    switch (flags) {
    case 1:
      x2e8_rStickPos = 1;
      break;
    case 2:
      x2e8_rStickPos = 5;
      break;
    case 4:
      x2e8_rStickPos = 3;
      break;
    case 5:
      x2e8_rStickPos = 2;
      break;
    case 6:
      x2e8_rStickPos = 4;
      break;
    case 8:
      x2e8_rStickPos = 7;
      break;
    case 9:
      x2e8_rStickPos = 8;
      break;
    case 10:
      x2e8_rStickPos = 6;
      break;
    default:
      break;
    }

    CVector3f dirVec(right - left, 0.f, forward - back);
    CVector3f deltaVec = camRot * (dirVec * deltaFrames * speed);
    float newX = xa8_renderState0.x20_areaPoint.GetX() + deltaVec.GetX();
    float newY = xa8_renderState0.x20_areaPoint.GetY() + deltaVec.GetY();
    float newZ = xa8_renderState0.x20_areaPoint.GetZ() + deltaVec.GetZ();
    CVector3f newPoint(newX, newY, newZ);
    if (deltaVec.Magnitude() > input.Time()) {
      SetShouldPanningSoundBePlaying(true);
    } else {
      SetShouldPanningSoundBePlaying(false);
    }

    if (x1bc_state == kAMS_MapScreen) {
      xa8_renderState0.x20_areaPoint =
          x24_world->IGetMapWorld()->ConstrainToWorldVolume(newPoint, camRot.GetColumn(kDY));
    } else {
      CVector3f localPoint = newPoint - x8_mapu.GetObject()->GetMapUniverseCenterPoint();
      if (localPoint.Magnitude() > x8_mapu.GetObject()->GetMapUniverseRadius()) {
        newPoint = x8_mapu.GetObject()->GetMapUniverseCenterPoint() +
                   localPoint.AsNormalized() * x8_mapu.GetObject()->GetMapUniverseRadius();
      }
      xa8_renderState0.x20_areaPoint = newPoint;
    }
  } else {
    SetShouldPanningSoundBePlaying(false);
    float speed = gpTweakAutoMapper->xe0_camPanUnitsPerFrame * GetBaseMapScreenCameraMoveSpeed();
    if (x1bc_state == kAMS_MapScreen) {
      const CMapArea* area = x24_world->IGetMapWorld()->GetMapArea(xa0_curAreaId.value);
      CVector3f worldPoint =
          const_cast< CMapArea* >(area)->GetAreaPostTransform(*x24_world, xa0_curAreaId.value) *
          area->GetAreaCenterPoint();
      CVector3f viewPoint = worldPoint - xa8_renderState0.x20_areaPoint;
      if (viewPoint.Magnitude() < speed) {
        xa8_renderState0.x20_areaPoint = worldPoint;
      } else {
        xa8_renderState0.x20_areaPoint += viewPoint.AsNormalized() * speed;
      }
    } else {
      CVector3f camDir = camRot.GetColumn(kDY);
      SClosestWorldResult result =
          FindClosestVisibleWorld(xa8_renderState0.x20_areaPoint,
                                  CUnitVector3f(camDir.GetX(), camDir.GetY(), camDir.GetZ()), mgr);
      const CTransform4f& hex = x8_mapu.GetObject()
                                    ->GetMapWorldData(result.x0_worldIdx)
                                    .GetMapAreaData(result.x4_areaIdx);
      CVector3f areaToHex = hex.GetTranslation() - xa8_renderState0.x20_areaPoint;
      if (areaToHex.Magnitude() < speed) {
        xa8_renderState0.x20_areaPoint = hex.GetTranslation();
      } else {
        xa8_renderState0.x20_areaPoint += areaToHex.AsNormalized() * speed;
      }
    }
  }
}

void CAutoMapper::Draw(const CStateManager& mgr, const CTransform4f& xf, float alpha) const {
  alpha *= gpGameState->GameOptions().GetHudAlpha();
  gpRender->SetBlendMode_AlphaBlended();
  CGraphics::SetCullMode(kCM_Front);

  float alphaInterp;
  if (IsFullyOutOfMiniMapState()) {
    alphaInterp = 1.f;
  } else if (IsInMapperState(kAMS_MiniMap)) {
    alphaInterp = alpha;
  } else if (x1c0_nextState == kAMS_MiniMap) {
    float t = GetInterp();
    alphaInterp = alpha * t + (1.f - t);
  } else if (x1bc_state == kAMS_MiniMap) {
    float t = GetInterp();
    alphaInterp = alpha * (1.f - t) + t;
  } else {
    alphaInterp = 1.f;
  }

  float aspect = static_cast< float >(xa8_renderState0.x0_viewportSize.GetX()) /
                 static_cast< float >(xa8_renderState0.x0_viewportSize.GetY());
  float camAngleRad = xa8_renderState0.x1c_camAngle * (1.f / 360.f) * (2.f * M_PIF);
  float yScale =
      xa8_renderState0.x18_camDist / static_cast< float >(tan(M_PIF / 2.f - 0.5f * camAngleRad));

  CTransform4f camXf =
      xa8_renderState0.x8_camOrientation.BuildTransform4f(xa8_renderState0.x20_areaPoint);

  CTransform4f distScale(1.f / (yScale * aspect), 0.f, 0.f, 0.f, 0.f, 0.001f, 0.f, 0.f, 0.f, 0.f,
                         1.f / yScale, 0.f);

  CTransform4f tweakScale = CTransform4f::Scale(gpTweakAutoMapper->xc4_mapPlaneScaleX, 0.f,
                                                gpTweakAutoMapper->xc8_mapPlaneScaleZ);

  CTransform4f planeXf = xf * tweakScale * distScale * camXf.GetQuickInverse();

  float universeInterp = 0.f;
  if (x1c0_nextState == kAMS_MapScreenUniverse) {
    if (x1bc_state == kAMS_MapScreenUniverse)
      universeInterp = 1.f;
    else
      universeInterp = GetInterp();
  } else if (x1bc_state == kAMS_MapScreenUniverse) {
    universeInterp = 1.f - GetInterp();
  }

  const CTransform4f* preXf;
  bool isMapScreenUniverse =
      (x1bc_state == kAMS_MapScreenUniverse || x1c0_nextState == kAMS_MapScreenUniverse);
  if (isMapScreenUniverse)
    preXf = &x8_mapu.GetObject()->GetMapWorldData(x9c_worldIdx).GetWorldTransform();
  else
    preXf = &CTransform4f::Identity();

  float objectScale = xa8_renderState0.x18_camDist / gpTweakAutoMapper->xc_minCamDist;
  float mapAlpha = alphaInterp * (1.f - universeInterp);

  if (IsFullyOutOfMiniMapState()) {
    if (universeInterp < 1.f && x24_world != NULL) {
      CWorldState& worldState = gpGameState->StateForWorld(x24_world->IGetWorldAssetId());
      const CMapWorldInfo& mwInfo = *worldState.GetMapWorldInfo().GetPtr();
      const CMapWorld* mw = x24_world->IGetMapWorld();

      float hintFlash = 0.f;
      if (!x1e0_hintSteps.empty() &&
          x1e0_hintSteps.begin()->x0_type == SAutoMapperHintStep::kHST_ShowBeacon) {
        float hintStepFloat = x1e0_hintSteps.begin()->x4_float;
        if (xa0_curAreaId == mgr.GetNextAreaId() && x24_world == mgr.GetWorld()) {
          float pulseTime = static_cast< float >(fmod(hintStepFloat * 8.f, 1.0));
          hintFlash = 2.f * (pulseTime < 0.5f ? pulseTime : 1.f - pulseTime);
        } else {
          rstl::list< SAutoMapperHintLocation >::const_iterator locIt = x1f8_hintLocations.begin();
          for (; locIt != x1f8_hintLocations.end(); ++locIt) {
            if (x24_world->IGetWorldAssetId() != locIt->x8_worldId)
              continue;
            if (xa0_curAreaId != locIt->xc_areaId)
              continue;
            float pulseTime = static_cast< float >(
                fmod((1.f - rstl::max_val(0.f, (hintStepFloat - 0.5f) / 0.5f)) * 4.f, 1.0));
            hintFlash = 2.f * (pulseTime < 0.5f ? pulseTime : 1.f - pulseTime);
            break;
          }
        }
      }

      int curArea = xa0_curAreaId.value;
      CTransform4f modelXf = planeXf * *preXf;
      const CMapWorld::CMapWorldDrawParms parms(
          xa8_renderState0.x34_alphaSurfaceVisited * alphaInterp,
          xa8_renderState0.x38_alphaOutlineVisited * alphaInterp,
          xa8_renderState0.x3c_alphaSurfaceUnvisited * alphaInterp,
          xa8_renderState0.x40_alphaOutlineUnvisited * alphaInterp, mapAlpha, mgr, modelXf, camXf,
          *x24_world, mwInfo, 2.f, true, x1dc_playerFlashPulse, hintFlash, objectScale);
      mw->Draw(parms, curArea, curArea, xa8_renderState0.x2c_drawDepth1,
               xa8_renderState0.x30_drawDepth2, true);
    }
  } else if (IsInMapperState(kAMS_MiniMap)) {
    const CMapWorld* mw = x24_world->IGetMapWorld();
    CWorldState& worldState = gpGameState->StateForWorld(x24_world->IGetWorldAssetId());
    const CMapWorldInfo& mwInfo = *worldState.GetMapWorldInfo().GetPtr();
    const CMapWorld::CMapWorldDrawParms parms(
        xa8_renderState0.x34_alphaSurfaceVisited * alphaInterp,
        xa8_renderState0.x38_alphaOutlineVisited * alphaInterp,
        xa8_renderState0.x3c_alphaSurfaceUnvisited * alphaInterp,
        xa8_renderState0.x40_alphaOutlineUnvisited * alphaInterp, mapAlpha, mgr, planeXf, camXf,
        *x24_world, mwInfo, 1.f, false, 0.f, 0.f, objectScale);
    mw->Draw(parms, xa0_curAreaId.value, xa4_otherAreaId.value, xa8_renderState0.x2c_drawDepth1,
             xa8_renderState0.x30_drawDepth2, false);
  } else {
    int curArea = xa0_curAreaId.value;
    const CMapWorld* mw = x24_world->IGetMapWorld();
    CWorldState& worldState = gpGameState->StateForWorld(x24_world->IGetWorldAssetId());
    const CMapWorldInfo& mwInfo = *worldState.GetMapWorldInfo().GetPtr();
    CTransform4f modelXf = planeXf * *preXf;
    const CMapWorld::CMapWorldDrawParms parms(
        xa8_renderState0.x34_alphaSurfaceVisited * alphaInterp,
        xa8_renderState0.x38_alphaOutlineVisited * alphaInterp,
        xa8_renderState0.x3c_alphaSurfaceUnvisited * alphaInterp,
        xa8_renderState0.x40_alphaOutlineUnvisited * alphaInterp, mapAlpha, mgr, modelXf, camXf,
        *x24_world, mwInfo, 2.f, true, 0.f, 0.f, objectScale);
    mw->Draw(parms, curArea, curArea, xa8_renderState0.x2c_drawDepth1,
             xa8_renderState0.x30_drawDepth2, false);
  }

  if (universeInterp > 0.f) {
    const CWorld* wld = mgr.GetWorld();
    CMapWorld* mapWorld = wld->GetMapWorld();
    const CMapArea* mapArea = mapWorld->GetMapArea(mgr.GetNextAreaId().value);
    CTransform4f areaXf =
        const_cast< CMapArea* >(mapArea)->GetAreaPostTransform(*wld, mgr.GetNextAreaId().value);

    CAssetId curWorldId = gpGameState->CurrentWorldAssetId();
    const CMapUniverse::CMapWorldData& mwData =
        x8_mapu.GetObject()->GetMapWorldDataByWorldId(curWorldId);
    CTransform4f universeAreaXf = mwData.GetWorldTransform() * areaXf;

    float minMag = FLT_MAX;
    int hexIdx = -1;
    for (int i = 0; i < static_cast< int >(mwData.GetNumMapAreaDatas()); ++i) {
      CVector3f diff = universeAreaXf.GetTranslation() - mwData.GetMapAreaData(i).GetTranslation();
      float mag = diff.Magnitude();
      if (mag < minMag) {
        hexIdx = i;
        minMag = mag;
      }
    }

    const CMapUniverse::CMapUniverseDrawParms uParms(universeInterp, x9c_worldIdx,
                                                     gpGameState->CurrentWorldAssetId(), hexIdx,
                                                     x1dc_playerFlashPulse, mgr, planeXf, camXf);
    x8_mapu.GetObject()->Draw(uParms, CVector3f::Zero(), 0.f, 0.f);
  }

  if (!IsInMapperState(kAMS_MapScreenUniverse)) {
    CTransform4f mapXf = planeXf * *preXf;
    if (x24_world == mgr.GetWorld()) {
      float func = CMath::Clamp(
          0.f, 0.5f * (1.f + CMath::FastSinR(5.f * CGraphics::GetSecondsMod900() - (M_PIF / 2.f))),
          1.f);
      float scale = rstl::min_val(
          0.6f * gpTweakAutoMapper->x10_maxCamDist / gpTweakAutoMapper->xc_minCamDist, objectScale);

      CEulerAngles eulers =
          CEulerAngles::FromTransform(mgr.GetCameraManager()->GetCurrentCameraTransform(mgr));
      CRelAngle angle = CRelAngle(CMath::ClampRadians(eulers.GetZ()));

      CVector3f playerPos = CMapArea::GetAreaPostTranslate(*x24_world, mgr.GetNextAreaId().value) +
                            mgr.GetPlayer()->GetTranslation();

      CTransform4f playerXf(CMatrix3f::RotateZ(angle), playerPos);

      gpRender->SetModelMatrix(mapXf * playerXf *
                               CTransform4f::Scale(scale * (0.25f * func + 0.75f)));

      float colorAlpha;
      if (IsFullyOutOfMiniMapState()) {
        colorAlpha = 1.f;
      } else {
        colorAlpha = xa8_renderState0.x34_alphaSurfaceVisited;
      }
      colorAlpha *= mapAlpha;
      CColor modColor =
          gpTweakAutoMapper->xf0_miniMapSamusModColor.WithAlphaModulatedBy(colorAlpha);
      CModelFlags flags(CModelFlags::kT_Blend, static_cast< uchar >(0),
                        static_cast< CModelFlags::EFlags >(CModelFlags::kF_DepthCompare |
                                                           CModelFlags::kF_DepthGreater),
                        modColor);
      x30_miniMapSamus.GetObject()->Draw(flags);
    }

    if (IsInMapperState(kAMS_MapScreen)) {
      CAssetId wldMlvl = x24_world->IGetWorldAssetId();
      const CMapWorld* mw = x24_world->IGetMapWorld();
      rstl::list< SAutoMapperHintLocation >::const_iterator locIt = x1f8_hintLocations.begin();
      for (; locIt != x1f8_hintLocations.end(); ++locIt) {
        if (locIt->x8_worldId != wldMlvl)
          continue;
        const CMapArea* mapa = mw->GetMapArea(locIt->xc_areaId.value);
        if (mapa == NULL)
          continue;

        CTransform4f camRot(camXf.BuildMatrix3f(), CVector3f::Zero());
        CGraphics::SetModelMatrix(
            mapXf *
            CTransform4f::Translate(const_cast< CMapArea* >(mapa)
                                        ->GetAreaPostTransform(*x24_world, locIt->xc_areaId.value)
                                        .GetTranslation()) *
            CTransform4f::Translate(mapa->GetAreaCenterPoint()) * CTransform4f::Scale(objectScale) *
            camRot);

        float beaconAlpha = 0.f;
        if (locIt->x0_showBeacon == 1) {
          beaconAlpha = locIt->x4_beaconAlpha;
        }

        if (beaconAlpha > 0.f) {
          CGraphics::SetTevOp(kTS_Stage0, CGraphics::kEnvModulate);
          x3c_hintBeacon.GetObject()->Load(GX_TEXMAP0, CTexture::kCM_Repeat);
          gpRender->SetBlendMode_AdditiveAlpha();
          CGraphics::StreamBegin(kP_TriangleStrip);
          float beaconColorAlpha;
          if (IsFullyOutOfMiniMapState()) {
            beaconColorAlpha = 1.f;
          } else {
            beaconColorAlpha = xa8_renderState0.x34_alphaSurfaceVisited;
          }
          CColor beaconColor(
              0xff, 0xff, 0xff,
              static_cast< uchar >(beaconAlpha * beaconColorAlpha * mapAlpha * 255.f));
          CGraphics::StreamColor(beaconColor);
          CGraphics::StreamTexcoord(0.f, 1.f);
          CGraphics::StreamVertex(CVector3f(-4.f, -8.f, 8.f));
          CGraphics::StreamTexcoord(0.f, 0.f);
          CGraphics::StreamVertex(CVector3f(-4.f, -8.f, 0.f));
          CGraphics::StreamTexcoord(1.f, 1.f);
          CGraphics::StreamVertex(CVector3f(4.f, -8.f, 8.f));
          CGraphics::StreamTexcoord(1.f, 0.f);
          CGraphics::StreamVertex(CVector3f(4.f, -8.f, 0.f));
          CGraphics::StreamEnd();
        }
      }
    }
  }

  gpRender->SetDepthReadWrite(false, false);
  gpRender->SetAmbientColor(CColor::White());
  CGraphics::DisableAllLights();

  if (x2c_frmeInitialized != NULL) {
    float frmeAlpha;
    if (IsFullyOutOfMiniMapState()) {
      frmeAlpha = 1.f;
    } else if (x1c0_nextState != kAMS_MiniMap) {
      frmeAlpha = 0.f;
      if (x1c4_interpDur > 0.f)
        frmeAlpha = x1c8_interpTime / x1c4_interpDur;
    } else {
      frmeAlpha = 0.f;
      if (x1c4_interpDur > 0.f)
        frmeAlpha = x1c8_interpTime / x1c4_interpDur;
      frmeAlpha = 1.f - frmeAlpha;
    }

    CGraphics::SetDepthRange(0.f, 0.f);
    CGuiWidgetDrawParms parms(frmeAlpha, CVector3f::Zero());
    x2c_frmeInitialized->Draw(parms);
    CGraphics::SetDepthRange(0.f, 1.f / 512.f);
  }
}

CAssetId CAutoMapper::GetAreaHintDescriptionString(CAssetId mreaId) {
  const CHintOptions& hintOpts = gpGameState->HintOptions();
  const rstl::vector< SHintState >& hintStates = hintOpts.GetHintStates();
  for (int i = 0; i < static_cast< int >(hintStates.size()); ++i) {
    if (hintStates[i].x0_state != kHS_Displaying)
      continue;
    const CGameHintInfo::CGameHint& hint = GetGameHints()[i];
    int numLocs = static_cast< int >(hint.x20_locations.size());
    for (int j = 0; j < numLocs; ++j) {
      const CGameHintInfo::SHintLocation& loc = hint.x20_locations[j];
      if (loc.x4_mreaId != mreaId)
        continue;
      rstl::list< SAutoMapperHintLocation >::const_iterator locIt = x1f8_hintLocations.begin();
      for (; locIt != x1f8_hintLocations.end(); ++locIt) {
        if (locIt->xc_areaId != loc.x8_areaId)
          continue;
        if (locIt->x4_beaconAlpha > 0.f)
          return loc.xc_stringId;
      }
    }
  }
  return kInvalidAssetId;
}

void CAutoMapper::Update(float dt, const CStateManager& mgr) {
  if (IsFullyOutOfMiniMapState()) {
    x1d8_flashTimer = static_cast< float >(fmod(x1d8_flashTimer + dt, 0.75));
    if (x1d8_flashTimer < 0.375f) {
      x1dc_playerFlashPulse = x1d8_flashTimer / 0.375f;
    } else {
      x1dc_playerFlashPulse = (0.75f - x1d8_flashTimer) / 0.375f;
    }
  }

  // Initialize frame widgets when map screen frame is loaded
  if (x28_frmeMapScreen.get() != NULL && x2c_frmeInitialized == NULL) {
    if (x28_frmeMapScreen->TryCache()) {
      x2c_frmeInitialized = x28_frmeMapScreen->GetObject();

      CGuiTextPane* leftPane =
          static_cast< CGuiTextPane* >(x2c_frmeInitialized->FindWidget("textpane_left"));
      leftPane->TextSupport().SetText(rstl::wstring(gpStringTable->GetString(0x2a)));

      CGuiTextPane* yicon =
          static_cast< CGuiTextPane* >(x2c_frmeInitialized->FindWidget("textpane_yicon"));
      yicon->TextSupport().SetText(rstl::wstring(gpStringTable->GetString(0x2b)));

      x2fc_textpane_hint =
          static_cast< CGuiTextPane* >(x2c_frmeInitialized->FindWidget("textpane_hint"));
      x300_textpane_instructions =
          static_cast< CGuiTextPane* >(x2c_frmeInitialized->FindWidget("textpane_instructions"));
      x304_textpane_instructions1 =
          static_cast< CGuiTextPane* >(x2c_frmeInitialized->FindWidget("textpane_instructions1"));
      x308_textpane_instructions2 =
          static_cast< CGuiTextPane* >(x2c_frmeInitialized->FindWidget("textpane_instructions2"));

      CGuiTextPane* mapLegend =
          static_cast< CGuiTextPane* >(x2c_frmeInitialized->FindWidget("textpane_mapLegend"));
      mapLegend->TextSupport().SetWordWrap(false);
      mapLegend->TextSupport().SetImageBaseline(true);
      mapLegend->TextSupport().SetText(rstl::wstring(gpStringTable->GetString(0x31)));

      x30c_basewidget_leftPane = x2c_frmeInitialized->FindWidget("basewidget_leftPane");
      x310_basewidget_yButtonPane = x2c_frmeInitialized->FindWidget("basewidget_yButtonPane");
      x314_basewidget_bottomPane = x2c_frmeInitialized->FindWidget("basewidget_bottomPane");

      x2f8_textpane_areaname =
          static_cast< CGuiTextPane* >(x2c_frmeInitialized->FindWidget("textpane_areaname"));
      x2f8_textpane_areaname->SetDepthTest(false);
    }
  }

  // Update frame and text panes
  if (x2c_frmeInitialized != NULL) {
    x2c_frmeInitialized->Update(dt);

    CGuiTextPane* right1 =
        static_cast< CGuiTextPane* >(x2c_frmeInitialized->FindWidget("textpane_right1"));
    const wchar_t imagePrefix[] = L"&image=";
    const wchar_t imageSuffix[] = L";";
    rstl::wstring string;

    if (x1bc_state == kAMS_MapScreenUniverse ||
        (x1bc_state == kAMS_MapScreen && HasCurrentMapUniverseWorld())) {
      string.reserve(0x100);
      string.append(imagePrefix, -1);
      rstl::string hexStr(
          CBasics::Stringize("%8.8X", gpTweakPlayerRes->x98_aButton[x2f4_aButtonPos]));
      rstl::wstring unicodeHex = CStringExtras::ConvertToUNICODE(hexStr);
      string.append(unicodeHex);
      string.append(imageSuffix, -1);
    } else {
      string = rstl::wstring_l(L"");
    }
    right1->TextSupport().SetText(string);

    CGuiTextPane* right =
        static_cast< CGuiTextPane* >(x2c_frmeInitialized->FindWidget("textpane_right"));
    rstl::wstring rightString;
    if (x1bc_state == kAMS_MapScreenUniverse) {
      rightString = rstl::wstring_l(gpStringTable->GetString(0x2d));
    } else if (x1bc_state == kAMS_MapScreen && HasCurrentMapUniverseWorld()) {
      rightString = rstl::wstring_l(gpStringTable->GetString(0x2c));
    } else {
      rightString = rstl::wstring_l(L"");
    }
    right->TextSupport().SetText(rightString);
  }

  // Update pane positions
  float dt2 = 2.f * dt;
  switch (gpGameState->SystemState().GetAutoMapperKeyState()) {
  case 0:
    x318_leftPanePos -= dt2;
    x31c_yButtonPanePos -= dt2;
    x320_bottomPanePos -= dt2;
    break;
  case 1:
    x318_leftPanePos += dt2;
    x31c_yButtonPanePos -= dt2;
    x320_bottomPanePos -= dt2;
    break;
  case 2:
    x318_leftPanePos += dt2;
    x31c_yButtonPanePos += dt2;
    x320_bottomPanePos += dt2;
    break;
  default:
    break;
  }

  if (x318_leftPanePos < 0.f)
    x318_leftPanePos = 0.f;
  else if (x318_leftPanePos > 1.f)
    x318_leftPanePos = 1.f;
  if (x31c_yButtonPanePos < 0.f)
    x31c_yButtonPanePos = 0.f;
  else if (x31c_yButtonPanePos > 1.f)
    x31c_yButtonPanePos = 1.f;
  if (x320_bottomPanePos < 0.f)
    x320_bottomPanePos = 0.f;
  else if (x320_bottomPanePos > 1.f)
    x320_bottomPanePos = 1.f;

  if (x30c_basewidget_leftPane != NULL) {
    x30c_basewidget_leftPane->LocalTransform() =
        CTransform4f::Translate(CVector3f(-15.f, 0.f, 0.f) * x318_leftPanePos) *
        x30c_basewidget_leftPane->GetTransform();
    x30c_basewidget_leftPane->RecalculateTransforms();
  }

  if (x310_basewidget_yButtonPane != NULL) {
    x310_basewidget_yButtonPane->LocalTransform() =
        CTransform4f::Translate(CVector3f(0.f, 0.f, -3.5f) * x31c_yButtonPanePos) *
        x310_basewidget_yButtonPane->GetTransform();
    x310_basewidget_yButtonPane->RecalculateTransforms();
  }

  if (x314_basewidget_bottomPane != NULL) {
    x314_basewidget_bottomPane->LocalTransform() =
        CTransform4f::Translate(CVector3f(0.f, 0.f, -7.f) * x320_bottomPanePos) *
        x314_basewidget_bottomPane->GetTransform();
    x314_basewidget_bottomPane->RecalculateTransforms();
  }

  // Update camera and area for minimap
  if (IsInMapperState(kAMS_MiniMap)) {
    xa8_renderState0.x8_camOrientation = GetMiniMapCameraOrientation(mgr);
    float camDist = xa8_renderState0.x18_camDist;
    float desiredDist = GetDesiredMiniMapCameraDistance(mgr);
    if (CMath::AbsF(camDist - desiredDist) < 3.f) {
      xa8_renderState0.x18_camDist = desiredDist;
    } else if (camDist < desiredDist) {
      xa8_renderState0.x18_camDist = camDist + 3.f;
    } else {
      xa8_renderState0.x18_camDist = camDist - 3.f;
    }

    TAreaId curAid = x24_world->IGetCurrentAreaId();
    if (curAid != xa0_curAreaId) {
      x160_renderState2 = xa8_renderState0;
      x104_renderState1 = xa8_renderState0;
      xa4_otherAreaId = xa0_curAreaId;
      xa0_curAreaId = curAid;
      CVector3f areaPoint = GetAreaPointOfInterest(mgr, xa0_curAreaId.value);
      x104_renderState1.x20_areaPoint = areaPoint;
      x104_renderState1.x44_viewportEase = SAutoMapperRenderState::kE_None;
      x104_renderState1.x48_camEase = SAutoMapperRenderState::kE_None;
      x104_renderState1.x4c_pointEase = SAutoMapperRenderState::kE_InOut;
      x104_renderState1.x50_depth1Ease = SAutoMapperRenderState::kE_Linear;
      x104_renderState1.x54_depth2Ease = SAutoMapperRenderState::kE_Linear;
      x104_renderState1.x58_alphaEase = SAutoMapperRenderState::kE_None;
      x104_renderState1.x2c_drawDepth1 = GetMapAreaMiniMapDrawDepth();
      x104_renderState1.x30_drawDepth2 = GetMapAreaMiniMapDrawDepth();
      x160_renderState2.x2c_drawDepth1 = GetMapAreaMiniMapDrawDepth() - 1.f;
      x160_renderState2.x30_drawDepth2 = GetMapAreaMiniMapDrawDepth() - 1.f;
      ResetInterpolationTimer(gpTweakAutoMapper->x6c_hintPanTime);
    }
    xa8_renderState0.x34_alphaSurfaceVisited = GetMapAreaMiniMapDrawAlphaSurfaceVisited(mgr);
    xa8_renderState0.x38_alphaOutlineVisited = GetMapAreaMiniMapDrawAlphaOutlineVisited(mgr);
    xa8_renderState0.x3c_alphaSurfaceUnvisited = GetMapAreaMiniMapDrawAlphaSurfaceUnvisited(mgr);
    xa8_renderState0.x40_alphaOutlineUnvisited = GetMapAreaMiniMapDrawAlphaOutlineUnvisited(mgr);
  } else if (x1c0_nextState == kAMS_MiniMap) {
    float camDist = x104_renderState1.x18_camDist;
    float desiredDist = GetDesiredMiniMapCameraDistance(mgr);
    if (CMath::AbsF(camDist - desiredDist) < 3.f) {
      xa8_renderState0.x18_camDist = desiredDist;
    } else if (camDist < desiredDist) {
      x104_renderState1.x18_camDist = camDist + 3.f;
    } else {
      x104_renderState1.x18_camDist = camDist - 3.f;
    }
  } else {
    if (x1bc_state != kAMS_MiniMap && x1c0_nextState != kAMS_MiniMap && x24_world != NULL) {
      const CMapWorld* mapWorld = x24_world->IGetMapWorld();
      CWorldState& worldState = gpGameState->StateForWorld(x24_world->IGetWorldAssetId());
      CMapWorldInfo* mwInfo = worldState.GetMapWorldInfo().GetPtr();
      mapWorld->RecalculateWorldSphere(*mwInfo, *x24_world);
    }
  }

  // Update interpolation
  if (IsRenderStateInterpolating()) {
    float newTime = x1c8_interpTime + dt;
    x1c8_interpTime = newTime < x1c4_interpDur ? newTime : x1c4_interpDur;
    SAutoMapperRenderState::InterpolateWithClamp(
        x160_renderState2, xa8_renderState0, x104_renderState1, x1c8_interpTime / x1c4_interpDur);
    if (x1c8_interpTime == x1c4_interpDur && x328_ == 2) {
      SetupMiniMapWorld(const_cast< CStateManager& >(mgr));
    }
  } else if (IsInMapperStateTransition()) {
    CompleteMapperStateTransition(mgr);
  }

  // Update map area string
  CAssetId stringId = x88_mapAreaStringId;
  if (IsInMapperState(kAMS_MapScreenUniverse)) {
    IWorld* dummyWorld = x14_dummyWorlds[x9c_worldIdx].get();
    if (dummyWorld != NULL && dummyWorld->ICheckWorldComplete()) {
      stringId = dummyWorld->IGetStringTableAssetId();
    } else if (x24_world != NULL) {
      stringId = x24_world->IGetStringTableAssetId();
    }
  } else if (x24_world != NULL) {
    const IGameArea* area = x24_world->IGetAreaAlways(xa0_curAreaId);
    CWorldState& worldState = gpGameState->StateForWorld(x24_world->IGetWorldAssetId());
    CMapWorldInfo* mwInfo = worldState.GetMapWorldInfo().GetPtr();
    bool showName = true;
    if (!mwInfo->IsMapped(xa0_curAreaId)) {
      if (!mwInfo->IsAreaVisited(xa0_curAreaId)) {
        showName = false;
      }
    }
    if (showName) {
      stringId = area->IGetStringTableAssetId();
    } else {
      stringId = kInvalidAssetId;
    }
  }

  if (stringId != x88_mapAreaStringId) {
    x88_mapAreaStringId = stringId;
    if (x88_mapAreaStringId != kInvalidAssetId) {
      x8c_mapAreaString = TCachedToken< CStringTable >(
          gpSimplePool->GetObj(SObjectTag('STRG', x88_mapAreaStringId)));
      x8c_mapAreaString->Lock();
    } else {
      x8c_mapAreaString = rstl::optional_object< TCachedToken< CStringTable > >();
    }
  }

  if (x2f8_textpane_areaname != NULL) {
    if (x8c_mapAreaString) {
      if (x8c_mapAreaString->IsLoaded()) {
        x2f8_textpane_areaname->TextSupport().SetText(
            rstl::wstring(x8c_mapAreaString->GetObject()->GetString(0)));
      }
    } else {
      x2f8_textpane_areaname->TextSupport().SetText(rstl::wstring_l(L""));
    }
  }

  // Update hint description for map screen
  if (IsInMapperState(kAMS_MapScreen)) {
    const IGameArea* area = x24_world->IGetAreaAlways(xa0_curAreaId);
    CAssetId hintDescId = GetAreaHintDescriptionString(area->IGetAreaAssetId());
    if (hintDescId != x74_areaHintDescId) {
      x74_areaHintDescId = hintDescId;
      if (x74_areaHintDescId != kInvalidAssetId) {
        x78_areaHintDesc = TCachedToken< CStringTable >(
            gpSimplePool->GetObj(SObjectTag('STRG', x74_areaHintDescId)));
        x78_areaHintDesc->Lock();
      } else {
        x78_areaHintDesc = rstl::optional_object< TCachedToken< CStringTable > >();
      }
    }
  }

  // Update dummy worlds
  for (int i = 0; i < static_cast< int >(x14_dummyWorlds.size()); ++i) {
    IWorld* dummyWorld = x14_dummyWorlds[i].get();
    if (dummyWorld != NULL) {
      dummyWorld->ICheckWorldComplete();
    }
  }
}

void CAutoMapper::BeginMapperStateTransition(EAutoMapperState state, const CStateManager& mgr) {
  if (state == x1c0_nextState)
    return;

  if ((state == kAMS_MiniMap && x1c0_nextState != kAMS_MiniMap) ||
      (state != kAMS_MiniMap && x1c0_nextState == kAMS_MiniMap)) {
    CSfxManager::KillAll(CSfxManager::kSC_PauseScreen);
  }

  x1bc_state = x1c0_nextState;
  x1c0_nextState = state;
  x160_renderState2 = xa8_renderState0;
  x104_renderState1 = xa8_renderState0;

  if (x1bc_state == kAMS_MiniMap && state == kAMS_MapScreen) {
    x104_renderState1 = BuildMapScreenWorldRenderState(mgr, xa8_renderState0.x8_camOrientation,
                                                       xa0_curAreaId.value, false);
    ResetInterpolationTimer(gpTweakAutoMapper->x64_openMapScreenTime);
  } else if (x1bc_state == kAMS_MapScreen && state == kAMS_MiniMap) {
    xa0_curAreaId = x24_world->IGetCurrentAreaId();
    x104_renderState1 =
        BuildMiniMapWorldRenderState(mgr, xa8_renderState0.x8_camOrientation, xa0_curAreaId.value);
    ResetInterpolationTimer(gpTweakAutoMapper->x68_closeMapScreenTime);
    {
      rstl::list< SAutoMapperHintLocation >::iterator end = x1f8_hintLocations.end();
      rstl::list< SAutoMapperHintLocation >::iterator it = x1f8_hintLocations.begin();
      while (it != end) {
        it = x1f8_hintLocations.erase(it);
      }
    }
  } else if (x1bc_state == kAMS_MapScreen && state == kAMS_MapScreenUniverse) {
    CSfxManager::SfxStart(0x592, 127, 64, false, CSfxManager::kMedPriority, false,
                          CSfxManager::kAllAreas);
    x104_renderState1 = BuildMapScreenUniverseRenderState(mgr, xa8_renderState0.x8_camOrientation,
                                                          xa0_curAreaId.value);
    TransformRenderStatesWorldToUniverse();
    ResetInterpolationTimer(gpTweakAutoMapper->xdc_switchToFromUniverseTime);
  } else if (x1bc_state == kAMS_MapScreenUniverse && state == kAMS_MapScreen) {
    CSfxManager::SfxStart(0x593, 127, 64, false, CSfxManager::kMedPriority, false,
                          CSfxManager::kAllAreas);
    x104_renderState1 = BuildMapScreenWorldRenderState(mgr, xa8_renderState0.x8_camOrientation,
                                                       xa0_curAreaId.value, x1e0_hintSteps.size());
    TransformRenderStateWorldToUniverse(x104_renderState1);
    ResetInterpolationTimer(gpTweakAutoMapper->xdc_switchToFromUniverseTime);
    for (int i = 0; i < static_cast< int >(x14_dummyWorlds.size()); ++i) {
      if (x14_dummyWorlds[i].get() != x24_world || x24_world == mgr.GetWorld()) {
        rstl::auto_ptr< IWorld > empty;
        x14_dummyWorlds[i] = empty;
      }
    }
  } else if (x1bc_state == kAMS_MapScreenUniverse && state == kAMS_MiniMap) {
    x24_world = const_cast< CWorld* >(mgr.GetWorld());
    xa0_curAreaId = x24_world->IGetCurrentAreaId();
    x104_renderState1 =
        BuildMiniMapWorldRenderState(mgr, xa8_renderState0.x8_camOrientation, xa0_curAreaId.value);
    SetCurWorldAssetId(x24_world->IGetWorldAssetId());
    TransformRenderStateWorldToUniverse(x104_renderState1);
    ResetInterpolationTimer(gpTweakAutoMapper->x68_closeMapScreenTime);
    {
      rstl::list< SAutoMapperHintLocation >::iterator end = x1f8_hintLocations.end();
      rstl::list< SAutoMapperHintLocation >::iterator it = x1f8_hintLocations.begin();
      while (it != end) {
        it = x1f8_hintLocations.erase(it);
      }
    }
    for (int i = 0; i < static_cast< int >(x14_dummyWorlds.size()); ++i) {
      rstl::auto_ptr< IWorld > empty;
      x14_dummyWorlds[i] = empty;
    }
  }
}

void CAutoMapper::CompleteMapperStateTransition(const CStateManager& mgr) {
  if (x1bc_state == kAMS_MapScreenUniverse)
    TransformRenderStatesUniverseToWorld();

  if (x1c0_nextState == kAMS_MapScreen) {
    const CMapWorld* mw = x24_world->IGetMapWorld();
    mw->IsMapAreasStreaming();
    CWorldState& worldState = gpGameState->StateForWorld(x24_world->IGetWorldAssetId());
    CMapWorldInfo* mwInfo = worldState.GetMapWorldInfo().GetPtr();
    mw->RecalculateWorldSphere(*mwInfo, *x24_world);
    x1d8_flashTimer = 0.f;
    x1dc_playerFlashPulse = 0.f;
  }

  if (x1c0_nextState == kAMS_MiniMap) {
    x28_frmeMapScreen = NULL;
    x2c_frmeInitialized = NULL;
    x2fc_textpane_hint = NULL;
    x300_textpane_instructions = NULL;
    x304_textpane_instructions1 = NULL;
    x308_textpane_instructions2 = NULL;
    x2f8_textpane_areaname = NULL;
    x30c_basewidget_leftPane = NULL;
    x310_basewidget_yButtonPane = NULL;
    x314_basewidget_bottomPane = NULL;
    SetResLockState(x210_lstick, false);
    SetResLockState(x25c_cstick, false);
    SetResLockState(x2a8_ltrigger, false);
    SetResLockState(x2bc_rtrigger, false);
    SetResLockState(x2d0_abutton, false);
  }

  if (x1c0_nextState == kAMS_MapScreenUniverse && x328_ == 1)
    LeaveMapScreen(mgr);

  x1bc_state = x1c0_nextState;
}

void CAutoMapper::ResetInterpolationTimer(float duration) {
  x1c4_interpDur = duration;
  x1c8_interpTime = 0.f;
}

CAutoMapper::SAutoMapperRenderState
CAutoMapper::BuildMiniMapWorldRenderState(const CStateManager& stateMgr, const CQuaternion& rot,
                                          int area) const {
  CQuaternion camOrient = GetMiniMapCameraOrientation(stateMgr);
  CQuaternion useOrient =
      (CQuaternion::Dot(rot, camOrient) >= 0.f) ? camOrient : camOrient.BuildEquivalent();
  SAutoMapperRenderState ret(
      GetMiniMapViewportSize(), useOrient, gpTweakAutoMapper->x28_miniCamDist,
      gpTweakAutoMapper->x30_miniCamAngle, GetAreaPointOfInterest(stateMgr, area),
      GetMapAreaMiniMapDrawDepth(), GetMapAreaMiniMapDrawDepth(),
      GetMapAreaMiniMapDrawAlphaSurfaceVisited(stateMgr),
      GetMapAreaMiniMapDrawAlphaOutlineVisited(stateMgr),
      GetMapAreaMiniMapDrawAlphaSurfaceUnvisited(stateMgr),
      GetMapAreaMiniMapDrawAlphaOutlineUnvisited(stateMgr));
  ret.x44_viewportEase = SAutoMapperRenderState::kE_Out;
  ret.x48_camEase = SAutoMapperRenderState::kE_Out;
  ret.x4c_pointEase = SAutoMapperRenderState::kE_Out;
  ret.x50_depth1Ease = SAutoMapperRenderState::kE_Linear;
  ret.x54_depth2Ease = SAutoMapperRenderState::kE_In;
  ret.x58_alphaEase = SAutoMapperRenderState::kE_Linear;
  return ret;
}

CAutoMapper::SAutoMapperRenderState
CAutoMapper::BuildMapScreenWorldRenderState(const CStateManager& mgr, const CQuaternion& rot,
                                            int area, bool doingHint) const {
  float camDist = doingHint ? gpTweakAutoMapper->x10_maxCamDist : gpTweakAutoMapper->x8_camDist;
  SAutoMapperRenderState ret(
      GetMapScreenViewportSize(), rot, camDist, gpTweakAutoMapper->x1c_camAngle,
      GetAreaPointOfInterest(mgr, area), GetMapAreaMaxDrawDepth(mgr, area),
      GetMapAreaMaxDrawDepth(mgr, area), gpTweakAutoMapper->x88_alphaSurfaceVisited,
      gpTweakAutoMapper->x90_alphaOutlineVisited, gpTweakAutoMapper->x98_alphaSurfaceUnvisited,
      gpTweakAutoMapper->xa0_alphaOutlineUnvisited);
  ret.x44_viewportEase = SAutoMapperRenderState::kE_Out;
  ret.x48_camEase = SAutoMapperRenderState::kE_Linear;
  ret.x4c_pointEase = SAutoMapperRenderState::kE_Out;
  ret.x50_depth1Ease = SAutoMapperRenderState::kE_Linear;
  ret.x54_depth2Ease = SAutoMapperRenderState::kE_Out;
  ret.x58_alphaEase = SAutoMapperRenderState::kE_Linear;
  return ret;
}

CAutoMapper::SAutoMapperRenderState::SAutoMapperRenderState(const SAutoMapperRenderState& other)
: x0_viewportSize(other.x0_viewportSize)
, x8_camOrientation(other.x8_camOrientation)
, x18_camDist(other.x18_camDist)
, x1c_camAngle(other.x1c_camAngle)
, x20_areaPoint(other.x20_areaPoint)
, x2c_drawDepth1(other.x2c_drawDepth1)
, x30_drawDepth2(other.x30_drawDepth2)
, x34_alphaSurfaceVisited(other.x34_alphaSurfaceVisited)
, x38_alphaOutlineVisited(other.x38_alphaOutlineVisited)
, x3c_alphaSurfaceUnvisited(other.x3c_alphaSurfaceUnvisited)
, x40_alphaOutlineUnvisited(other.x40_alphaOutlineUnvisited)
, x44_viewportEase(other.x44_viewportEase)
, x48_camEase(other.x48_camEase)
, x4c_pointEase(other.x4c_pointEase)
, x50_depth1Ease(other.x50_depth1Ease)
, x54_depth2Ease(other.x54_depth2Ease)
, x58_alphaEase(other.x58_alphaEase) {}

CAutoMapper::SAutoMapperRenderState
CAutoMapper::BuildMapScreenUniverseRenderState(const CStateManager& mgr, const CQuaternion& rot,
                                               int area) const {
  SAutoMapperRenderState ret(
      GetMapScreenViewportSize(), rot, gpTweakAutoMapper->xd0_universeCamDist,
      gpTweakAutoMapper->x1c_camAngle, GetAreaPointOfInterest(mgr, area),
      GetMapAreaMaxDrawDepth(mgr, area), GetMapAreaMaxDrawDepth(mgr, area), 0.f, 0.f, 0.f, 0.f);
  ret.x44_viewportEase = SAutoMapperRenderState::kE_Out;
  ret.x48_camEase = SAutoMapperRenderState::kE_Linear;
  ret.x4c_pointEase = SAutoMapperRenderState::kE_Out;
  ret.x50_depth1Ease = SAutoMapperRenderState::kE_Linear;
  ret.x54_depth2Ease = SAutoMapperRenderState::kE_Out;
  ret.x58_alphaEase = SAutoMapperRenderState::kE_Linear;
  return ret;
}

void CAutoMapper::SetShouldPanningSoundBePlaying(bool shouldBePlaying) {
  if (shouldBePlaying) {
    if (!x1cc_panningSfx)
      x1cc_panningSfx = CSfxManager::SfxStart(0x57E, 127, 64, false, CSfxManager::kMedPriority,
                                              true, CSfxManager::kAllAreas);
  } else {
    CSfxManager::SfxStop(x1cc_panningSfx);
    x1cc_panningSfx.Clear();
  }
}

void CAutoMapper::SetShouldZoomingSoundBePlaying(bool shouldBePlaying) {
  if (shouldBePlaying) {
    if (!x1d4_zoomingSfx)
      x1d4_zoomingSfx = CSfxManager::SfxStart(0x560, 127, 64, false, CSfxManager::kMedPriority,
                                              true, CSfxManager::kAllAreas);
  } else {
    CSfxManager::SfxStop(x1d4_zoomingSfx);
    x1d4_zoomingSfx.Clear();
  }
}

void CAutoMapper::SetShouldRotatingSoundBePlaying(bool shouldBePlaying) {
  if (shouldBePlaying) {
    if (!x1d0_rotatingSfx)
      x1d0_rotatingSfx = CSfxManager::SfxStart(0x55F, 127, 64, false, CSfxManager::kMedPriority,
                                               true, CSfxManager::kAllAreas);
  } else {
    CSfxManager::SfxStop(x1d0_rotatingSfx);
    x1d0_rotatingSfx.Clear();
  }
}

void CAutoMapper::LeaveMapScreenState() {
  SetShouldPanningSoundBePlaying(false);
  SetShouldZoomingSoundBePlaying(false);
  SetShouldRotatingSoundBePlaying(false);
}

CQuaternion CAutoMapper::GetMiniMapCameraOrientation(const CStateManager& stateMgr) {
  float miniCamXAngle = gpTweakAutoMapper->x2c_miniCamXAngle;
  const CGameCamera& cam = stateMgr.GetCameraManager()->GetCurrentCamera(stateMgr);
  CEulerAngles angles = CEulerAngles::FromQuaternion(CQuaternion::FromMatrix(cam.GetTransform()));
  return CQuaternion::ZRotation(CMath::ClampRadians(angles.GetZ())) *
         CQuaternion::XRotation(CRelAngle::FromDegrees(miniCamXAngle));
}

CVector3f CAutoMapper::GetAreaPointOfInterest(const CStateManager& mgr, int aid) const {
  const CMapArea* mapa = x24_world->IGetMapWorld()->GetMapArea(aid);
  CVector3f center = mapa->GetAreaCenterPoint();
  return const_cast< CMapArea* >(mapa)->GetAreaPostTransform(*x24_world, aid) * center;
}

int CAutoMapper::FindClosestVisibleArea(const CVector3f& point, const CUnitVector3f& camDir,
                                        const CStateManager& mgr, const IWorld& wld,
                                        const CMapWorldInfo& mwInfo) const {
  float minDist = 9999.f;
  int closestArea = xa0_curAreaId.value;
  const CMapWorld* mw = wld.IGetMapWorld();
  rstl::vector< int > areas = mw->GetVisibleAreas(wld, mwInfo);
  if (areas.empty()) {
    return -1;
  }
  for (int i = 0; i < areas.size(); ++i) {
    int areaId = areas[i];
    const CMapArea* mapa = mw->GetMapArea(areaId);
    CTransform4f xf = const_cast< CMapArea* >(mapa)->GetAreaPostTransform(wld, areaId);
    CVector3f xfPoint = xf * mapa->GetAreaCenterPoint();
    CVector3f pointToArea = xfPoint - point;
    CVector3f projPoint;
    if (pointToArea.CanBeNormalized()) {
      CVector3f dir = pointToArea.AsNormalized();
      float dot = CVector3f::Dot(dir, camDir);
      float mag = pointToArea.Magnitude();
      projPoint = point + (dot * mag) * camDir;
    } else {
      projPoint = point;
    }
    CVector3f diff = projPoint - xfPoint;
    float dist = diff.Magnitude();
    if (dist < minDist) {
      minDist = dist;
      closestArea = areaId;
    }
  }
  return closestArea;
}

CAutoMapper::SClosestWorldResult
CAutoMapper::FindClosestVisibleWorld(const CVector3f& point, const CUnitVector3f& camDir,
                                     const CStateManager& mgr) const {
  float minDist = 29999.f;
  int closestWorldIdx = x9c_worldIdx;
  int closestAreaIdx = xa0_curAreaId.value;
  CMapUniverse* mapu = x8_mapu.GetObject();
  for (int w = 0; w < static_cast< int >(mapu->GetNumMapWorldDatas()); ++w) {
    const CMapUniverse::CMapWorldData& mwData = mapu->GetMapWorldData(w);
    CWorldState& worldState = gpGameState->StateForWorld(mwData.GetWorldAssetId());
    if (!worldState.GetMapWorldInfo().GetPtr()->IsAnythingSet())
      continue;
    for (int i = 0; i < static_cast< int >(mwData.GetNumMapAreaDatas()); ++i) {
      const CTransform4f& hexXf = mwData.GetMapAreaData(i);
      CVector3f mwOrigin = hexXf.GetTranslation();
      CVector3f pointToArea = mwOrigin - point;
      CVector3f projPoint;
      if (pointToArea.CanBeNormalized()) {
        CVector3f dir = pointToArea.AsNormalized();
        float dot = CVector3f::Dot(dir, camDir);
        float mag = pointToArea.Magnitude();
        projPoint = point + (dot * mag) * camDir;
      } else {
        projPoint = point;
      }
      CVector3f diff = projPoint - mwOrigin;
      float dist = diff.Magnitude();
      if (dist < minDist) {
        minDist = dist;
        closestWorldIdx = w;
        closestAreaIdx = i;
      }
    }
  }
  SClosestWorldResult result;
  result.x0_worldIdx = closestWorldIdx;
  result.x4_areaIdx = closestAreaIdx;
  return result;
}

CVector2i CAutoMapper::GetMiniMapViewportSize() {
  float scaleX = static_cast< float >(CGraphics::GetViewport().mWidth) / 640.f;
  float scaleY = static_cast< float >(CGraphics::GetViewport().mHeight) / 480.f;
  return CVector2i(static_cast< int >(scaleX * gpTweakAutoMapper->xb8_miniMapViewportWidth),
                   static_cast< int >(scaleY * gpTweakAutoMapper->xbc_miniMapViewportHeight));
}

CVector2i CAutoMapper::GetMapScreenViewportSize() {
  return CVector2i(CGraphics::GetViewport().mWidth, CGraphics::GetViewport().mHeight);
}

float CAutoMapper::GetMapAreaMiniMapDrawDepth() { return 2.f; }

float CAutoMapper::GetMapAreaMaxDrawDepth(const CStateManager& mgr, int aid) const {
  return static_cast< float >(x24_world->IGetMapWorld()->GetCurrentMapAreaDepth(*x24_world, aid));
}

float CAutoMapper::GetMapAreaMiniMapDrawAlphaSurfaceVisited(const CStateManager& mgr) {
  float mapAlphaInterp = gpTweakGui->GetMapAlphaInterpolant();
  return gpTweakAutoMapper->x84_miniAlphaSurfaceVisited *
         ((1.f - mapAlphaInterp) * mgr.GetPlayer()->GetGunAlpha() + mapAlphaInterp);
}

float CAutoMapper::GetMapAreaMiniMapDrawAlphaOutlineVisited(const CStateManager& mgr) {
  float mapAlphaInterp = gpTweakGui->GetMapAlphaInterpolant();
  return gpTweakAutoMapper->x8c_miniAlphaOutlineVisited *
         ((1.f - mapAlphaInterp) * mgr.GetPlayer()->GetGunAlpha() + mapAlphaInterp);
}

float CAutoMapper::GetMapAreaMiniMapDrawAlphaSurfaceUnvisited(const CStateManager& mgr) {
  float mapAlphaInterp = gpTweakGui->GetMapAlphaInterpolant();
  return gpTweakAutoMapper->x94_miniAlphaSurfaceUnvisited *
         ((1.f - mapAlphaInterp) * mgr.GetPlayer()->GetGunAlpha() + mapAlphaInterp);
}

float CAutoMapper::GetMapAreaMiniMapDrawAlphaOutlineUnvisited(const CStateManager& mgr) {
  float mapAlphaInterp = gpTweakGui->GetMapAlphaInterpolant();
  return gpTweakAutoMapper->x9c_miniAlphaOutlineUnvisited *
         ((1.f - mapAlphaInterp) * mgr.GetPlayer()->GetGunAlpha() + mapAlphaInterp);
}

float CAutoMapper::GetClampedMapScreenCameraDistance(float value) const {
  if (x1bc_state == kAMS_MapScreenUniverse) {
    float clamped = CMath::Clamp(gpTweakAutoMapper->xd4_minUniverseCamDist, value,
                                 gpTweakAutoMapper->xd8_maxUniverseCamDist);
    return clamped;
  }
  float clamped =
      CMath::Clamp(gpTweakAutoMapper->xc_minCamDist, value, gpTweakAutoMapper->x10_maxCamDist);
  return clamped;
}

float CAutoMapper::GetDesiredMiniMapCameraDistance(const CStateManager& mgr) const {
  CWorldState& worldState = gpGameState->StateForWorld(x24_world->IGetWorldAssetId());
  CMapWorldInfo* mwInfo = worldState.GetMapWorldInfo().GetPtr();
  const CMapWorld* mw = x24_world->IGetMapWorld();
  CAABox aabb = CAABox::MakeMaxInvertedBox();
  const IGameArea* area = x24_world->IGetAreaAlways(xa0_curAreaId);
  const CMapArea* mapa = mw->GetMapArea(xa0_curAreaId.value);
  bool oneMiniMapArea = gpTweakAutoMapper->x4_24_showOneMiniMapArea;
  for (int i = -1; i < (oneMiniMapArea ? 0 : static_cast< int >(area->IGetNumAttachedAreas()));
       ++i) {
    TAreaId aid = i == -1 ? xa0_curAreaId : area->IGetAttachedAreaId(i);
    const CMapArea* attMapa = mw->GetMapArea(aid.value);
    if (attMapa->GetIsVisibleToAutoMapper(mwInfo->IsWorldVisible(aid),
                                          mwInfo->IsAreaVisible(aid))) {
      CAABox areaAABB(attMapa->GetBoundingBox().GetTransformedAABox(
          const_cast< CMapArea* >(attMapa)->GetAreaPostTransform(*x24_world, aid.value)));
      aabb.AccumulateBounds(areaAABB.GetMinPoint());
      aabb.AccumulateBounds(areaAABB.GetMaxPoint());
    }
  }

  CVector3f xfPoint =
      const_cast< CMapArea* >(mapa)->GetAreaPostTransform(*x24_world, xa0_curAreaId.value) *
      mapa->GetAreaCenterPoint();
  float diffXa = xfPoint.GetX() - aabb.GetMinPoint().GetX();
  float diffXb = aabb.GetMaxPoint().GetX() - xfPoint.GetX();
  float maxX = rstl::max_val(diffXa, diffXb);
  float diffYa = xfPoint.GetY() - aabb.GetMinPoint().GetY();
  float diffYb = aabb.GetMaxPoint().GetY() - xfPoint.GetY();
  float maxY = rstl::max_val(diffYa, diffYb);
  float diffZa = xfPoint.GetZ() - aabb.GetMinPoint().GetZ();
  float diffZb = aabb.GetMaxPoint().GetZ() - xfPoint.GetZ();
  float maxZ = rstl::max_val(diffZa, diffZb);
  CVector3f extent = mapa->GetBoundingBox().GetMaxPoint() - mapa->GetBoundingBox().GetMinPoint();
  CVector3f maxMargin(maxX, maxY, maxZ);

  return (0.5f * (0.5f * extent.Magnitude()) + 0.5f * maxMargin.Magnitude()) *
         gpTweakAutoMapper->xc0_miniMapCamDistScale *
         static_cast< float >(
             tan(M_PIF / 2.f - 0.5f * 2.f * M_PIF * (xa8_renderState0.x1c_camAngle / 360.f)));
}

float CAutoMapper::GetBaseMapScreenCameraMoveSpeed() const {
  return gpTweakAutoMapper->x78_baseMapScreenCameraMoveSpeed;
}

float CAutoMapper::GetFinalMapScreenCameraMoveSpeed() const {
  float ret = GetBaseMapScreenCameraMoveSpeed();
  if (gpTweakAutoMapper->x4_26_scaleMoveSpeedWithCamDist) {
    ret = ret * xa8_renderState0.x18_camDist / gpTweakAutoMapper->x8_camDist;
  }
  return ret;
}

bool CAutoMapper::IsInMapperState(EAutoMapperState state) const {
  return state == x1bc_state && state == x1c0_nextState;
}

bool CAutoMapper::IsInMapperStateTransition() const { return x1bc_state != x1c0_nextState; }

bool CAutoMapper::IsRenderStateInterpolating() const { return x1c8_interpTime < x1c4_interpDur; }

void CAutoMapper::TransformRenderStatesWorldToUniverse() {
  const CTransform4f& xf = x8_mapu.GetObject()->GetMapWorldData(x9c_worldIdx).GetWorldTransform();
  CQuaternion rot = CQuaternion::FromMatrix(xf);
  x160_renderState2.x8_camOrientation = x160_renderState2.x8_camOrientation * rot;
  x160_renderState2.x20_areaPoint = xf * x160_renderState2.x20_areaPoint;
  xa8_renderState0.x8_camOrientation = xa8_renderState0.x8_camOrientation * rot;
  xa8_renderState0.x20_areaPoint = xf * xa8_renderState0.x20_areaPoint;
  x104_renderState1.x8_camOrientation = x104_renderState1.x8_camOrientation * rot;
  x104_renderState1.x20_areaPoint = xf * x104_renderState1.x20_areaPoint;
}

void CAutoMapper::TransformRenderStatesUniverseToWorld() {
  CTransform4f invXf =
      x8_mapu.GetObject()->GetMapWorldData(x9c_worldIdx).GetWorldTransform().GetQuickInverse();
  CQuaternion rot = CQuaternion::FromMatrix(invXf);
  x160_renderState2.x8_camOrientation = x160_renderState2.x8_camOrientation * rot;
  x160_renderState2.x20_areaPoint = invXf * x160_renderState2.x20_areaPoint;
  xa8_renderState0.x8_camOrientation = xa8_renderState0.x8_camOrientation * rot;
  xa8_renderState0.x20_areaPoint = invXf * xa8_renderState0.x20_areaPoint;
  x104_renderState1.x8_camOrientation = x104_renderState1.x8_camOrientation * rot;
  x104_renderState1.x20_areaPoint = invXf * x104_renderState1.x20_areaPoint;
}

void CAutoMapper::TransformRenderStateWorldToUniverse(SAutoMapperRenderState& state) {
  const CTransform4f& xf = x8_mapu.GetObject()->GetMapWorldData(x9c_worldIdx).GetWorldTransform();
  state.x20_areaPoint = xf * x104_renderState1.x20_areaPoint;
}

void CAutoMapper::SetCurWorldAssetId(int mlvlId) {
  int numWorlds = x8_mapu.GetObject()->GetNumMapWorldDatas();
  for (int i = 0; i < numWorlds; ++i) {
    if (mlvlId == x8_mapu.GetObject()->GetMapWorldData(i).GetWorldAssetId()) {
      x9c_worldIdx = i;
      return;
    }
  }
}

void CAutoMapper::LeaveMapScreen(const CStateManager& mgr) const {
  CAutoMapper* self = const_cast< CAutoMapper* >(this);
  if (x1c0_nextState == kAMS_MapScreenUniverse) {
    float depth = GetMapAreaMiniMapDrawDepth();
    self->x104_renderState1.x2c_drawDepth1 = depth;
    self->x104_renderState1.x30_drawDepth2 = depth;
    self->xa8_renderState0.x2c_drawDepth1 = depth;
    self->xa8_renderState0.x30_drawDepth2 = depth;
    self->SetupMiniMapWorld(const_cast< CStateManager& >(mgr));
  } else {
    self->x328_ = 2;
    self->x104_renderState1 = xa8_renderState0;
    self->x160_renderState2 = x104_renderState1;
    self->xa0_curAreaId = x24_world->IGetCurrentAreaId();
    self->x104_renderState1.x20_areaPoint = GetAreaPointOfInterest(mgr, xa0_curAreaId.value);
    self->x104_renderState1.x4c_pointEase = SAutoMapperRenderState::kE_Linear;
    float depth = GetMapAreaMiniMapDrawDepth();
    self->x104_renderState1.x2c_drawDepth1 = depth;
    self->x104_renderState1.x30_drawDepth2 = GetMapAreaMiniMapDrawDepth();
    self->x104_renderState1.x50_depth1Ease = SAutoMapperRenderState::kE_Linear;
    self->x104_renderState1.x54_depth2Ease = SAutoMapperRenderState::kE_Linear;
    self->ResetInterpolationTimer(0.25f);
  }
}

void CAutoMapper::SetupMiniMapWorld(CStateManager& mgr) {
  CWorld* wld = mgr.World();
  wld->GetMapWorld()->SetWhichMapAreasLoaded(*wld, wld->GetCurrentAreaId().value, 3);
  x328_ = 3;
}
