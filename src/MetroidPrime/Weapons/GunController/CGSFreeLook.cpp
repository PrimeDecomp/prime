#include "MetroidPrime/Weapons/GunController/CGSFreeLook.hpp"

#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CAnimPlaybackParms.hpp"
#include "MetroidPrime/CStateManager.hpp"

#include "Kyoto/Animation/CPASAnimParmData.hpp"

CGSFreeLook::CGSFreeLook()
: x0_delay(0.f), x4_cueAnimId(-1), x8_loopState(-1), xc_gunId(0), x10_setId(-1), x14_idle(false) {}

bool CGSFreeLook::Update(CAnimData& data, float dt, CStateManager& mgr) {
  if (x4_cueAnimId != -1) {
    x0_delay -= dt;
    if (x0_delay <= 0.f) {
      data.EnableLooping(x8_loopState == 1);
      CAnimPlaybackParms aparms(x4_cueAnimId, -1, 1.f, true);
      data.SetAnimation(aparms, false);
      x0_delay = 0.f;
      x4_cueAnimId = -1;
    }
  } else if (!data.IsAnimTimeRemaining(0.001f, rstl::string_l("Whole Body"))) {
    switch (x8_loopState) {
    case 0:
      SetAnim(data, xc_gunId, x10_setId, 1, mgr, 0.f);
      break;
    case 2:
      x8_loopState = -1;
      return true;
    default:
      break;
    }
  }
  return false;
}

int CGSFreeLook::SetAnim(CAnimData& data, int gunId, int setId, int loopState, CStateManager& mgr,
                         float delay) {
  int useLoopState = 1;
  if (!x14_idle)
    useLoopState = loopState;
  x14_idle = false;

  const CPASDatabase& pas = data.GetCharacterInfo().GetPASDatabase();
  rstl::pair< float, int > anim = pas.FindBestAnimation(
      CPASAnimParmData(pas::kAS_Step, CPASAnimParm::FromInt32(gunId),
                       CPASAnimParm::FromInt32(setId), CPASAnimParm::FromEnum(useLoopState)),
      *mgr.Random(), -1);

  CPASAnimParm animParm = pas.GetAnimState(pas::kAS_Step)->GetAnimParmData(anim.second, 1);
  xc_gunId = gunId;
  x10_setId = animParm.GetInt32Value();
  x8_loopState = useLoopState;
  if (delay != 0.f) {
    x0_delay = delay;
    x4_cueAnimId = anim.second;
  } else {
    data.EnableLooping(loopState == 1);
    CAnimPlaybackParms aparms(anim.second, -1, 1.f, true);
    data.SetAnimation(aparms, false);
  }
  return anim.second;
}
