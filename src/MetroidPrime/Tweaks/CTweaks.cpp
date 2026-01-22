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

#include "Kyoto/CResFactory.hpp"

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
  return factory.GetResourceIdByName(filename)->GetId();
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
    mTweakObjects[2] = gpTweakParticle = rs_new CTweakParticle(*stream);  }
  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
    SObjectTag('CTWK', IDFromFactory(*resFactory, "Player")), nullptr);
    mTweakObjects[0] = gpTweakPlayer = rs_new CTweakPlayer(*stream);
  }
  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
    SObjectTag('CTWK', IDFromFactory(*resFactory, "CameraBob")), nullptr);
    CPlayerCameraBob::ReadTweaks(*stream);
  }

  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "Ball")), nullptr);
    mTweakObjects[7] = gpTweakBall = rs_new CTweakBall(*stream);
  }

  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "PlayerGun")), nullptr);
    mTweakObjects[4] = gpTweakPlayerGun = rs_new CTweakPlayerGun(*stream);
  }

  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "Targeting")), nullptr);
    mTweakObjects[8] = gpTweakTargeting = rs_new CTweakTargeting(*stream);
  }

  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "Game")), nullptr);
    mTweakObjects[1] = gpTweakGame = rs_new CTweakGame(*stream);
  }
  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "GuiColors")), nullptr);
    mTweakObjects[6] = gpTweakGuiColors = rs_new CTweakGuiColors(*stream);
  }
  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "AutoMapper")), nullptr);
    gpTweakAutoMapper = rs_new CTweakAutoMapper(*stream);
    mTweakObjects[9] = gpTweakAutoMapper;
    CMappableObject::ReadAutomapperTweaks(*gpTweakAutoMapper);
  }
  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "Gui")), nullptr);
    mTweakObjects[5] = gpTweakGui = rs_new CTweakGui(*stream);
  }

  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "PlayerControls")), nullptr);
    gpTweakPlayerControlCurrent = rs_new CTweakPlayerControl(*stream);
    mTweakObjects[3] = gpTweakPlayerControlCurrent;
    gpTweakPlayerControl1 = gpTweakPlayerControlCurrent;
  }
  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "PlayerControls2")), nullptr);
    gpTweakPlayerControl2 = rs_new CTweakPlayerControl(*stream);
    mTweakObjects[13] = gpTweakPlayerControl2;
  }
  {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "SlideShow")), nullptr);
    ;
    mTweakObjects[12] = gpTweakSlideShow = rs_new CTweakSlideShow(*stream);
  }
}

void CTweaks::RegisterResourceTweaks() {
  CResFactory* resFactory = gpResourceFactory;
  if (gpTweakGunRes == nullptr) {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "GunRes")), nullptr);
    mTweakObjects[10] = gpTweakGunRes = rs_new CTweakGunRes(*stream);
  }

  if (gpTweakPlayerRes == nullptr) {
    rstl::auto_ptr< CInputStream > stream = resFactory->GetResLoader().LoadNewResourceSync(
        SObjectTag('CTWK', IDFromFactory(*resFactory, "PlayerRes")), nullptr);
    mTweakObjects[11] = gpTweakPlayerRes = rs_new CTweakPlayerRes(*stream);
  }
}
