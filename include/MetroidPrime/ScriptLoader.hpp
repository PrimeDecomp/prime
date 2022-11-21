#ifndef _SCRIPTLOADER
#define _SCRIPTLOADER

class CEntity;
class CStateManager;
class CInputStream;
class CEntityInfo;
class CTransform4f;
class CVector3f;

typedef CEntity* (*FScriptLoader)(CStateManager& mgr, CInputStream& in, int propCount,
                                  const CEntityInfo& info);

class ScriptLoader {
public:
  static CEntity* LoadActor(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadEnemy(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadWaypoint(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadDoor(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadTrigger(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadTimer(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadCounter(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadEffect(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadPlatform(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadSound(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadGenerator(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadDock(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadCamera(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadCameraWaypoint(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadNewIntroBoss(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadSpawnPoint(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadCameraHint(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadPickup(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadJumpPoint(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadMemoryRelay(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadRandomRelay(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadRelay(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadBeetle(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadHUDMemo(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadCameraFilterKeyframe(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadCameraBlurKeyframe(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadDamageableTrigger(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadDebris(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadCameraShaker(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadActorKeyframe(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadWater(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadWarWasp(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadMapStation(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadSpacePirate(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadFlyingPirate(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadElitePirate(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadMetroidBeta(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadChozoGhost(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadCoverPoint(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadSpiderBallWaypoint(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadBloodFlower(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadFlickerBat(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadPathCamera(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadGrapplePoint(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadPuddleSpore(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadDebugCameraWaypoint(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadSpiderBallAttractionSurface(CStateManager&, CInputStream&, int,
                                                  const CEntityInfo&);
  static CEntity* LoadPuddleToadGamma(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadDistanceFog(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadFireFlea(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadMetaree(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadDockAreaChange(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadActorRotate(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadSpecialFunction(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadSpankWeed(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadParasite(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadPlayerHint(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadRipper(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadPickupGenerator(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadAIKeyframe(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadPointOfInterest(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadDrone(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadMetroid(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadDebrisExtended(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadSteam(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadRipple(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadBallTrigger(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadTargetingPoint(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadEMPulse(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadIceSheegoth(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadPlayerActor(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadFlaahgra(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadAreaAttributes(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadFishCloud(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadFishCloudModifier(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadVisorFlare(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadWorldTeleporter(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadVisorGoo(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadJellyZap(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadControllerAction(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadSwitch(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadPlayerStateChange(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadThardus(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadSaveStation(CStateManager&, CInputStream&, int, const CEntityInfo&);
  
  static CEntity* LoadWallCrawlerSwarm(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadAiJumpPoint(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadFlaahgraTentacle(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadRoomAcoustics(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadColorModulate(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadThardusRockProjectile(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadMidi(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadStreamedAudio(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadRepulsor(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadGunTurret(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadFogVolume(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadBabygoth(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadEyeball(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadRadialDamage(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadCameraPitchVolume(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadEnvFxDensityController(CStateManager&, CInputStream&, int,
                                             const CEntityInfo&);
  static CEntity* LoadMagdolite(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadTeamAIMgr(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadSnakeWeedSwarm(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadActorContraption(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadOculus(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadGeemer(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadSpindleCamera(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadAtomicAlpha(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadCameraHintTrigger(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadRumbleEffect(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadAmbientAI(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadAtomicBeta(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadIceZoomer(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadPuffer(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadTryclops(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadRidley(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadSeedling(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadThermalHeatFader(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadBurrower(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadBeam(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadWorldLightFader(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadMetroidPrimeEssence(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadMetroidPrimeStage1(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadMazeNode(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadOmegaPirate(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadPhazonPool(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadPhazonHealingNodule(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadNewCameraShaker(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadShadowProjector(CStateManager&, CInputStream&, int, const CEntityInfo&);
  static CEntity* LoadEnergyBall(CStateManager&, CInputStream&, int, const CEntityInfo&);
};

#endif // _SCRIPTLOADER