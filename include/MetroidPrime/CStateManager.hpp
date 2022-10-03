#ifndef _CSTATEMANAGER_HPP
#define _CSTATEMANAGER_HPP

#include "types.h"

#include "Kyoto/CObjectReference.hpp"
#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Math/CVector2f.hpp"
#include "Kyoto/Math/CVector2i.hpp"
#include "Kyoto/TOneStatic.hpp"
#include "Kyoto/TToken.hpp"

#include "MetroidPrime/CEntityInfo.hpp"
#include "MetroidPrime/CObjectList.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/list.hpp"
#include "rstl/map.hpp"
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
class CMazeState;
class CRayCastResult;
class CMaterialFilter;
class CScriptLayerManager;
class CLight;
class CDamageInfo;
class CTexture;

namespace SL {
class CSortedListManager;
} // namespace SL

#define kMaxEntities 1024
typedef rstl::reserved_vector< TUniqueId, kMaxEntities > TEntityList;

enum EStateManagerTransition {
  kSMT_InGame,
  kSMT_MapScreen,
  kSMT_PauseGame,
  kSMT_LogBook,
  kSMT_SaveGame,
  kSMT_MessageScreen
};

enum EThermalDrawFlag {
  kTD_Hot,
  kTD_Cold,
  kTD_Bypass,
};

struct SOnScreenTex {
  CAssetId x0_id;
  CVector2i x4_origin;
  CVector2i xc_extent;
};

class CStateManager : public TOneStatic< CStateManager > {
public:
  typedef rstl::map< TEditorId, TUniqueId > TIdList;
  typedef rstl::pair< TIdList::const_iterator, TIdList::const_iterator > TIdListResult;

  void ResetEscapeSequenceTimer(float);
  void SendScriptMsg(TUniqueId uid, TEditorId target, EScriptObjectMessage msg,
                     EScriptObjectState state);
  void SendScriptMsg(CEntity* ent, TUniqueId target, EScriptObjectMessage msg);
  void SendScriptMsgAlways(TUniqueId uid, TUniqueId src, EScriptObjectMessage msg);
  bool AddDrawableActor(const CActor& actor, const CVector3f& pos, const CAABox& bounds) const;
  void SetupParticleHook(const CActor& actor) const;
  void FreeScriptObject(TUniqueId uid);
  rstl::pair< TEditorId, TUniqueId > GenerateObject(const TEditorId& eid);

  bool RayCollideWorld(const CVector3f& start, const CVector3f& end, const TEntityList& nearList,
                       const CMaterialFilter& filter, const CActor* damagee) const;
  CRayCastResult RayWorldIntersection(TUniqueId& idOut, const CVector3f& pos, const CVector3f& dir,
                                      f32 length, const CMaterialFilter& filter,
                                      const TEntityList& list) const;
  void BuildColliderList(TEntityList& out, const CActor& actor, const CAABox& aabb) const;

  CEntity* ObjectById(TUniqueId uid);
  const CEntity* GetObjectById(TUniqueId uid) const;
  TUniqueId GetIdForScript(TEditorId eid) const;
  TIdListResult GetIdListForScript(TEditorId) const;

  CMazeState* CurrentMaze();
  const CMazeState* GetCurrentMaze() const;
  void SetCurrentMaze(rstl::single_ptr< CMazeState > maze);

  CPlayer* Player() { return x84c_player; }
  const CPlayer* GetPlayer() const { return x84c_player; }
  CCameraManager* CameraManager() { return x870_cameraManager; }
  const CCameraManager* GetCameraManager() const { return x870_cameraManager; }
  CPlayerState* PlayerState() { return x8b8_playerState.GetPtr(); }
  const CPlayerState* GetPlayerState() const { return x8b8_playerState.GetPtr(); }
  CWorld* World() { return x850_world.get(); }
  const CWorld* GetWorld() const { return x850_world.get(); }
  CActorModelParticles* ActorModelParticles() { return x884_actorModelParticles.get(); }
  const CActorModelParticles* GetActorModelParticles() const {
    return x884_actorModelParticles.get();
  }
  CEnvFxManager* EnvFxManager() { return x880_envFxManager; }
  const CEnvFxManager* GetEnvFxManager() const { return x880_envFxManager; }

  CRandom16* GetActiveRandom() const { return x900_random; }

  CObjectList& GetObjectListById(EGameObjectList id) { return *x808_objectLists[id]; }

  f32 GetThermalColdScale1() const { return xf24_thermColdScale1; }
  f32 GetThermalColdScale2() const { return xf28_thermColdScale2; }

  bool IsGeneratingObject() const { return xf94_26_generatingObject; }
  void SetIsGeneratingObject(bool gen) { xf94_26_generatingObject = gen; }

  void ApplyDamageToWorld(TUniqueId, const CActor&, const CVector3f&, const CDamageInfo& info,
                          CMaterialFilter&);
  bool ApplyDamage(TUniqueId damagerId, TUniqueId damageeId, TUniqueId radiusSender,
                   const CDamageInfo& info, const CMaterialFilter& filter,
                   const CVector3f& knockbackVec);

  void DeferStateTransition(EStateManagerTransition t);
  EStateManagerTransition GetDeferredStateTransition() const { return xf90_deferredTransition; }
  void SetBossParams(TUniqueId bossId, float maxEnergy, u32 stringIdx);
  void SetPendingOnScreenTex(CAssetId texId, const CVector2i& origin, const CVector2i& extent) {
    xef4_pendingScreenTex.x0_id = texId;
    xef4_pendingScreenTex.x4_origin = origin;
    xef4_pendingScreenTex.xc_extent = extent;
  }
  const SOnScreenTex& GetPendingScreenTex() const { return xef4_pendingScreenTex; }
  float IntegrateVisorFog(float f);

  void SetShouldQuitGame(bool should) { xf94_25_quitGame = should; }
  void SetSkipCinematicSpecialFunction(TUniqueId id) { xf38_skipCineSpecialFunc = id; }
  void SetInSaveUI(bool b) { xf94_28_inSaveUI = b; }
  bool GetInSaveUI() const { return xf94_28_inSaveUI; }
  void SetIsFullThreat(bool v) { xf94_30_fullThreat = v; }
  u32 GetInputFrameIdx() const { return x8d4_inputFrameIdx; }

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
  rstl::rc_ptr< CScriptLayerManager > x8c8_worldLayerState;

  TAreaId x8cc_nextAreaId;
  TAreaId x8d0_prevAreaId;
  u32 x8d4_inputFrameIdx;
  u32 x8d8_updateFrameIdx;
  u32 x8dc_objectDrawToken;

  rstl::vector< CLight > x8e0_dynamicLights;

  TLockedToken< CTexture > x8f0_shadowTex;
  CRandom16 x8fc_random;
  CRandom16* x900_random;

  u8 x904_pad[0x5f0];

  SOnScreenTex xef4_pendingScreenTex;
  CAssetId xf08_pauseHudMessage;
  f32 xf0c_escapeTimer;
  f32 xf10_escapeTotalTime;
  f32 xf14_curTimeMod900;
  TUniqueId xf18_bossId;
  f32 xf1c_totalBossEnergy;
  uint xf20_bossStringIdx;
  f32 xf24_thermColdScale1;
  f32 xf28_thermColdScale2;
  CVector2f xf2c_viewportScale;
  EThermalDrawFlag xf34_thermalFlag;
  TUniqueId xf38_skipCineSpecialFunc;
  rstl::list< TUniqueId > xf3c_activeFlickerBats;
  rstl::list< TUniqueId > xf54_activeParasites;
  TUniqueId xf6c_playerActorHead;
  rstl::single_ptr< CMazeState > xf70_currentMaze;
  TUniqueId xf74_lastTrigger;
  TUniqueId xf76_lastRelay;
  f32 xf78_hudMessageTime;
  unkptr xf7c_projectedShadow;
  uint xf80_hudMessageFrameCount;
  CAssetId xf84_;
  CAssetId xf88_;
  f32 xf8c_;
  EStateManagerTransition xf90_deferredTransition;
  bool xf94_24_readyToRender : 1;
  bool xf94_25_quitGame : 1;
  bool xf94_26_generatingObject : 1;
  bool xf94_27_inMapScreen : 1;
  bool xf94_28_inSaveUI : 1;
  bool xf94_29_cinematicPause : 1;
  bool xf94_30_fullThreat : 1;
};
CHECK_SIZEOF(CStateManager, 0xf98)

#endif
