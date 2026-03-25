#pragma inline_max_size(250)

#include "MetroidPrime/HUD/CSamusHud.hpp"

#include "MetroidPrime/HUD/CHudBallInterface.hpp"
#include "MetroidPrime/HUD/CHudBossEnergyInterface.hpp"
#include "MetroidPrime/HUD/CHudEnergyInterface.hpp"
#include "MetroidPrime/HUD/CHudHelmetInterface.hpp"
#include "MetroidPrime/HUD/CHudMissileInterface.hpp"
#include "MetroidPrime/HUD/CHudRadarInterface.hpp"
#include "MetroidPrime/HUD/CHudVisorBeamMenu.hpp"
#include "MetroidPrime/HUD/IHudDecoInterface.hpp"
#include "MetroidPrime/HUD/IHudFreeLookInterface.hpp"
#include "MetroidPrime/HUD/IHudThreatInterface.hpp"

#include "GuiSys/CGuiCamera.hpp"
#include "GuiSys/CGuiFrame.hpp"
#include "GuiSys/CGuiWidgetDrawParms.hpp"
#include "GuiSys/CGuiModel.hpp"
#include "GuiSys/CGuiWidget.hpp"

#include "MetroidPrime/CActorLights.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Cameras/CCinematicCamera.hpp"
#include "MetroidPrime/Cameras/CFirstPersonCamera.hpp"
#include "MetroidPrime/TCastTo.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/Player/CPlayerGun.hpp"

#include "MetroidPrime/Tweaks/CTweakGui.hpp"
#include "MetroidPrime/Tweaks/CTweakGuiColors.hpp"

#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Math/CUnitVector3f.hpp"
#include "Kyoto/Text/CStringTable.hpp"

#include "rstl/math.hpp"

CSamusHud* CSamusHud::g_SamusHud = nullptr;

static const char skBaseFrameAssetName[] = "FRME_BaseHud";
static const char skHelmetFrameAssetName[] = "FRME_Helmet";

static const char* skHudElementNames[] = {
    "              Radar",    "                Lag",    "             Lights",
    "          Targeting",    "             Damage",    "          FrameGlue",
    "          BaseFrame",    "        EnergyGroup",    "        ThreatGroup",
    "       MissileGroup",    "      FreeLookGroup",    "        HelmetGroup",
    "          DecoGroup",    "           CamDebug",    "               Total",
};

static inline CQuaternion BuildInvertedQuat(const CQuaternion& q) {
  CVector3f neg(-q.GetX(), -q.GetY(), -q.GetZ());
  return CQuaternion(q.GetW(), neg);
}

CTransform4f CSamusHud::BuildFinalCameraTransform(const CQuaternion& rot, const CVector3f& pos,
                                                  const CVector3f& camPos) {
  CVector3f result = camPos - pos;
  result = BuildInvertedQuat(rot).Transform(result);
  result += pos;
  return CTransform4f(BuildInvertedQuat(rot).BuildTransform(), result);
}

void CSamusHud::InitializeFrameGluePermanent(const CStateManager& mgr) {}

void CSamusHud::RefreshHudOptions() {
  if (x29c_decoIntf.get() != nullptr) {
    x29c_decoIntf->UpdateHudAlpha();
  }
  if (x2a0_helmetIntf.get() != nullptr) {
    x2a0_helmetIntf->UpdateHelmetAlpha();
  }
}

void CSamusHud::InitializeDamageLight() {}

void CSamusHud::InitializeFrameGlueMutable(const CStateManager& mgr) {}

void CSamusHud::UninitializeFrameGlueMutable() {
  x2b4_bossEnergyIntf = nullptr;
  x28c_energyIntf = nullptr;
  x29c_decoIntf = nullptr;
  x290_threatIntf = nullptr;
  x294_missileIntf = nullptr;
  x298_freeLookIntf = nullptr;
  x2b0_ballIntf = nullptr;
  x3d4_damageLight = nullptr;
}

void CSamusHud::DisplayHudMemo(const rstl::wstring& text, const CHUDMemoParms& info) {
  if (g_SamusHud)
    g_SamusHud->InternalDisplayHudMemo(text, info);
}

void CSamusHud::DeferHintMemo(uint strg, uint hintNum, const SHudMemoInfo& info) {
  if (g_SamusHud)
    g_SamusHud->_DeferHintMemo(strg, hintNum, info);
}

void CSamusHud::InternalDisplayHudMemo(const rstl::wstring& text, const CHUDMemoParms& info) {
  SetMessage(text, info);
}

void CSamusHud::_DeferHintMemo(uint strg, uint strgIdx, const SHudMemoInfo& info) {
  x548_hudMemoParms.mDispTime = info.GetDisplayTime();
  x548_hudMemoParms.mClearMemoWindow = info.IsClearMemoWindow();
  x548_hudMemoParms.mFadeOutOnly = info.IsFadeOutOnly();
  x548_hudMemoParms.mHintMemo = info.IsHintMemo();
  x550_hudMemoString =
      rs_new TToken< CStringTable >(gpSimplePool->GetObj(SObjectTag('STRG', strg)));
  x550_hudMemoString->Lock();
  x554_hudMemoIdx = strgIdx;
}

void CSamusHud::UpdateThreatAssessment(float dt, const CStateManager& mgr) {}

CSamusHud::CSamusHud(const CStateManager& mgr)
: x4_loadPhase(kLP_Zero)
, x8_targetingMgr(mgr)
, x258_frmeHelmet(gpSimplePool->GetObj(skHelmetFrameAssetName))
, x264_loadedFrmeHelmet(nullptr)
, x268_frmeBaseHud(gpSimplePool->GetObj(skBaseFrameAssetName))
, x274_loadedFrmeBaseHud(nullptr)
, x278_selectedHud()
, x288_loadedSelectedHud(nullptr)
, x28c_energyIntf()
, x290_threatIntf()
, x294_missileIntf()
, x298_freeLookIntf()
, x29c_decoIntf()
, x2a0_helmetIntf()
, x2a4_visorMenu()
, x2a8_beamMenu()
, x2ac_radarIntf()
, x2b0_ballIntf()
, x2b4_bossEnergyIntf()
, x2b8_curState(kHS_None)
, x2bc_nextState(kHS_None)
, x2c0_setState(kHS_None)
, x2c4_activeTransState(kTS_NotTransitioning)
, x2c8_transT(1.f)
, x2cc_preLoadCountdown(0)
, x2d0_playerHealth(0.f)
, x2d4_totalEnergyTanks(0)
, x2d8_missileAmount(0)
, x2dc_missileCapacity(0)
, x2e0_24_inFreeLook(false)
, x2e0_25_lookControlHeld(false)
, x2e0_26_latestFirstPerson(true)
, x2e0_27_energyLow(mgr.GetPlayer()->IsEnergyLow(mgr))
, x2e4_(0)
, x2e8_(0)
, x2ec_missileMode(0)
, x2f0_visorBeamMenuAlpha(1.f)
, x2f8_fpCamDir(mgr.GetCameraManager()->GetFirstPersonCamera()->GetTransform().GetForward())
, x304_basewidgetIdlePos(CVector3f::Zero())
, x310_cameraPos(CVector3f::Zero())
, x31c_hudLag(CQuaternion::NoRotation())
, x32c_invHudLag(CQuaternion::NoRotation())
, x33c_lights(rs_new CActorLights(8, CVector3f::Zero(), 4, 1,
                                   CActorLights::kDefaultPositionUpdateThreshold, true, false,
                                   false))
, x340_hudLights(SCachedHudLight(CVector3f::Zero(), CColor::White(), 0.f, 0.f, 0.f, 0.f))
, x3a4_damageSfx()
, x3a8_camFilter()
, x3d4_damageLight(nullptr)
, x3d8_lightTransforms()
, x3e8_damageTime(0.f)
, x3ec_damageLightPulser(0.f)
, x3f0_damageFilterAmtInit(1.f)
, x3f4_damageFilterAmt(0.f)
, x3f8_damageFilterAmtGain(0.f)
, x3fc_hudDamagePracticalsInit(0.f)
, x400_hudDamagePracticals(0.f)
, x404_hudDamagePracticalsGain(0.f)
, x408_damagerToPlayerNorm(CVector3f::Zero())
, x414_decoShakeTranslateAmt(0.f)
, x418_decoShakeTranslateAmtVel(0.f)
, x41c_decoShakeTranslate(CVector3f::Zero())
, x428_decoShakeRotate(CMatrix3f::Identity())
, x44c_hudLagShakeRot(CQuaternion::NoRotation())
, x45c_decoShakeAmtInit(0.f)
, x460_decoShakeAmt(0.f)
, x464_decoShakeAmtGain(0.f)
, x468_(0)
, x46c_transforms(CTransform4f::Identity())
, x500_viewportScale(1.f, 1.f)
, x508_staticSfxHi()
, x50c_staticSfxLo()
, x510_staticInterp(0.f)
, x514_staticCycleTimerHi(0.f)
, x518_staticCycleTimerLo(0.f)
, x51c_camFilter2()
, x548_hudMemoParms(0.f, false, false, false)
, x550_hudMemoString(nullptr)
, x554_hudMemoIdx(0)
, x558_messageTextTime(0.f)
, x55c_lastSfxChars(0.f)
, x560_messageTextScale(0.f)
, x564_freeLookSfx()
, x568_fpCamDir2(mgr.GetCameraManager()->GetFirstPersonCamera()->GetTransform().GetForward())
, x574_lookDeltaDot(1.f)
, x578_freeLookSfxCycleTimer(0.f)
, x57c_energyLowTimer(0.f)
, x580_energyLowPulse(0.f)
, x584_abuttonPulse(0.f)
, x5a4_videoBands(SVideoBand())
, x5d8_guiLights(static_cast< CGuiLight* >(nullptr))
, x7ac_profiles(SProfileInfo()) {
  UpdateStateTransition(1.f, mgr);
  g_SamusHud = this;

  for (int i = 0; i < 16; ++i) {
    x5ec_camFovTweaks[i] = 5.f * static_cast< float >(i) + 40.f;
  }
  for (int i = 0; i < 64; ++i) {
    x62c_camYTweaks[i] = -0.5f * static_cast< float >(i);
  }
  for (int i = 0; i < 32; ++i) {
    x72c_camZTweaks[i] = 0.5f * static_cast< float >(i) + (-8.f);
  }

  x264_loadedFrmeHelmet = *x258_frmeHelmet;
  x274_loadedFrmeBaseHud = *x268_frmeBaseHud;

  x2a0_helmetIntf = rs_new CHudHelmetInterface(*x264_loadedFrmeHelmet);

  x2a4_visorMenu =
      rs_new CHudVisorBeamMenu(*x274_loadedFrmeBaseHud, CHudVisorBeamMenu::kVBM_Visor,
                               BuildPlayerHasVisors(mgr));

  x2a8_beamMenu =
      rs_new CHudVisorBeamMenu(*x274_loadedFrmeBaseHud, CHudVisorBeamMenu::kVBM_Beam,
                               BuildPlayerHasBeams(mgr));

  x2ac_radarIntf = rs_new CHudRadarInterface(*x274_loadedFrmeBaseHud,
                                              const_cast< CStateManager& >(mgr));

  InitializeFrameGluePermanent(mgr);
  UpdateEnergy(0.f, mgr, true);
  UpdateMissile(0.f, mgr, true);
  UpdateBallMode(mgr, true);
}

void CSamusHud::UpdateEnergyLow(float dt, const CStateManager& mgr) {
  bool cineCam = TCastToPtr< CCinematicCamera >(
      const_cast< CGameCamera& >(mgr.GetCameraManager()->GetCurrentCamera(mgr)));
  float oldTimer = x57c_energyLowTimer;
  x57c_energyLowTimer = static_cast< float >(fmod(x57c_energyLowTimer + dt, 0.5));
  float pulse;
  if (x57c_energyLowTimer < 0.25f) {
    pulse = x57c_energyLowTimer / 0.25f;
  } else {
    pulse = (0.5f - x57c_energyLowTimer) / 0.25f;
  }
  x580_energyLowPulse = pulse;
  if (!cineCam && x2e0_27_energyLow && x57c_energyLowTimer < oldTimer) {
    CSfxManager::SfxStart(0x57d);
  }
}

IHudDecoInterface::~IHudDecoInterface() {}

IHudFreeLookInterface::~IHudFreeLookInterface() {}

IHudThreatInterface::~IHudThreatInterface() {}

CSamusHud::~CSamusHud() {
  if (x3a4_damageSfx != CSfxHandle::NullHandle()) {
    CSfxManager::RemoveEmitter(x3a4_damageSfx);
  }
  g_SamusHud = nullptr;
}

bool CSamusHud::CheckLoadComplete(const CStateManager& mgr) {
  switch (x4_loadPhase) {
  case kLP_Zero:
    if (x8_targetingMgr.CheckLoadComplete()) {
      x4_loadPhase = kLP_One;
    } else {
      return false;
    }
  case kLP_One:
    UpdateStateTransition(1.f, mgr);
    if (x2bc_nextState != x2c0_setState) {
      return false;
    }
    x4_loadPhase = kLP_Two;
  case kLP_Two:
    if (x264_loadedFrmeHelmet->GetIsFinishedLoading() &&
        x274_loadedFrmeBaseHud->GetIsFinishedLoading()) {
      x4_loadPhase = kLP_Three;
    } else {
      return false;
    }
  case kLP_Three:
    return true;
  default:
    return false;
  }
}

void CSamusHud::UpdateVisorAndBeamMenus(float dt, const CStateManager& mgr) {
  const CPlayerGun* gun = mgr.GetPlayer()->GetPlayerGun();
  int currentBeam = gun->GetPrimaryWeaponId();
  int destBeam = gun->GetPrimaryDestWeaponId();
  float beamInterp = CMath::Clamp(0.f, gun->GetHoloTransitionFactor(), 1.f);

  const CPlayerState* playerState = mgr.GetPlayerState();
  int currentVisor = playerState->GetCurrentVisor();
  int transitioningVisor = playerState->GetTransitioningVisor();
  float visorInterp = playerState->GetVisorTransitionFactor();

  if (!x2a8_beamMenu.null()) {
    x2a8_beamMenu->SetSelection(currentBeam, destBeam, beamInterp);
    x2a8_beamMenu->SetPlayerHas(BuildPlayerHasBeams(mgr));
  }

  if (!x2a4_visorMenu.null()) {
    x2a4_visorMenu->SetSelection(currentVisor, transitioningVisor, visorInterp);
    x2a4_visorMenu->SetPlayerHas(BuildPlayerHasVisors(mgr));
  }
}

void CSamusHud::UpdateFreeLook(float dt, const CStateManager& mgr) {
  static const float kFreeLookSoundTimeThreshold = 0.05f;

  TCastToPtr< CFirstPersonCamera > fpCam(
      const_cast< CGameCamera& >(mgr.GetCameraManager()->GetCurrentCamera(mgr)));
  bool inFreeLook = false;
  CFirstPersonCamera* fpCamPtr = fpCam;
  if (mgr.GetPlayer()->IsInFreeLook() && fpCamPtr) {
    inFreeLook = true;
  }
  bool lookControlHeld = mgr.GetPlayer()->GetFreeLookStickState();

  if (x2e0_24_inFreeLook != inFreeLook) {
    if (inFreeLook) {
      CSfxManager::SfxStart(0x570, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                            CSfxManager::kAllAreas);
    } else {
      CSfxManager::SfxStart(0x56e, 0x7f, 0x40, false, CSfxManager::kMedPriority, false,
                            CSfxManager::kAllAreas);
    }
    x2e0_24_inFreeLook = inFreeLook;
  }

  float deltaFrames = 0.999999f * (60.f * dt);
  float oldLookDeltaDot = x574_lookDeltaDot;
  CVector3f fpCamDir = fpCamPtr == nullptr
      ? x568_fpCamDir2
      : fpCamPtr->GetTransform().GetForward();

  bool lookAdj = inFreeLook;
  if (inFreeLook) {
    lookAdj = lookControlHeld;
  }

  if (lookAdj) {
    x574_lookDeltaDot = CMath::Limit(CVector3f::Dot(fpCamDir, x568_fpCamDir2), 1.f);
  } else {
    x574_lookDeltaDot = 1.f;
  }

  x568_fpCamDir2 = fpCamDir;

  bool crossedThreshold = false;
  if ((oldLookDeltaDot >= deltaFrames && x574_lookDeltaDot < deltaFrames) ||
      (oldLookDeltaDot < deltaFrames && x574_lookDeltaDot >= deltaFrames)) {
    crossedThreshold = true;
  }

  if (crossedThreshold) {
    x578_freeLookSfxCycleTimer = 0.f;
  } else if (x578_freeLookSfxCycleTimer < kFreeLookSoundTimeThreshold) {
    x578_freeLookSfxCycleTimer =
        rstl::min_val(kFreeLookSoundTimeThreshold, x578_freeLookSfxCycleTimer + dt);
    if (kFreeLookSoundTimeThreshold == x578_freeLookSfxCycleTimer) {
      if (x574_lookDeltaDot < deltaFrames) {
        if (!x564_freeLookSfx) {
          x564_freeLookSfx =
              CSfxManager::SfxStart(0x572, 0x7f, 0x40, true, CSfxManager::kMedPriority, true,
                                    CSfxManager::kAllAreas);
        }
      } else {
        CSfxManager::SfxStop(x564_freeLookSfx);
        x564_freeLookSfx = CSfxHandle::NullHandle();
      }
    }
  }

  if (fpCamPtr != nullptr) {
    CMatrix3f camRot = fpCamPtr->GetTransform().BuildMatrix3f();
    CVector3f camDir(camRot.Get01(), camRot.Get11(), camRot.Get21());
    CUnitVector3f camDirUnit(camDir);
    CVector3f camDirFlat(camDirUnit.GetX(), camDirUnit.GetY(), 0.f);
    camDirFlat.Normalize();
    float offHorizonDot = CMath::Limit(CVector3f::Dot(camDirUnit, camDirFlat), 1.f);
    float offHorizonAngle = CMath::AbsF(acosf(offHorizonDot));
    if (camDirUnit.GetZ() < 0.f) {
      offHorizonAngle = -offHorizonAngle;
    }

    if (!x298_freeLookIntf.null()) {
      x298_freeLookIntf->SetFreeLookState(inFreeLook, lookControlHeld,
                                          mgr.GetPlayer()->GetOrbitTargetId() != kInvalidUniqueId,
                                          offHorizonAngle);
    }

    if (x564_freeLookSfx) {
      float pitch = offHorizonAngle * gpTweakGui->GetFreeLookSfxPitchScale() /
                    (M_PIF / 2.f);
      if (!gpTweakGui->GetNoAbsoluteFreeLookSfxPitch()) {
        pitch = CMath::AbsF(pitch);
      }
      CSfxManager::PitchBend(x564_freeLookSfx,
                             static_cast< int >(8192.f + pitch));
    }
  }
}

void CSamusHud::UpdateVideoBands(float dt, const CStateManager& mgr) {
  for (int i = 0; i < 4; ++i) {
    if (x5a4_videoBands[i].x0_videoband != nullptr) {
      x5a4_videoBands[i].x0_videoband->SetIsVisible(false);
    }
  }
}

void CSamusHud::UpdateStaticInterference(float dt, const CStateManager& mgr) {
  float intf = mgr.GetPlayerState()->GetStaticInterference().GetTotalInterference();
  float oldStaticInterp = x510_staticInterp;
  if (x510_staticInterp < intf) {
    x510_staticInterp = rstl::min_val(intf, x510_staticInterp + dt);
  } else if (x510_staticInterp > intf) {
    x510_staticInterp = rstl::max_val(intf, x510_staticInterp - dt);
  }

  UpdateStaticSfx(x508_staticSfxHi, x514_staticCycleTimerHi, 0x57a, dt, oldStaticInterp, 0.1f);
  UpdateStaticSfx(x50c_staticSfxLo, x518_staticCycleTimerLo, 0x57b, dt, oldStaticInterp, 0.5f);

  float curInterp = x510_staticInterp;
  if (curInterp > 0.f) {
    CColor color = CColor::White();
    color.SetAlpha(CCast::ToUint8(curInterp * 255.f));
    x51c_camFilter2.SetFilter(CCameraFilterPass::kFT_Blend, CCameraFilterPass::kFS_RandomStatic,
                              0.f, color, CAssetId(-1));
  } else {
    x51c_camFilter2.DisableFilter(0.f);
  }
}

void CSamusHud::UpdateStaticSfx(CSfxHandle& handle, float& cycleTimer, ushort sfxId, float dt,
                                float oldStaticInterp, float staticThreshold) {
  bool crossed = false;
  if ((oldStaticInterp > staticThreshold && x510_staticInterp <= staticThreshold) ||
      (oldStaticInterp <= staticThreshold && x510_staticInterp > staticThreshold)) {
    crossed = true;
  }

  if (crossed) {
    cycleTimer = 0.f;
  } else {
    if (cycleTimer < 0.1f) {
      cycleTimer = rstl::min_val(0.1f, cycleTimer + dt);
      if (cycleTimer == 0.1f) {
        if (x510_staticInterp > staticThreshold) {
          if (handle == CSfxHandle::NullHandle()) {
            handle = CSfxManager::SfxStart(sfxId, 0x7f, 0x40, false, CSfxManager::kMedPriority,
                                           true);
          }
        } else {
          CSfxManager::SfxStop(handle);
          handle = CSfxHandle::NullHandle();
        }
      }
    }
  }
}

void CSamusHud::UpdateEnergy(float dt, const CStateManager& mgr, bool init) {
  float energy = rstl::max_val(0.f, CMath::CeilingF(mgr.GetPlayerState()->GetHealthInfo().GetHP()));
  int numEnergyTanks = mgr.GetPlayerState()->GetItemCapacity(CPlayerState::kIT_EnergyTanks);
  x2e0_27_energyLow = mgr.GetPlayer()->IsEnergyLow(mgr);

  if (init || energy != x2d0_playerHealth || numEnergyTanks != x2d4_totalEnergyTanks) {
    float lastTankEnergy = energy;
    int filledTanks = 0;
    while (lastTankEnergy > CPlayerState::GetBaseHealthCapacity()) {
      filledTanks++;
      lastTankEnergy -= CPlayerState::GetEnergyTankCapacity();
    }

    if (x2bc_nextState != kHS_None) {
      if (!x28c_energyIntf.null()) {
        float curLastTankEnergy = x2d0_playerHealth;
        while (curLastTankEnergy > CPlayerState::GetBaseHealthCapacity()) {
          curLastTankEnergy -= CPlayerState::GetEnergyTankCapacity();
        }
        x28c_energyIntf->SetCurrEnergy(lastTankEnergy,
            (curLastTankEnergy > lastTankEnergy) != (x2d0_playerHealth > energy));
      }
      x2d0_playerHealth = energy;
      if (!x28c_energyIntf.null()) {
        x28c_energyIntf->SetNumTotalEnergyTanks(numEnergyTanks);
        x28c_energyIntf->SetNumFilledEnergyTanks(filledTanks);
        x28c_energyIntf->SetEnergyLow(x2e0_27_energyLow);
      }
      x2d4_totalEnergyTanks = numEnergyTanks;
    }
  }

  if (!x2b4_bossEnergyIntf.null()) {
    const CActor* act = TCastToConstPtr< CActor >(mgr.GetObjectById(mgr.GetEnergyBarActorId()));
    if (act != NULL) {
      const CHealthInfo* hInfo = act->GetHealthInfo(mgr);
      if (hInfo != NULL) {
        float bossEnergy = CMath::CeilingF(hInfo->GetHP());
        float totalBossEnergy = mgr.GetEnergyBarActorMaxEnergy();
        rstl::wstring bossName = rstl::wstring_l(gpStringTable->GetString(mgr.GetBossStringIdx()));
        x2b4_bossEnergyIntf->SetBossParams(true, bossName, bossEnergy, totalBossEnergy);
      } else {
        x2b4_bossEnergyIntf->SetBossParams(false, rstl::wstring_l(L""), 0.f, 0.f);
      }
    } else {
      x2b4_bossEnergyIntf->SetBossParams(false, rstl::wstring_l(L""), 0.f, 0.f);
    }
  }
}

void CSamusHud::UpdateMissile(float dt, const CStateManager& mgr, bool init) {
  const CPlayerGun* gun = mgr.GetPlayer()->GetPlayerGun();
  const CPlayerState* playerState = mgr.GetPlayerState();
  int missileMode = gun->GetMissileMode();
  int numMissiles = playerState->GetItemAmount(CPlayerState::kIT_Missiles);
  int missileCap = playerState->GetItemCapacity(CPlayerState::kIT_Missiles);
  float chargeFactor = gun->GetChargeBeamFactor();

  if (x294_missileIntf.get() != nullptr) {
    x294_missileIntf->SetChargeBeamFactor(chargeFactor);
  }

  if (init || numMissiles != x2d8_missileAmount || missileMode != x2ec_missileMode ||
      missileCap != x2dc_missileCapacity) {
    if (x294_missileIntf.get() != nullptr) {
      if (x2dc_missileCapacity != missileCap) {
        x294_missileIntf->SetMissileCapacity(missileCap);
      }
      if (x2d8_missileAmount != numMissiles) {
        x294_missileIntf->SetNumMissiles(numMissiles, mgr);
      }
      if (x2ec_missileMode != missileMode) {
        x294_missileIntf->SetIsMissilesActive(missileMode == CPlayerGun::kMM_Active);
      }
    }
    x2d8_missileAmount = numMissiles;
    x2ec_missileMode = missileMode;
    x2dc_missileCapacity = missileCap;
  }
}

void CSamusHud::UpdateBallMode(const CStateManager& mgr, bool init) {
  if (!x2b0_ballIntf.null()) {
    const CPlayerState* playerState = mgr.GetPlayerState();
    const CPlayerGun* gun = mgr.GetPlayer()->GetPlayerGun();
    int pbAmount = playerState->GetItemAmount(CPlayerState::kIT_PowerBombs);
    int pbCapacity = playerState->GetItemCapacity(CPlayerState::kIT_PowerBombs);
    int bombCount = gun->IsBombReady() ? gun->GetBombsPending() : 0;
    bool hasBombs = playerState->HasPowerUp(CPlayerState::kIT_MorphBallBombs);
    bool hasPb = false;
    if (gun->IsPowerBombReady() &&
        mgr.GetPlayer()->GetMorphballTransitionState() == CPlayer::kMS_Morphed) {
      hasPb = true;
    }
    x2b0_ballIntf->SetBombParams(pbAmount, pbCapacity, bombCount, hasBombs, hasPb, false);
  }
}

void CSamusHud::OnNewInGameGuiState(EInGameGuiState state, CStateManager& mgr) {}

bool CSamusHud::IsCachedLightInAreaLights(const SCachedHudLight& light,
                                          const CActorLights& areaLights) const {
  for (uint i = 0; i < areaLights.GetActiveAreaLightCount(); ++i) {
    const CLight& areaLight = areaLights.GetLight(i);
    if (areaLight.GetColor().GetColor_u32() != light.xc_color.GetColor_u32()) {
      continue;
    }
    if (areaLight.GetPosition() == light.x0_pos) {
      return true;
    }
  }
  return false;
}

bool CSamusHud::IsAreaLightInCachedLights(const CLight& light) const {
  for (int i = 0; i < 3; ++i) {
    if (!x340_hudLights[i].GetIsOn()) {
      continue;
    }
    if (light.GetColor().GetColor_u32() != x340_hudLights[i].xc_color.GetColor_u32()) {
      continue;
    }
    if (light.GetPosition() == x340_hudLights[i].x0_pos) {
      return true;
    }
  }
  return false;
}

int CSamusHud::FindEmptyHudLightSlot(const CLight& light) const {
  if (0.f == x340_hudLights[0].x1c_fader) {
    return 0;
  }
  if (0.f == x340_hudLights[1].x1c_fader) {
    return 1;
  }
  if (0.f == x340_hudLights[2].x1c_fader) {
    return 2;
  }
  return -1;
}

void CSamusHud::UpdateHudDynamicLights(float dt, const CStateManager& mgr) {}

CColor CSamusHud::GetVisorHudLightColor(const CColor& color, const CStateManager& mgr) {
  const CPlayerState* playerState = mgr.GetPlayerState();
  CPlayerState::EPlayerVisor visor = playerState->GetCurrentVisor();
  float t = playerState->GetVisorTransitionFactor();
  CColor ret = color;
  switch (visor) {
  case CPlayerState::kPV_Combat:
    break;
  case CPlayerState::kPV_Scan: {
    const CColor* white = &CColor::White();
    CColor lerpColor =
        CColor::Lerp(*white, gpTweakGuiColors->GetScanVisorHudLightMultiply(), t);
    ret = CColor::Modulate(ret, lerpColor);
    break;
  }
  case CPlayerState::kPV_Thermal: {
    CColor thermalColor = gpTweakGuiColors->GetThermalVisorHudLightMultiply();
    ret = CColor::Modulate(ret, thermalColor);
    break;
  }
  case CPlayerState::kPV_XRay: {
    float luminance = 0.3f * ret.GetRed() + 0.6f * ret.GetGreen() + 0.1f * ret.GetBlue();
    ret = CColor(luminance, luminance, luminance, 1.f);
    break;
  }
  default:
    break;
  }
  return ret;
}

void IHudDecoInterface::SetFrameColorValue(float) {}

void CSamusHud::UpdateHudDamage(float dt, const CStateManager& mgr, uint helmetVis) {}

void CSamusHud::UpdateStateTransition(float time, const CStateManager& mgr) {}

float IHudDecoInterface::GetMessageTextAlpha() const { return 1.f; }

void CSamusHud::Update(float dt, const CStateManager& mgr, uint helmetVis, bool hudVis,
                       bool targetingMgr) {}

void CSamusHud::Touch() const {
  if (x264_loadedFrmeHelmet != nullptr) {
    x264_loadedFrmeHelmet->Touch();
  }
  if (x274_loadedFrmeBaseHud != nullptr) {
    x274_loadedFrmeBaseHud->Touch();
  }
  if (x288_loadedSelectedHud != nullptr) {
    x288_loadedSelectedHud->Touch();
  }
}

void CSamusHud::DrawAttachedEnemyEffect(const CStateManager& mgr) const {
  float drainTime = mgr.GetPlayer()->GetPlayerEnergyDrain().GetEnergyDrainTime();
  if (drainTime > 0.f) {
    float modPeriod = gpTweakGui->GetEnergyDrainModPeriod();
    float phaseOffset = -0.25f * modPeriod;
    CTweakGuiColors* guiColors = gpTweakGuiColors;
    float alpha;

    if (gpTweakGui->GetEnergyDrainSinusoidalPulse()) {
      alpha =
          (CMath::FastSinR(M_2PIF * drainTime / modPeriod + phaseOffset) + 1.f) * 0.5f;
    } else {
      float tmp = fabsf(fmodf(drainTime, modPeriod));
      float halfModPeriod = 0.5f * modPeriod;
      if (tmp < halfModPeriod) {
        alpha = tmp / halfModPeriod;
      } else {
        alpha = (modPeriod - tmp) / halfModPeriod;
      }
    }

    uchar origAlpha = guiColors->GetEnergyDrainFilterColor().GetAlphau8();
    float alphaF = alpha * static_cast< float >(origAlpha);
    CColor filterColor = guiColors->GetEnergyDrainFilterColor();
    filterColor.SetAlpha(CCast::ToUint8(alphaF));

    CCameraFilterPass::EFilterType type = CCameraFilterPass::kFT_Blend;
    if (gpTweakGui->GetEnergyDrainFilterAdditive()) {
      type = CCameraFilterPass::kFT_Add;
    }
    CCameraFilterPass::DrawFilter(type, CCameraFilterPass::kFS_Fullscreen, filterColor, nullptr,
                                  1.f);
  }
}

rstl::reserved_vector< bool, 4 > CSamusHud::BuildPlayerHasVisors(
    const CStateManager& mgr) const {
  const CPlayerState* playerState = mgr.GetPlayerState();
  rstl::reserved_vector< bool, 4 > ret;
  ret.push_back(playerState->HasPowerUp(CPlayerState::kIT_CombatVisor));
  ret.push_back(playerState->HasPowerUp(CPlayerState::kIT_XRayVisor));
  ret.push_back(playerState->HasPowerUp(CPlayerState::kIT_ScanVisor));
  ret.push_back(playerState->HasPowerUp(CPlayerState::kIT_ThermalVisor));
  return ret;
}

rstl::reserved_vector< bool, 4 > CSamusHud::BuildPlayerHasBeams(
    const CStateManager& mgr) const {
  const CPlayerState* playerState = mgr.GetPlayerState();
  rstl::reserved_vector< bool, 4 > ret;
  ret.push_back(playerState->HasPowerUp(CPlayerState::kIT_PowerBeam));
  ret.push_back(playerState->HasPowerUp(CPlayerState::kIT_IceBeam));
  ret.push_back(playerState->HasPowerUp(CPlayerState::kIT_WaveBeam));
  ret.push_back(playerState->HasPowerUp(CPlayerState::kIT_PlasmaBeam));
  return ret;
}

void CSamusHud::EnterFirstPerson(const CStateManager& mgr) {
  CSfxManager::SfxVolume(x508_staticSfxHi, 0x7f);
  CSfxManager::SfxVolume(x50c_staticSfxLo, 0x7f);
}

void CSamusHud::LeaveFirstPerson(const CStateManager& mgr) {
  CSfxManager::SfxVolume(x508_staticSfxHi, 0);
  CSfxManager::SfxVolume(x50c_staticSfxLo, 0);
}

void CSamusHud::DrawHelmet(const CStateManager& mgr, float camYOff) {
  bool unmorphed = !mgr.GetPlayer()->GetMorphballTransitionState();
  if (x264_loadedFrmeHelmet != nullptr && unmorphed &&
      x2bc_nextState != kHS_Ball) {
    bool transitioning = false;
    if (x2c4_activeTransState == kTS_Transitioning && x2b8_curState == kHS_Ball) {
      transitioning = true;
    }

    float alpha;
    if (transitioning) {
      alpha = x2c8_transT;
    } else {
      alpha = 1.f;
    }

    x264_loadedFrmeHelmet->Draw(CGuiWidgetDrawParms(alpha, CVector3f(0.f, 15.f * camYOff, 0.f)));
  }
}

void IHudDecoInterface::Draw() const {}

void CSamusHud::Draw(const CStateManager& mgr, float alpha, uint helmetVis, bool hudVis,
                     bool targetingMgr) const {}

void IHudDecoInterface::ProcessInput(const CFinalInput& input) {}

void CSamusHud::ProcessControllerInput(const CFinalInput& input) {
  if (x29c_decoIntf.get() != nullptr) {
    x29c_decoIntf->ProcessInput(input);
  }
}

const CTargetingManager& CSamusHud::GetTargetingManager() const { return x8_targetingMgr; }

EHudState CSamusHud::GetDesiredHudState(const CStateManager& mgr) const {
  CPlayer::EPlayerMorphBallState morphState = mgr.GetPlayer()->GetMorphballTransitionState();
  if (morphState == CPlayer::kMS_Morphed || morphState == CPlayer::kMS_Morphing ||
      morphState == CPlayer::kMS_Unmorphing) {
    return kHS_Ball;
  }

  switch (mgr.GetPlayerState()->GetTransitioningVisor()) {
  case CPlayerState::kPV_Combat:
    return kHS_Combat;
  case CPlayerState::kPV_XRay:
    return kHS_XRay;
  case CPlayerState::kPV_Scan:
    return kHS_Scan;
  case CPlayerState::kPV_Thermal:
    return kHS_Thermal;
  default:
    return kHS_None;
  }
}

int CSamusHud::GetRelativeDirection(const CVector3f& position, const CStateManager& mgr) const {
  return 0;
}

void CSamusHud::ShowDamage(CVector3f position, float dam, float prevDam,
                           const CStateManager& mgr) {}

void IHudDecoInterface::SetDecoRotation(float) {}

void IHudDecoInterface::SetReticuleTransform(const CMatrix3f&) {}

void CSamusHud::UpdateHudLag(float dt, const CStateManager& mgr) {}

void CSamusHud::ApplyClassicLag(const CUnitVector3f& lookDir, CQuaternion& rot,
                                const CStateManager& mgr, float dt, bool invert) {}

void CSamusHud::UpdateCameraDebugSettings() {
  float fov = x5ec_camFovTweaks[gpTweakGui->GetHudCamFovTweak()];
  float y = x62c_camYTweaks[gpTweakGui->GetHudCamYTweak()];
  float z = x72c_camZTweaks[gpTweakGui->GetHudCamZTweak()];

  if (!x2a0_helmetIntf.null()) {
    x2a0_helmetIntf->UpdateCameraDebugSettings(fov, y, z);
  }
  if (x29c_decoIntf.get() != nullptr) {
    x29c_decoIntf->UpdateCameraDebugSettings(fov, y, z);
  }

  CGuiCamera* cam = x274_loadedFrmeBaseHud->GetFrameCamera();
  CGuiCamera::UCameraParms parms = cam->GetParms();
  parms.perspective.fov = fov;
  cam->SetParms(parms);

  x310_cameraPos = CVector3f(0.f, y, z);
}

bool CGuiWidget::GetIsVisible() const { return xb6_25_isVisible; }

void CSamusHud::SetMessage(const rstl::wstring& text, const CHUDMemoParms& info) {}
