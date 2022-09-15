#ifndef _CSTATEMANAGER_HPP
#define _CSTATEMANAGER_HPP

#include "types.h"

#include "MetroidPrime/CEntityInfo.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/list.hpp"
#include "rstl/pair.hpp"
#include "rstl/rc_ptr.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/single_ptr.hpp"

class CAABox;
class CActor;
class CActorModelParticles;
class CCameraManager;
class CEnvFxManager;
class CFluidPlaneManager;
class CMapWorldInfo;
class CObjectList;
class CPlayer;
class CPlayerState;
class CRumbleManager;
class CScriptMailbox;
class CStateManagerContainer;
class CVector3f;
class CWeaponMgr;
class CWorld;
class CWorldTransManager;
class CEntity;

namespace SL {
class CSortedListManager;
} // namespace SL

class CStateManager {
public:
  void SendScriptMsg(TUniqueId uid, TEditorId target, EScriptObjectMessage msg, EScriptObjectState state);
  void SendScriptMsg(CEntity* ent, TUniqueId target, EScriptObjectMessage msg);
  bool AddDrawableActor(const CActor& actor, const CVector3f& pos, const CAABox& bounds) const;
  void SetupParticleHook(const CActor& actor) const;
  void FreeScriptObject(TUniqueId uid);
  rstl::pair< TEditorId, TUniqueId > GenerateObject(const TEditorId& eid);

  CEntity* ObjectById(TUniqueId uid);
  const CEntity* GetObjectById(TUniqueId uid) const;
  TUniqueId GetIdForScript(TEditorId eid) const;

  CCameraManager* CameraManager() { return x870_cameraManager; }
  const CCameraManager* GetCameraManager() const { return x870_cameraManager; }
  CPlayerState* PlayerState() { return x8b8_playerState.GetPtr(); }
  const CPlayerState* GetPlayerState() const { return x8b8_playerState.GetPtr(); }
  CWorld* World() { return x850_world.get(); }
  const CWorld* GetWorld() const { return x850_world.get(); }
  CActorModelParticles* ActorModelParticles() { return x884_actorModelParticles.get(); }
  const CActorModelParticles* GetActorModelParticles() const { return x884_actorModelParticles.get(); }

  f32 GetThermalColdScale1() const { return xf24_thermColdScale1; }
  f32 GetThermalColdScale2() const { return xf28_thermColdScale2; }

  bool IsGeneratingObject() const { return xf94_26_generatingObject; }
  void SetIsGeneratingObject(bool gen) { xf94_26_generatingObject = gen; }

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
  // TODO
  // rstl::multimap< TEditorId, TUniqueId > x890_scriptIdMap;
  // rstl::map< TEditorId, SScriptObjectStream > x8a4_loadedScriptObjects;
  u8 pad[0x28];
  rstl::rc_ptr< CPlayerState > x8b8_playerState;
  rstl::rc_ptr< CScriptMailbox > x8bc_mailbox;
  rstl::rc_ptr< CMapWorldInfo > x8c0_mapWorldInfo;
  rstl::rc_ptr< CWorldTransManager > x8c4_worldTransManager;
  u8 pad2[0x658];
  f32 xf24_thermColdScale1;
  f32 xf28_thermColdScale2;
  u8 pad3[0x6c];
  bool xf94_24_readyToRender : 1;
  bool xf94_25_quitGame : 1;
  bool xf94_26_generatingObject : 1;
  bool xf94_27_inMapScreen : 1;
  bool xf94_28_inSaveUI : 1;
  bool xf94_29_cinematicPause : 1;
  bool xf94_30_fullThreat : 1;
};

#endif
