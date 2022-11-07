#include "MetroidPrime/Weapons/GunController/CGSComboFire.hpp"

#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CAnimPlaybackParms.hpp"
#include "MetroidPrime/CStateManager.hpp"

#include "Kyoto/Animation/CPASAnimParmData.hpp"

CGSComboFire::CGSComboFire()
: x0_delay(0.f)
, x4_loopState(-1)
, x8_cueAnimId(-1)
, xc_gunId(-1)
, x10_24_over(false)
, x10_25_idle(false) {}

bool CGSComboFire::Update(CAnimData& data, float dt, CStateManager& mgr) {
  if (x8_cueAnimId != -1) {
    x0_delay -= dt;
    if (x0_delay <= 0.f) {
      data.EnableLooping(x4_loopState == 1);
      CAnimPlaybackParms aparms(x8_cueAnimId, -1, 1.f, true);
      data.SetAnimation(aparms, false);
      x0_delay = 0.f;
      x8_cueAnimId = -1;
    }
  } else if (!data.IsAnimTimeRemaining(0.001f, rstl::string_l("Whole Body"))) {
    switch (x4_loopState) {
    case 0:
      SetAnim(data, xc_gunId, 1, mgr, 0.f);
      switch (xc_gunId) {
      case 4:
      case 0:
      case 1:
        x10_24_over = true;
        break;
      default:
        break;
      }
      break;
    case 2:
      x4_loopState = -1;
      return true;
    default:
      break;
    }
  }
  return false;
}

int CGSComboFire::SetAnim(CAnimData& data, int gunId, int loopState, CStateManager& mgr,
                          float delay) {
  int useLoopState = !x10_25_idle ? loopState : 2;  
  x10_25_idle = false;
  
  const CPASDatabase& pas = data.GetCharacterInfo().GetPASDatabase();

  rstl::pair< float, int > anim =
      pas.FindBestAnimation(CPASAnimParmData(pas::kAS_Death, CPASAnimParm::FromInt32(gunId),
                                             CPASAnimParm::FromEnum(useLoopState)),
                            *mgr.Random(), -1);
  x10_24_over = false;
  xc_gunId = gunId;
  x4_loopState = useLoopState;
  if (delay != 0.f) {
    x0_delay = delay;
    x8_cueAnimId = anim.second;
  } else {
    data.EnableLooping(useLoopState == 1);
    CAnimPlaybackParms aparms(anim.second, -1, 1.f, true);
    data.SetAnimation(aparms, false);
  }
  return anim.second;
}
