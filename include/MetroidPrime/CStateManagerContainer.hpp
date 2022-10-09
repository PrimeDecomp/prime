#ifndef _CSTATEMANAGERCONTAINER
#define _CSTATEMANAGERCONTAINER

#include "types.h"

#include "MetroidPrime/CActorModelParticles.hpp"
#include "MetroidPrime/CEnvFxManager.hpp"
#include "MetroidPrime/CFluidPlaneManager.hpp"
#include "MetroidPrime/CRumbleManager.hpp"
#include "MetroidPrime/CSortedLists.hpp"
#include "MetroidPrime/CWeaponMgr.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/reserved_vector.hpp"

class CStateManagerContainer {
  CCameraManager x0_cameraManager;
  SL::CSortedListManager x3c0_sortedListManager;
  CWeaponMgr xe3d8_weaponManager;
  CFluidPlaneManager xe3ec_fluidPlaneManager;
  CEnvFxManager xe510_envFxManager;
  CActorModelParticles xf168_actorModelParticles;
  CRumbleManager xf250_rumbleManager;
  rstl::reserved_vector< TUniqueId, 20 > xf344_;
  rstl::reserved_vector< TUniqueId, 20 > xf370_;
  rstl::reserved_vector< TUniqueId, 20 > xf39c_renderLast;
};

#endif // _CSTATEMANAGERCONTAINER
