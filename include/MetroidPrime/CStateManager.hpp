#ifndef _CSTATEMANAGER_HPP
#define _CSTATEMANAGER_HPP

#include "types.h"

#include "MetroidPrime/CEntityInfo.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/list.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/single_ptr.hpp"

class CActorModelParticles;
class CCameraManager;
class CEnvFxManager;
class CFluidPlaneManager;
class CObjectList;
class CPlayer;
class CRumbleManager;
class CStateManagerContainer;
class CWeaponMgr;
class CWorld;

namespace SL {
class CSortedListManager;
} // namespace SL

class CStateManager {
public:
  void SendScriptMsg(TUniqueId uid, TEditorId target, EScriptObjectMessage msg, EScriptObjectState state);

  CCameraManager& GetCameraManager() { return *x870_cameraManager; }

private:
  u16 x0_nextFreeIndex;
  rstl::reserved_vector< u16, 1024 > x8_objectIndexArray;
  rstl::reserved_vector< rstl::auto_ptr< CObjectList >, 8 > x808_objectLists;
  CPlayer* x84c_player;
  rstl::single_ptr< CWorld > x850_world;
  rstl::list< rstl::reserved_vector< TUniqueId, 32 > > x854_graveyard;
  rstl::single_ptr< CStateManagerContainer > x86c_stateManagerContainer;
  CCameraManager* x870_cameraManager;
  SL::CSortedListManager* x874_sortedListManager;
  CWeaponMgr* x878_weaponMgr;
  CFluidPlaneManager* x87c_fluidPlaneManager;
  CEnvFxManager* x880_envFxManager;
  rstl::auto_ptr< CActorModelParticles > x884_actorModelParticles;
  CRumbleManager* x88c_rumbleManager;
};

#endif
