#include "MetroidPrime/CStateManager.hpp"

#include "MetroidPrime/CControlMapper.hpp"
#include "MetroidPrime/CEnvFxManager.hpp"
#include "MetroidPrime/CGameCollision.hpp"
#include "MetroidPrime/CMapWorldInfo.hpp"
#include "MetroidPrime/CRipple.hpp"
#include "MetroidPrime/CRumbleManager.hpp"
#include "MetroidPrime/CScriptMailbox.hpp"
#include "MetroidPrime/CStateManagerContainer.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/GameObjectLists.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"
#include "MetroidPrime/Player/CWorldLayerState.hpp"
#include "MetroidPrime/Player/CWorldTransManager.hpp"
#include "MetroidPrime/ScriptObjects/CScriptMazeNode.hpp"

#include "Collision/CCollisionPrimitive.hpp"
#include "Collision/CRayCastResult.hpp"
#include "Kyoto/Basics/RAssertDolphin.hpp"
#include "Kyoto/CARAMManager.hpp"
#include "Kyoto/CARAMToken.hpp"
#include "Kyoto/Graphics/CLight.hpp"
#include "MetaRender/CCubeRenderer.hpp"

extern "C" {
void sub_8036ccfc();
}

CStateManager::CStateManager(const rstl::ncrc_ptr< CScriptMailbox >& mailbox,
                             const rstl::ncrc_ptr< CMapWorldInfo >& mwInfo,
                             const rstl::ncrc_ptr< CPlayerState >& playerState,
                             const rstl::ncrc_ptr< CWorldTransManager >& wtMgr,
                             const rstl::ncrc_ptr< CWorldLayerState >& layerState)
: x0_nextFreeIndex(0)
, x4_objectIndexArray(0)
, x808_objectLists(rstl::auto_ptr< CObjectList >())

, x86c_stateManagerContainer(new CStateManagerContainer())

, x870_cameraManager(&x86c_stateManagerContainer->x0_cameraManager)
, x874_sortedListManager(&x86c_stateManagerContainer->x3c0_sortedListManager)
, x878_weaponMgr(&x86c_stateManagerContainer->xe3d8_weaponManager)
, x87c_fluidPlaneManager(&x86c_stateManagerContainer->xe3ec_fluidPlaneManager)
, x880_envFxManager(&x86c_stateManagerContainer->xe510_envFxManager)
, x884_actorModelParticles(&x86c_stateManagerContainer->xf168_actorModelParticles)
, x88c_rumbleManager(&x86c_stateManagerContainer->xf250_rumbleManager)

, x8b8_playerState(playerState)
, x8bc_mailbox(mailbox)
, x8c0_mapWorldInfo(mwInfo)
, x8c4_worldTransManager(wtMgr)
, x8c8_worldLayerState(layerState)
, x8cc_nextAreaId(0)
, x8d0_prevAreaId(kInvalidAreaId)
, x8d4_inputFrameIdx(0)
, x8d8_updateFrameIdx(0)
, x8dc_objectDrawToken(0)

, x8f0_shadowTex(gpSimplePool->GetObj("DefaultShadow"))
, x8fc_random(0)
, x900_random(nullptr)
, x904_gameState(kGS_Running)
, xb3c_initPhase(kIP_LoadWorld)

// based on map, uses the call with the count.
, xb84_camFilterPasses(CCameraFilterPass())

// TODO: should not be inlined, but the constructor above is inlined
, xd14_camBlurPasses(kCFS_Max, CCameraBlurPass())

, xeec_hintIdx(-1)
, xef0_hintPeriods(0)
, xef4_pendingScreenTex()
, xf08_pauseHudMessage(kInvalidAssetId)

, xf0c_escapeTimer(0.0f)
, xf10_escapeTotalTime(0.0f)
, xf14_curTimeMod900(0.0f)
, xf18_bossId(kInvalidUniqueId)
, xf1c_totalBossEnergy(0.0f)

, xf20_bossStringIdx(0)
, xf24_thermColdScale1(0.0f)
, xf28_thermColdScale2(0.0f)

, xf2c_viewportScaleX(1.f)
, xf30_viewportScaleY(1.f)
, xf34_thermalFlag(kTD_Bypass)

, xf38_skipCineSpecialFunc(kInvalidUniqueId)
, xf6c_playerActorHead(kInvalidUniqueId)
, xf70_currentMaze(nullptr)
, xf74_lastTrigger(kInvalidUniqueId)
, xf76_lastRelay(kInvalidUniqueId)

, xf78_hudMessageTime(0.0f)
, xf7c_projectedShadow(nullptr)
, xf80_hudMessageFrameCount(0)

, xf84_(kInvalidAssetId)
, xf88_(kInvalidAssetId)
, xf8c_(0.0f)
, xf90_deferredTransition(kSMT_InGame)

, xf94_24_readyToRender(false)
, xf94_25_quitGame(false)
, xf94_26_generatingObject(false)
, xf94_27_inMapScreen(false)
, xf94_28_inSaveUI(false)
, xf94_29_cinematicPause(false)
, xf94_30_fullThreat(false)

{
  x808_objectLists[0] = new CObjectList(kOL_All);
  x808_objectLists[1] = new CActorList();
  x808_objectLists[2] = new CPhysicsActorList();
  x808_objectLists[3] = new CGameCameraList();
  x808_objectLists[4] = new CGameLightList();
  x808_objectLists[5] = new CListeningAiList();
  x808_objectLists[6] = new CAiWaypointList();
  x808_objectLists[7] = new CPlatformAndDoorList();

  gpRender->SetDrawableCallback(RendererDrawCallback, this);
  CMemory::SetOutOfMemoryCallback(MemoryAllocatorAllocationFailedCallback, this);

  x90c_loaderFuncs.resize(x90c_loaderFuncs.capacity(), nullptr);
  x90c_loaderFuncs[kST_Trigger] = ScriptLoader::LoadTrigger;
  x90c_loaderFuncs[kST_DamageableTrigger] = ScriptLoader::LoadDamageableTrigger;
  x90c_loaderFuncs[kST_Actor] = ScriptLoader::LoadActor;
  x90c_loaderFuncs[kST_Enemy] = ScriptLoader::LoadEnemy;
  x90c_loaderFuncs[kST_Waypoint] = ScriptLoader::LoadWaypoint;
  x90c_loaderFuncs[kST_Door] = ScriptLoader::LoadDoor;
  x90c_loaderFuncs[kST_Effect] = ScriptLoader::LoadEffect;
  x90c_loaderFuncs[kST_Timer] = ScriptLoader::LoadTimer;
  x90c_loaderFuncs[kST_Counter] = ScriptLoader::LoadCounter;
  x90c_loaderFuncs[kST_Sound] = ScriptLoader::LoadSound;
  x90c_loaderFuncs[kST_Platform] = ScriptLoader::LoadPlatform;
  x90c_loaderFuncs[kST_Generator] = ScriptLoader::LoadGenerator;
  x90c_loaderFuncs[kST_Dock] = ScriptLoader::LoadDock;
  x90c_loaderFuncs[kST_Camera] = ScriptLoader::LoadCamera;
  x90c_loaderFuncs[kST_CameraWaypoint] = ScriptLoader::LoadCameraWaypoint;
  x90c_loaderFuncs[kST_NewIntroBoss] = ScriptLoader::LoadNewIntroBoss;
  x90c_loaderFuncs[kST_SpawnPoint] = ScriptLoader::LoadSpawnPoint;
  x90c_loaderFuncs[kST_CameraHint] = ScriptLoader::LoadCameraHint;
  x90c_loaderFuncs[kST_CameraHintTrigger] = ScriptLoader::LoadCameraHintTrigger;
  x90c_loaderFuncs[kST_Pickup] = ScriptLoader::LoadPickup;
  x90c_loaderFuncs[kST_Pickup] = ScriptLoader::LoadJumpPoint;
  x90c_loaderFuncs[kST_MemoryRelay] = ScriptLoader::LoadMemoryRelay;
  x90c_loaderFuncs[kST_RandomRelay] = ScriptLoader::LoadRandomRelay;
  x90c_loaderFuncs[kST_Relay] = ScriptLoader::LoadRelay;

  x90c_loaderFuncs[kST_Beetle] = ScriptLoader::LoadBeetle;
  x90c_loaderFuncs[kST_HUDMemo] = ScriptLoader::LoadHUDMemo;
  x90c_loaderFuncs[kST_CameraFilterKeyframe] = ScriptLoader::LoadCameraFilterKeyframe;
  x90c_loaderFuncs[kST_CameraBlurKeyframe] = ScriptLoader::LoadCameraBlurKeyframe;
  x90c_loaderFuncs[kST_Debris] = ScriptLoader::LoadDebris;
  x90c_loaderFuncs[kST_CameraShaker] = ScriptLoader::LoadCameraShaker;
  x90c_loaderFuncs[kST_ActorKeyframe] = ScriptLoader::LoadActorKeyframe;
  x90c_loaderFuncs[kST_AIKeyframe] = ScriptLoader::LoadAIKeyframe;
  x90c_loaderFuncs[kST_Water] = ScriptLoader::LoadWater;
  x90c_loaderFuncs[kST_Steam] = ScriptLoader::LoadSteam;
  x90c_loaderFuncs[kST_Ripple] = ScriptLoader::LoadRipple;
  x90c_loaderFuncs[kST_Warwasp] = ScriptLoader::LoadWarWasp;
  x90c_loaderFuncs[kST_MapStation] = ScriptLoader::LoadMapStation;
  x90c_loaderFuncs[kST_SpacePirate] = ScriptLoader::LoadSpacePirate;
  x90c_loaderFuncs[kST_CoverPoint] = ScriptLoader::LoadCoverPoint;
  x90c_loaderFuncs[kST_SpiderBallWaypoint] = ScriptLoader::LoadSpiderBallWaypoint;
  x90c_loaderFuncs[kST_BloodFlower] = ScriptLoader::LoadBloodFlower;
  x90c_loaderFuncs[kST_PathCamera] = ScriptLoader::LoadPathCamera;
  x90c_loaderFuncs[kST_GrapplePoint] = ScriptLoader::LoadGrapplePoint;
  x90c_loaderFuncs[kST_FlickerBat] = ScriptLoader::LoadFlickerBat;
  x90c_loaderFuncs[kST_ChozoGhost] = ScriptLoader::LoadChozoGhost;
  x90c_loaderFuncs[kST_PuddleSpore] = ScriptLoader::LoadPuddleSpore;
  x90c_loaderFuncs[kST_DebugCameraWaypoint] = ScriptLoader::LoadDebugCameraWaypoint;
  x90c_loaderFuncs[kST_SpiderBallAttractionSurface] = ScriptLoader::LoadSpiderBallAttractionSurface;
  x90c_loaderFuncs[kST_PuddleToadGamma] = ScriptLoader::LoadPuddleToadGamma;
  x90c_loaderFuncs[kST_FireFlea] = ScriptLoader::LoadFireFlea;
  x90c_loaderFuncs[kST_DistanceFog] = ScriptLoader::LoadDistanceFog;
  x90c_loaderFuncs[kST_DockAreaChange] = ScriptLoader::LoadDockAreaChange;
  x90c_loaderFuncs[kST_ActorRotate] = ScriptLoader::LoadActorRotate;
  x90c_loaderFuncs[kST_SpecialFunction] = ScriptLoader::LoadSpecialFunction;
  x90c_loaderFuncs[kST_Metaree] = ScriptLoader::LoadMetaree;
  x90c_loaderFuncs[kST_SpankWeed] = ScriptLoader::LoadSpankWeed;
  x90c_loaderFuncs[kST_Parasite] = ScriptLoader::LoadParasite;
  x90c_loaderFuncs[kST_PlayerHint] = ScriptLoader::LoadPlayerHint;
  x90c_loaderFuncs[kST_Ripper] = ScriptLoader::LoadRipper;
  x90c_loaderFuncs[kST_PickupGenerator] = ScriptLoader::LoadPickupGenerator;
  x90c_loaderFuncs[kST_PointOfInterest] = ScriptLoader::LoadPointOfInterest;
  x90c_loaderFuncs[kST_Drone] = ScriptLoader::LoadDrone;
  x90c_loaderFuncs[kST_Metroid] = ScriptLoader::LoadMetroid;
  x90c_loaderFuncs[kST_DebrisExtended] = ScriptLoader::LoadDebrisExtended;
  x90c_loaderFuncs[kST_BallTrigger] = ScriptLoader::LoadBallTrigger;
  x90c_loaderFuncs[kST_TargetingPoint] = ScriptLoader::LoadTargetingPoint;
  x90c_loaderFuncs[kST_EMPulse] = ScriptLoader::LoadEMPulse;
  x90c_loaderFuncs[kST_IceSheegoth] = ScriptLoader::LoadIceSheegoth;
  x90c_loaderFuncs[kST_PlayerActor] = ScriptLoader::LoadPlayerActor;
  x90c_loaderFuncs[kST_Flaahgra] = ScriptLoader::LoadFlaahgra;
  x90c_loaderFuncs[kST_AreaAttributes] = ScriptLoader::LoadAreaAttributes;
  x90c_loaderFuncs[kST_FishCloud] = ScriptLoader::LoadFishCloud;
  x90c_loaderFuncs[kST_FishCloudModifier] = ScriptLoader::LoadFishCloudModifier;
  x90c_loaderFuncs[kST_VisorFlare] = ScriptLoader::LoadVisorFlare;
  x90c_loaderFuncs[kST_WorldTeleporter] = ScriptLoader::LoadWorldTeleporter;
  x90c_loaderFuncs[kST_VisorGoo] = ScriptLoader::LoadVisorGoo;
  x90c_loaderFuncs[kST_JellyZap] = ScriptLoader::LoadJellyZap;
  x90c_loaderFuncs[kST_ControllerAction] = ScriptLoader::LoadControllerAction;
  x90c_loaderFuncs[kST_Switch] = ScriptLoader::LoadSwitch;
  x90c_loaderFuncs[kST_PlayerStateChange] = ScriptLoader::LoadPlayerStateChange;
  x90c_loaderFuncs[kST_Thardus] = ScriptLoader::LoadThardus;
  x90c_loaderFuncs[kST_SaveStation] = ScriptLoader::LoadSaveStation;
  x90c_loaderFuncs[kST_WallCrawlerSwarm] = ScriptLoader::LoadWallCrawlerSwarm;
  x90c_loaderFuncs[kST_AIJumpPoint] = ScriptLoader::LoadAiJumpPoint;
  x90c_loaderFuncs[kST_FlaahgraTentacle] = ScriptLoader::LoadFlaahgraTentacle;
  x90c_loaderFuncs[kST_RoomAcoustics] = ScriptLoader::LoadRoomAcoustics;
  x90c_loaderFuncs[kST_FlyingPirate] = ScriptLoader::LoadFlyingPirate;
  x90c_loaderFuncs[kST_ColorModulate] = ScriptLoader::LoadColorModulate;
  x90c_loaderFuncs[kST_ThardusRockProjectile] = ScriptLoader::LoadThardusRockProjectile;
  x90c_loaderFuncs[kST_Midi] = ScriptLoader::LoadMidi;
  x90c_loaderFuncs[kST_StreamedAudio] = ScriptLoader::LoadStreamedAudio; // Or music?
  x90c_loaderFuncs[kST_WorldTeleporterToo] = ScriptLoader::LoadWorldTeleporter;
  x90c_loaderFuncs[kST_Repulsor] = ScriptLoader::LoadRepulsor;
  x90c_loaderFuncs[kST_GunTurret] = ScriptLoader::LoadGunTurret;
  x90c_loaderFuncs[kST_FogVolume] = ScriptLoader::LoadFogVolume;
  x90c_loaderFuncs[kST_Babygoth] = ScriptLoader::LoadBabygoth;
  x90c_loaderFuncs[kST_Eyeball] = ScriptLoader::LoadEyeball;
  x90c_loaderFuncs[kST_RadialDamage] = ScriptLoader::LoadRadialDamage;
  x90c_loaderFuncs[kST_CameraPitchVolume] =
      ScriptLoader::LoadCameraPitchVolume; // LoadScriptCameraPitchVolume
  x90c_loaderFuncs[kST_ElitePirate] = ScriptLoader::LoadElitePirate;
  x90c_loaderFuncs[kST_MetroidBeta] = ScriptLoader::LoadMetroidBeta;
  x90c_loaderFuncs[kST_EnvFxDensityController] = ScriptLoader::LoadEnvFxDensityController;
  x90c_loaderFuncs[kST_Magdolite] = ScriptLoader::LoadMagdolite;
  x90c_loaderFuncs[kST_TeamAIMgr] = ScriptLoader::LoadTeamAIMgr;
  x90c_loaderFuncs[kST_SnakeWeedSwarm] = ScriptLoader::LoadSnakeWeedSwarm;
  x90c_loaderFuncs[kST_ActorContraption] = ScriptLoader::LoadActorContraption;
  x90c_loaderFuncs[kST_AtomicAlpha] = ScriptLoader::LoadAtomicAlpha;
  x90c_loaderFuncs[kST_Oculus] = ScriptLoader::LoadOculus;
  x90c_loaderFuncs[kST_Geemer] = ScriptLoader::LoadGeemer;
  x90c_loaderFuncs[kST_SpindleCamera] = ScriptLoader::LoadSpindleCamera;
  x90c_loaderFuncs[kST_RumbleEffect] = ScriptLoader::LoadRumbleEffect;
  x90c_loaderFuncs[kST_AmbientAI] = ScriptLoader::LoadAmbientAI;
  x90c_loaderFuncs[0x76] = NULL;
  x90c_loaderFuncs[kST_AtomicBeta] = ScriptLoader::LoadAtomicBeta;
  x90c_loaderFuncs[kST_IceZoomer] = ScriptLoader::LoadIceZoomer;
  x90c_loaderFuncs[kST_Puffer] = ScriptLoader::LoadPuffer;
  x90c_loaderFuncs[kST_Tryclops] = ScriptLoader::LoadTryclops;
  x90c_loaderFuncs[kST_Ridley] = ScriptLoader::LoadRidley;
  x90c_loaderFuncs[kST_Seedling] = ScriptLoader::LoadSeedling;
  x90c_loaderFuncs[kST_ThermalHeatFader] = ScriptLoader::LoadThermalHeatFader;
  x90c_loaderFuncs[0x7e] = NULL;
  x90c_loaderFuncs[kST_Burrower] = ScriptLoader::LoadBurrower;
  x90c_loaderFuncs[kST_ScriptBeam] = ScriptLoader::LoadBeam;
  x90c_loaderFuncs[0x80] = NULL;
  x90c_loaderFuncs[kST_MetroidPrimeStage1] = ScriptLoader::LoadMetroidPrimeStage1;
  x90c_loaderFuncs[0x1f] = NULL;
  x90c_loaderFuncs[0x23] = NULL;
  x90c_loaderFuncs[kST_WorldLightFader] = ScriptLoader::LoadWorldLightFader;
  x90c_loaderFuncs[kST_MetroidPrimeStage2] = ScriptLoader::LoadMetroidPrimeEssence;
  x90c_loaderFuncs[kST_MazeNode] = ScriptLoader::LoadMazeNode;
  x90c_loaderFuncs[kST_OmegaPirate] = ScriptLoader::LoadOmegaPirate;
  x90c_loaderFuncs[kST_PhazonPool] = ScriptLoader::LoadPhazonPool;
  x90c_loaderFuncs[kST_PhazonHealingNodule] = ScriptLoader::LoadPhazonHealingNodule;
  x90c_loaderFuncs[kST_NewCameraShaker] = ScriptLoader::LoadNewCameraShaker;
  x90c_loaderFuncs[kST_ShadowProjector] = ScriptLoader::LoadShadowProjector;
  x90c_loaderFuncs[kST_EnergyBall] = ScriptLoader::LoadEnergyBall;

  CGameCollision::InitCollision();
  CMemory::OffsetFakeStatics(x808_objectLists.size() * sizeof(CObjectList) + 0x11c);
  ControlMapper::ResetCommandFilters();
  x8f0_shadowTex.Lock();
}

CStateManager::~CStateManager() {
  CMemory::OffsetFakeStatics(
      -(x808_objectLists.size() * sizeof(CObjectList) + 0x11c)); // TODO what is this 11c?
  x88c_rumbleManager->HardStopAll();
  x880_envFxManager->Cleanup();

  x900_random = &x8fc_random;

  CObjectList& list = *x808_objectLists[0];
  ClearGraveyard();
  for (int i = 0; i != kMaxObjects; ++i) {
    CEntity* ent = list[i];
    if (ent && ent->GetUniqueId() != x84c_player->GetUniqueId()) {
      ent->AcceptScriptMsg(kSM_Deleted, kInvalidUniqueId, *this);
      RemoveObject(ent->GetUniqueId());
      delete ent;
    }
  }
  ClearGraveyard();
  x84c_player->AcceptScriptMsg(kSM_Deleted, kInvalidUniqueId, *this);
  RemoveObject(x84c_player->GetUniqueId());
  delete x84c_player;
  x84c_player = nullptr;
  CCollisionPrimitive::Uninitialize();

  CMemory::SetOutOfMemoryCallback(nullptr, nullptr);
}

TUniqueId CStateManager::AllocateUniqueId() {
  const ushort lastIndex = x0_nextFreeIndex;
  ushort ourIndex;
  do {
    ourIndex = x0_nextFreeIndex;
    x0_nextFreeIndex = (ourIndex + 1) & 0x3ff;
    if (x0_nextFreeIndex == lastIndex) {
      rs_debugger_printf("Object list full!");
    }
  } while (ObjectListById(kOL_All).GetObjectByIndex(ourIndex) != nullptr);

  x4_objectIndexArray[ourIndex] = (x4_objectIndexArray[ourIndex] + 1) & 0x3f;
  if (TUniqueId(x4_objectIndexArray[ourIndex], ourIndex) == kInvalidUniqueId) {
    x4_objectIndexArray[ourIndex] = 0;
  }

  return TUniqueId(x4_objectIndexArray[ourIndex], ourIndex);
}

CRayCastResult CStateManager::RayStaticIntersection(const CVector3f& pos, const CVector3f& dir,
                                                    float length,
                                                    const CMaterialFilter& filter) const {
  return CGameCollision::RayStaticIntersection(*this, pos, dir, length, filter);
}

void CStateManager::RemoveObject(TUniqueId id) {}

void CStateManager::ClearGraveyard() {}

const bool CStateManager::MemoryAllocatorAllocationFailedCallback(const void* obj, unsigned int) {
  return static_cast< CStateManager* >(const_cast< void* >(obj))->SwapOutAllPossibleMemory();
}

bool CStateManager::SwapOutAllPossibleMemory() {
  sub_8036ccfc();
  CARAMManager::WaitForAllDMAsToComplete();
  CARAMToken::UpdateAllDMAs();
  return true;
}

void CStateManager::RendererDrawCallback(const void*, const void*, int) {}
