#include <MetroidPrime/CMappableObject.hpp>
#include <MetroidPrime/Player/CPlayerCameraBob.hpp>

// These files must remain in this order....
// clang-format off
#include <MetroidPrime/Tweaks/CTweakPlayer.hpp>
#include <MetroidPrime/Tweaks/CTweakBall.hpp>
#include <MetroidPrime/Tweaks/CTweakGame.hpp>
#include <MetroidPrime/Tweaks/CTweakParticle.hpp>
#include <MetroidPrime/Tweaks/CTweakPlayerGun.hpp>
#include <MetroidPrime/Tweaks/CTweakGui.hpp>
#include <MetroidPrime/Tweaks/CTweakGuiColors.hpp>
#include <MetroidPrime/Tweaks/CTweakTargeting.hpp>
#include <MetroidPrime/Tweaks/CTweakAutoMapper.hpp>
#include <MetroidPrime/Tweaks/CTweakGunRes.hpp>
#include <MetroidPrime/Tweaks/CTweakPlayerControl.hpp>
#include <MetroidPrime/Tweaks/CTweakPlayerRes.hpp>
#include <MetroidPrime/Tweaks/CTweakSlideShow.hpp>
#include <MetroidPrime/Tweaks/CTweaks.hpp>
// clang-format on

#include <Kyoto/CresFactory.hpp>

CTweakPlayer* gpTweakPlayer = nullptr;
CTweakBall* gpTweakBall = nullptr;
CTweakGame* gpTweakGame = nullptr;
CTweakParticle* gpTweakParticle = nullptr;
CTweakPlayerControl* gpTweakPlayerControlCurrent = nullptr;
CTweakPlayerControl* gpTweakPlayerControl1 = nullptr;
CTweakPlayerControl* gpTweakPlayerControl2 = nullptr;
CTweakPlayerGun* gpTweakPlayerGun = nullptr;
CTweakGui* gpTweakGui = nullptr;
CTweakGuiColors* gpTweakGuiColors = nullptr;
CTweakTargeting* gpTweakTargeting = nullptr;
CTweakAutoMapper* gpTweakAutoMapper = nullptr;
CTweakGunRes* gpTweakGunRes = nullptr;
CTweakPlayerRes* gpTweakPlayerRes = nullptr;
CTweakSlideShow* gpTweakSlideShow = nullptr;

CAssetId IDFromFactory(CResFactory& factory, const char* filename) {
  return factory.GetResourceIdByName(filename)->id;
}

CTweaks::CTweaks() { mTweakObjects.resize(14, rstl::auto_ptr< ITweakObject >()); }

CTweaks::~CTweaks() {
  gpTweakPlayer = nullptr;
  gpTweakBall = nullptr;
  gpTweakGame = nullptr;
  gpTweakParticle = nullptr;
  gpTweakPlayerControlCurrent = nullptr;
  gpTweakPlayerGun = nullptr;
  gpTweakGui = nullptr;
  gpTweakGuiColors = nullptr;
  gpTweakTargeting = nullptr;
  gpTweakAutoMapper = nullptr;
  gpTweakGunRes = nullptr;
  gpTweakPlayerRes = nullptr;
  gpTweakSlideShow = nullptr;
}

void CTweaks::RegisterTweaks() {
  CResFactory* resFactory = gpResourceFactory;
  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "Particle")), nullptr);
    gpTweakParticle = new CTweakParticle(*stream);
    mTweakObjects[2] = gpTweakParticle;
  }
  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "Player")), nullptr);
    gpTweakPlayer = new CTweakPlayer(*stream);
    mTweakObjects[0] = gpTweakPlayer;
  }
  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "CameraBob")), nullptr);
    CPlayerCameraBob::ReadTweaks(*stream);
  }

  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "Ball")), nullptr);
    gpTweakBall = new CTweakBall(*stream);
    mTweakObjects[7] = gpTweakBall;
  }

  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "PlayerGun")), nullptr);
    gpTweakPlayerGun = new CTweakPlayerGun(*stream);
    mTweakObjects[4] = gpTweakPlayerGun;
  }

  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "Targeting")), nullptr);
    gpTweakTargeting = new CTweakTargeting(*stream);
    mTweakObjects[8] = gpTweakTargeting;
  }

  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "Game")), nullptr);
    gpTweakGame = new CTweakGame(*stream);
    mTweakObjects[1] = gpTweakGame;
  }
  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "GuiColors")), nullptr);
    gpTweakGuiColors = new CTweakGuiColors(*stream);
    mTweakObjects[6] = gpTweakGuiColors;
  }
  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "AutoMapper")), nullptr);
    gpTweakAutoMapper = new CTweakAutoMapper(*stream);
    mTweakObjects[2] = gpTweakAutoMapper;
    CMappableObject::ReadAutomapperTweaks(*gpTweakAutoMapper);
  }
  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "Gui")), nullptr);
    gpTweakGui = new CTweakGui(*stream);
    mTweakObjects[5] = gpTweakGui;
  }

  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "PlayerControls")), nullptr);
    gpTweakPlayerControlCurrent = new CTweakPlayerControl(*stream);
    mTweakObjects[3] = gpTweakPlayerControlCurrent;
    gpTweakPlayerControl1 = gpTweakPlayerControlCurrent;
  }
  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "PlayerControls2")), nullptr);
    gpTweakPlayerControl2 = new CTweakPlayerControl(*stream);
    mTweakObjects[13] = gpTweakPlayerControl2;
  }
  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "SlideShow")), nullptr);
    gpTweakSlideShow = new CTweakSlideShow(*stream);
    mTweakObjects[12] = gpTweakSlideShow;
  }
}

void CTweaks::RegisterResourceTweaks() {
  CResFactory* resFactory = gpResourceFactory;
  if (gpTweakGunRes == nullptr) {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "GunRes")), nullptr);
    gpTweakGunRes = new CTweakGunRes(*stream);
    mTweakObjects[10] = gpTweakGunRes;
  }

  if (gpTweakPlayerRes == nullptr) {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "PlayerRes")), nullptr);
    gpTweakPlayerRes = new CTweakPlayerRes(*stream);
    mTweakObjects[11] = gpTweakPlayerRes;
  }
}