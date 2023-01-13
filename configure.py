#!/usr/bin/env python3
LIBS = [
    {
        "lib": "TRK_MINNOW_DOLPHIN",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["MetroTRK/mslsupp", True],
        ],
    },
    {
        "lib": "MetroidPrimeCW",
        "cflags": "$cflags_retro",
        "mwcc_version": "1.3.2",
        "host": True,
        "objects": [
            ["MetroidPrime/main", False],
            "MetroidPrime/IRenderer",
            ["MetroidPrime/Cameras/CCameraManager", False],
            ["MetroidPrime/CControlMapper", True],
            "MetroidPrime/Cameras/CFirstPersonCamera",
            ["MetroidPrime/CObjectList", True],
            "MetroidPrime/Player/CPlayer",
            ["MetroidPrime/CAxisAngle", True],
            ["MetroidPrime/CEulerAngles", False],
            ["MetroidPrime/CArchMsgParmUserInput", True],
            "MetroidPrime/CFrontEndUI",
            ["MetroidPrime/CInputGenerator", False],
            ["MetroidPrime/CMainFlow", False],
            "MetroidPrime/CMFGame",
            "MetroidPrime/CCredits",
            "MetroidPrime/CSplashScreen",
            ["MetroidPrime/CInstruction", True],
            ["MetroidPrime/CAnimData", False],
            "MetroidPrime/Factories/CCharacterFactory",
            "MetroidPrime/Factories/CAssetFactory",
            ["MetroidPrime/Tweaks/CTweakPlayer", True],
            "MetroidPrime/Tweaks/CTweaks",
            ["MetroidPrime/Tweaks/CTweakGame", True],
            "MetroidPrime/CGameProjectile",
            ["MetroidPrime/Player/CPlayerGun", False],
            ["MetroidPrime/CStateManager", False],
            ["MetroidPrime/CEntity", True],
            ["MetroidPrime/CArchMsgParmInt32", True],
            ["MetroidPrime/CArchMsgParmInt32Int32VoidPtr", True],
            ["MetroidPrime/CArchMsgParmNull", True],
            ["MetroidPrime/CArchMsgParmReal32", True],
            ["MetroidPrime/Decode", True],
            ["MetroidPrime/CIOWinManager", False],
            ["MetroidPrime/CIOWin", True],
            ["MetroidPrime/CActor", False],
            "MetroidPrime/CWorld",
            ["MetroidPrime/Tweaks/CTweakParticle", True],
            "MetroidPrime/Clamp_int",
            ["MetroidPrime/CArchMsgParmControllerStatus", True],
            ["MetroidPrime/CExplosion", False],
            ["MetroidPrime/CEffect", True],
            "MetroidPrime/Cameras/CGameCamera",
            "MetroidPrime/CGameArea",
            "MetroidPrime/HUD/CSamusHud",
            ["MetroidPrime/CAnimationDatabaseGame", False],
            "MetroidPrime/CTransitionDatabaseGame",
            ["MetroidPrime/Tweaks/CTweakPlayerControl", True],
            "MetroidPrime/Tweaks/CTweakPlayerGun",
            "MetroidPrime/CPauseScreen",
            "MetroidPrime/Tweaks/CTweakGui",
            ["MetroidPrime/ScriptObjects/CScriptActor", False],
            ["MetroidPrime/ScriptObjects/CScriptTrigger", False],
            ["MetroidPrime/ScriptObjects/CScriptWaypoint", True],
            "MetroidPrime/Enemies/CPatterned",
            "MetroidPrime/ScriptObjects/CScriptDoor",
            ["MetroidPrime/Enemies/CStateMachine", False],
            ["MetroidPrime/CMapArea", False],
            ["MetroidPrime/Cameras/CBallCamera", False],
            "MetroidPrime/ScriptObjects/CScriptEffect",
            "MetroidPrime/Weapons/CBomb",
            ["MetroidPrime/Tweaks/CTweakBall", True],
            ["MetroidPrime/Player/CPlayerState", False],
            ["MetroidPrime/ScriptObjects/CScriptTimer", True],
            ["MetroidPrime/Cameras/CCinematicCamera", False],
            "MetroidPrime/CAutoMapper",
            ["MetroidPrime/ScriptObjects/CScriptCounter", True],
            "MetroidPrime/CMapWorld",
            "MetroidPrime/Enemies/CAi",
            ["MetroidPrime/Enemies/PatternedCastTo", True],
            ["MetroidPrime/TCastTo", True],
            "MetroidPrime/ScriptObjects/CScriptSound",
            ["MetroidPrime/ScriptObjects/CScriptPlatform", False],
            ["MetroidPrime/UserNames", True],
            ["MetroidPrime/ScriptObjects/CScriptGenerator", False],
            ["MetroidPrime/ScriptObjects/CScriptCameraWaypoint", False],
            ["MetroidPrime/CGameLight", True],
            "MetroidPrime/Tweaks/CTweakTargeting",
            ["MetroidPrime/Tweaks/CTweakAutoMapper", True],
            ["MetroidPrime/CParticleGenInfoGeneric", True],
            ["MetroidPrime/CParticleGenInfo", True],
            "MetroidPrime/CParticleDatabase",
            "MetroidPrime/Tweaks/CTweakGunRes",
            "MetroidPrime/CTargetReticles",
            ["MetroidPrime/CWeaponMgr", False],
            ["MetroidPrime/ScriptObjects/CScriptPickup", True],
            ["MetroidPrime/CDamageInfo", False],
            ["MetroidPrime/CMemoryDrawEnum", True],
            "MetroidPrime/ScriptObjects/CScriptDock",
            "MetroidPrime/ScriptObjects/CScriptCameraHint",
            ["MetroidPrime/ScriptLoader", False],
            "MetroidPrime/CSamusDoll",
            "MetroidPrime/Factories/CStateMachineFactory",
            ["MetroidPrime/Weapons/CPlasmaBeam", False],
            ["MetroidPrime/Weapons/CPowerBeam", False],
            ["MetroidPrime/Weapons/CWaveBeam", False],
            ["MetroidPrime/Weapons/CIceBeam", False],
            ["MetroidPrime/CScriptMailbox", False],
            ["MetroidPrime/ScriptObjects/CScriptRelay", True],
            ["MetroidPrime/ScriptObjects/CScriptSpawnPoint", False],
            ["MetroidPrime/ScriptObjects/CScriptRandomRelay", False],
            "MetroidPrime/Enemies/CBeetle",
            ["MetroidPrime/HUD/CHUDMemoParms", True],
            ["MetroidPrime/ScriptObjects/CScriptHUDMemo", True],
            ["MetroidPrime/CMappableObject", False],
            ["MetroidPrime/Player/CPlayerCameraBob", False],
            ["MetroidPrime/ScriptObjects/CScriptCameraFilterKeyframe", True],
            ["MetroidPrime/ScriptObjects/CScriptCameraBlurKeyframe", True],
            ["MetroidPrime/Cameras/CCameraFilter", False],
            "MetroidPrime/Player/CMorphBall",
            "MetroidPrime/ScriptObjects/CScriptDamageableTrigger",
            "MetroidPrime/ScriptObjects/CScriptDebris",
            ["MetroidPrime/ScriptObjects/CScriptCameraShaker", True],
            ["MetroidPrime/ScriptObjects/CScriptActorKeyframe", False],
            ["MetroidPrime/CConsoleOutputWindow", False],
            "MetroidPrime/ScriptObjects/CScriptWater",
            ["MetroidPrime/Weapons/CWeapon", False],
            ["MetroidPrime/CDamageVulnerability", False],
            ["MetroidPrime/CActorLights", False],
            ["MetroidPrime/Enemies/CPatternedInfo", True],
            ["MetroidPrime/CSimpleShadow", False],
            ["MetroidPrime/CActorParameters", True],
            "MetroidPrime/CInGameGuiManager",
            "MetroidPrime/Enemies/CWarWasp",
            ["MetroidPrime/CWorldShadow", False],
            ["MetroidPrime/CAudioStateWin", True],
            "MetroidPrime/Player/CPlayerVisor",
            "MetroidPrime/CModelData",
            "MetroidPrime/CDecalManager",
            "MetroidPrime/ScriptObjects/CScriptSpiderBallWaypoint",
            "MetroidPrime/Enemies/CBloodFlower",
            ["MetroidPrime/TGameTypes", True],
            ["MetroidPrime/CPhysicsActor", False],
            ["MetroidPrime/CPhysicsState", True],
            ["MetroidPrime/CRipple", False],
            "MetroidPrime/CFluidUVMotion",
            ["MetroidPrime/CRippleManager", False],
            ["MetroidPrime/Player/CGrappleArm", False],
            "MetroidPrime/Enemies/CSpacePirate",
            ["MetroidPrime/ScriptObjects/CScriptCoverPoint", False],
            "MetroidPrime/Cameras/CPathCamera",
            "MetroidPrime/CFluidPlane",
            "MetroidPrime/CFluidPlaneManager",
            ["MetroidPrime/ScriptObjects/CScriptGrapplePoint", True],
            ["MetroidPrime/ScriptObjects/CHUDBillboardEffect", False],
            "MetroidPrime/Enemies/CFlickerBat",
            "MetroidPrime/BodyState/CBodyStateCmdMgr",
            ["MetroidPrime/BodyState/CBodyStateInfo", False],
            ["MetroidPrime/BodyState/CBSAttack", False],
            ["MetroidPrime/BodyState/CBSDie", True],
            ["MetroidPrime/BodyState/CBSFall", False],
            ["MetroidPrime/BodyState/CBSGetup", True],
            ["MetroidPrime/BodyState/CBSKnockBack", False],
            ["MetroidPrime/BodyState/CBSLieOnGround", True],
            "MetroidPrime/BodyState/CBSLocomotion",
            ["MetroidPrime/BodyState/CBSStep", True],
            ["MetroidPrime/BodyState/CBSTurn", False],
            "MetroidPrime/BodyState/CBodyController",
            ["MetroidPrime/BodyState/CBSLoopAttack", False],
            ["MetroidPrime/Weapons/CTargetableProjectile", False],
            ["MetroidPrime/BodyState/CBSLoopReaction", False],
            "MetroidPrime/CSteeringBehaviors",
            ["MetroidPrime/BodyState/CBSGroundHit", False],
            "MetroidPrime/Enemies/CChozoGhost",
            "MetroidPrime/Enemies/CFireFlea",
            ["MetroidPrime/BodyState/CBSSlide", False],
            "MetroidPrime/BodyState/CBSHurled",
            "MetroidPrime/BodyState/CBSJump",
            ["MetroidPrime/BodyState/CBSGenerate", True],
            "MetroidPrime/Enemies/CPuddleSpore",
            ["MetroidPrime/BodyState/CBSTaunt", True],
            "MetroidPrime/CSortedLists",
            ["MetroidPrime/ScriptObjects/CScriptDebugCameraWaypoint", True],
            ["MetroidPrime/ScriptObjects/CScriptSpiderBallAttractionSurface", False],
            ["MetroidPrime/BodyState/CBSScripted", True],
            "MetroidPrime/Enemies/CPuddleToadGamma",
            ["MetroidPrime/ScriptObjects/CScriptDistanceFog", False],
            ["MetroidPrime/BodyState/CBSProjectileAttack", True],
            ["MetroidPrime/Weapons/CPowerBomb", False],
            ["MetroidPrime/Enemies/CMetaree", False],
            ["MetroidPrime/ScriptObjects/CScriptDockAreaChange", False],
            ["MetroidPrime/ScriptObjects/CScriptSpecialFunction", False],
            ["MetroidPrime/ScriptObjects/CScriptActorRotate", False],
            ["MetroidPrime/Player/CFidget", True],
            "MetroidPrime/Enemies/CSpankWeed",
            "MetroidPrime/Enemies/CParasite",
            ["MetroidPrime/Player/CSamusFaceReflection", False],
            ["MetroidPrime/ScriptObjects/CScriptPlayerHint", True],
            "MetroidPrime/Enemies/CRipper",
            "MetroidPrime/Cameras/CCameraShakeData",
            ["MetroidPrime/ScriptObjects/CScriptPickupGenerator", False],
            ["MetroidPrime/ScriptObjects/CScriptPointOfInterest", True],
            "MetroidPrime/Enemies/CDrone",
            "MetroidPrime/CMapWorldInfo",
            ["MetroidPrime/Factories/CScannableObjectInfo", False],
            "MetroidPrime/Enemies/CMetroid",
            "MetroidPrime/Player/CScanDisplay",
            ["MetroidPrime/ScriptObjects/CScriptSteam", False],
            ["MetroidPrime/ScriptObjects/CScriptRipple", False],
            "MetroidPrime/CBoneTracking",
            ["MetroidPrime/Player/CFaceplateDecoration", False],
            ["MetroidPrime/BodyState/CBSCover", False],
            ["MetroidPrime/ScriptObjects/CScriptBallTrigger", True],
            "MetroidPrime/Weapons/CPlasmaProjectile",
            "MetroidPrime/Player/CPlayerOrbit",
            "MetroidPrime/CGameCollision",
            ["MetroidPrime/CBallFilter", True],
            ["MetroidPrime/CAABoxFilter", True],
            "MetroidPrime/CGroundMovement",
            ["MetroidPrime/Enemies/CNewIntroBoss", False],
            "MetroidPrime/Weapons/CPhazonBeam",
            ["MetroidPrime/ScriptObjects/CScriptTargetingPoint", True],
            "MetroidPrime/BodyState/CBSWallHang",
            ["MetroidPrime/ScriptObjects/CScriptEMPulse", False],
            "MetroidPrime/HUD/CHudDecoInterface",
            "MetroidPrime/Weapons/CFlameThrower",
            ["MetroidPrime/Weapons/CBeamProjectile", False],
            "MetroidPrime/CFluidPlaneCPU",
            "MetroidPrime/CFluidPlaneDoor",
            ["MetroidPrime/ScriptObjects/CScriptRoomAcoustics", True],
            "MetroidPrime/Enemies/CIceSheegoth",
            ["MetroidPrime/CCollisionActorManager", False],
            "MetroidPrime/CCollisionActor",
            "MetroidPrime/ScriptObjects/CScriptPlayerActor",
            "MetroidPrime/Tweaks/CTweakPlayerRes",
            ["MetroidPrime/Enemies/CBurstFire", True],
            "MetroidPrime/Enemies/CFlaahgra",
            "MetroidPrime/Player/CPlayerEnergyDrain",
            ["MetroidPrime/CFlameWarp", False],
            "MetroidPrime/Weapons/CIceImpact",
            ["MetroidPrime/GameObjectLists", True],
            "MetroidPrime/Weapons/CAuxWeapon",
            ["MetroidPrime/Weapons/CGunWeapon", False],
            ["MetroidPrime/ScriptObjects/CScriptAreaAttributes", False],
            "MetroidPrime/Weapons/CWaveBuster",
            ["MetroidPrime/Player/CStaticInterference", False],
            "MetroidPrime/Enemies/CMetroidBeta",
            "MetroidPrime/PathFinding/CPathFindSearch",
            "MetroidPrime/PathFinding/CPathFindRegion",
            "MetroidPrime/PathFinding/CPathFindArea",
            ["MetroidPrime/Weapons/GunController/CGunController", False],
            ["MetroidPrime/Weapons/GunController/CGSFreeLook", False],
            ["MetroidPrime/Weapons/GunController/CGSComboFire", True],
            ["MetroidPrime/HUD/CHudBallInterface", False],
            ["MetroidPrime/Tweaks/CTweakGuiColors", False],
            "MetroidPrime/ScriptObjects/CFishCloud",
            ["MetroidPrime/CHealthInfo", True],
            "MetroidPrime/Player/CGameState",
            ["MetroidPrime/ScriptObjects/CScriptVisorFlare", False],
            ["MetroidPrime/ScriptObjects/CScriptWorldTeleporter", False],
            ["MetroidPrime/ScriptObjects/CScriptVisorGoo", False],
            "MetroidPrime/Enemies/CJellyZap",
            ["MetroidPrime/ScriptObjects/CScriptControllerAction", True],
            ["MetroidPrime/Weapons/GunController/CGunMotion", False],
            ["MetroidPrime/ScriptObjects/CScriptSwitch", True],
            ["MetroidPrime/BodyState/CABSIdle", True],
            ["MetroidPrime/BodyState/CABSFlinch", True],
            ["MetroidPrime/BodyState/CABSAim", False],
            ["MetroidPrime/ScriptObjects/CScriptPlayerStateChange", True],
            "MetroidPrime/Enemies/CThardus",
            "MetroidPrime/CActorParticles",
            "MetroidPrime/Enemies/CWallCrawlerSwarm",
            ["MetroidPrime/ScriptObjects/CScriptAiJumpPoint", True],
            "MetroidPrime/CMessageScreen",
            "MetroidPrime/Enemies/CFlaahgraTentacle",
            ["MetroidPrime/Weapons/GunController/CGSFidget", True],
            ["MetroidPrime/BodyState/CABSReaction", True],
            "MetroidPrime/Weapons/CIceProjectile",
            "MetroidPrime/Enemies/CFlyingPirate",
            "MetroidPrime/ScriptObjects/CScriptColorModulate",
            "MetroidPrime/CMapUniverse",
            "MetroidPrime/Enemies/CThardusRockProjectile",
            "MetroidPrime/CInventoryScreen",
            ["MetroidPrime/CVisorFlare", False],
            ["MetroidPrime/Enemies/CFlaahgraPlants", True],
            "MetroidPrime/CWorldTransManager",
            ["MetroidPrime/ScriptObjects/CScriptMidi", False],
            ["MetroidPrime/ScriptObjects/CScriptStreamedAudio", False],
            "MetroidPrime/CRagDoll",
            ["MetroidPrime/Player/CGameOptions", False],
            ["MetroidPrime/ScriptObjects/CRepulsor", True],
            "MetroidPrime/CEnvFxManager",
            "MetroidPrime/Weapons/CEnergyProjectile",
            "MetroidPrime/ScriptObjects/CScriptGunTurret",
            ["MetroidPrime/Weapons/CProjectileInfo", True],
            "MetroidPrime/CInGameTweakManager",
            "MetroidPrime/Enemies/CBabygoth",
            "MetroidPrime/Enemies/CEyeBall",
            "MetroidPrime/CIkChain",
            ["MetroidPrime/ScriptObjects/CScriptCameraPitchVolume", True],
            "MetroidPrime/RumbleFxTable",
            "MetroidPrime/Enemies/CElitePirate",
            ["MetroidPrime/CRumbleManager", True],
            "MetroidPrime/Enemies/CBouncyGrenade",
            "MetroidPrime/Enemies/CGrenadeLauncher",
            "MetroidPrime/Weapons/CShockWave",
            ["MetroidPrime/Enemies/CRipperControlledPlatform", True],
            "MetroidPrime/Enemies/CKnockBackController",
            ["MetroidPrime/Player/CWorldLayerState", False],
            "MetroidPrime/Enemies/CMagdolite",
            "MetroidPrime/Enemies/CTeamAiMgr",
            "MetroidPrime/Enemies/CSnakeWeedSwarm",
            "MetroidPrime/Cameras/CBallCameraFailsafeState",
            "MetroidPrime/Enemies/CActorContraption",
            "MetroidPrime/ScriptObjects/CScriptSpindleCamera",
            ["MetroidPrime/ScriptObjects/CScriptMemoryRelay", True],
            "MetroidPrime/CPauseScreenFrame",
            "MetroidPrime/Enemies/CAtomicAlpha",
            "MetroidPrime/CLogBookScreen",
            ["MetroidPrime/CGBASupport", True],
            "MetroidPrime/Player/CWorldSaveGameInfo",
            ["MetroidPrime/ScriptObjects/CScriptCameraHintTrigger", True],
            ["MetroidPrime/Enemies/CAmbientAI", True],
            ["MetroidPrime/CMemoryCardDriver", False],
            "MetroidPrime/CSaveGameScreen",
            "MetroidPrime/Enemies/CAtomicBeta",
            ["MetroidPrime/Weapons/CElectricBeamProjectile", False],
            "MetroidPrime/Enemies/CRidley",
            ["MetroidPrime/Enemies/CPuffer", False],
            ["MetroidPrime/ScriptObjects/CFire", False],
            ["MetroidPrime/CPauseScreenBlur", True],
            "MetroidPrime/Enemies/CTryclops",
            "MetroidPrime/Weapons/CNewFlameThrower",
            "MetroidPrime/Cameras/CInterpolationCamera",
            "MetroidPrime/Enemies/CSeedling",
            "MetroidPrime/Player/CGameHintInfo",
            "MetroidPrime/Enemies/CWallWalker",
            ["MetroidPrime/CErrorOutputWindow", False],
            ["MetroidPrime/CRainSplashGenerator", False],
            "MetroidPrime/Factories/CWorldSaveGameInfoFactory",
            "MetroidPrime/CFluidPlaneRender",
            "MetroidPrime/Enemies/CBurrower",
            "MetroidPrime/Enemies/CMetroidPrimeExo",
            ["MetroidPrime/ScriptObjects/CScriptBeam", True],
            "MetroidPrime/Enemies/CMetroidPrimeEssence",
            "MetroidPrime/Enemies/CMetroidPrimeRelay",
            "MetroidPrime/Player/CPlayerDynamics",
            ["MetroidPrime/ScriptObjects/CScriptMazeNode", False],
            ["MetroidPrime/Weapons/WeaponTypes", False],
            "MetroidPrime/Enemies/COmegaPirate",
            "MetroidPrime/Enemies/CPhazonPool",
            "MetroidPrime/CNESEmulator",
            "MetroidPrime/Enemies/CPhazonHealingNodule",
            "MetroidPrime/Player/CMorphBallShadow",
            "MetroidPrime/Player/CPlayerInputFilter",
            "MetroidPrime/CSlideShow",
            ["MetroidPrime/Tweaks/CTweakSlideShow", True],
            "MetroidPrime/CArtifactDoll",
            ["MetroidPrime/CProjectedShadow", False],
            ["MetroidPrime/CPreFrontEnd", True],
            ["MetroidPrime/CGameCubeDoll", False],
            ["MetroidPrime/ScriptObjects/CScriptProjectedShadow", False],
            "MetroidPrime/ScriptObjects/CEnergyBall",
            ["MetroidPrime/Enemies/CMetroidPrimeProjectile", True],
            ["MetroidPrime/Enemies/SPositionHistory", True],
        ],
    },
    {
        "lib": "WorldFormatCW",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_retro",
        "host": True,
        "objects": [
            "WorldFormat/CAreaOctTree_Tests",
            ["WorldFormat/CCollisionSurface", True],
            ["WorldFormat/CMetroidModelInstance", True],
            "WorldFormat/CAreaBspTree",
            "WorldFormat/CAreaOctTree",
            ["WorldFormat/CMetroidAreaCollider", False],
            ["WorldFormat/CWorldLight", False],
            "WorldFormat/COBBTree",
            "WorldFormat/CCollidableOBBTree",
            "WorldFormat/CCollidableOBBTreeGroup",
            "WorldFormat/CPVSAreaSet",
            "WorldFormat/CAreaRenderOctTree",
        ],
    },
    {
        "lib": "WeaponsCW",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_retro",
        "host": True,
        "objects": [
            "Weapons/CProjectileWeapon",
            "Weapons/CProjectileWeaponDataFactory",
            "Weapons/CCollisionResponseData",
            ["Weapons/IWeaponRenderer", True],
            "Weapons/CDecalDataFactory",
            ["Weapons/CDecal", False],
            ["Weapons/CWeaponDescription", True],
            ["Weapons/CDecalDescription", True],
        ],
    },
    {
        "lib": "MetaRenderCW",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_retro",
        "host": True,
        "objects": ["MetaRender/CCubeRenderer"],
    },
    {
        "lib": "GuiSysCW",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_retro",
        "host": True,
        "objects": [
            ["GuiSys/CAuiMain", True],
            "GuiSys/CAuiMeter",
            "GuiSys/CGuiGroup",
            "GuiSys/CGuiHeadWidget",
            "GuiSys/CGuiLight",
            "GuiSys/CGuiModel",
            ["GuiSys/CGuiObject", False],
            "GuiSys/CGuiPane",
            "GuiSys/CGuiSliderGroup",
            ["GuiSys/CGuiSys", True],
            "GuiSys/CGuiTableGroup",
            "GuiSys/CGuiTextPane",
            "GuiSys/CGuiTextSupport",
            "GuiSys/CGuiWidget",
            "GuiSys/CGuiWidgetIdDB",
            ["GuiSys/CGuiWidgetDrawParms", True],
            "GuiSys/CAuiEnergyBarT01",
            "GuiSys/CAuiImagePane",
            ["GuiSys/CRepeatState", True],
        ],
    },
    {
        "lib": "CollisionCW",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_retro",
        "host": True,
        "objects": [
            ["Collision/CCollidableAABox", False],
            ["Collision/CCollidableCollisionSurface", True],
            ["Collision/CCollisionInfo", True],
            "Collision/InternalColliders",
            ["Collision/CCollisionPrimitive", False],
            ["Collision/CMaterialList", True],
            ["Collision/CollisionUtil", False],
            "Collision/CCollidableSphere",
            ["Collision/CMaterialFilter", True],
            ["Collision/COBBox", False],
            ["Collision/CMRay", True],
        ],
    },
    {
        "lib": "Kyoto_CW1",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_retro",
        "host": True,
        "objects": [
            ["Kyoto/Basics/CBasics", True],
            ["Kyoto/Basics/CStopwatch", True],
            ["Kyoto/Basics/CBasicsDolphin", True],
            ["Kyoto/Alloc/CCallStackDolphin", True],
            ["Kyoto/Basics/COsContextDolphin", True],
            ["Kyoto/Basics/CSWDataDolphin", True],
            ["Kyoto/Basics/RAssertDolphin", False],
            ["Kyoto/Animation/CAnimation", True],
            "Kyoto/Animation/CAnimationManager",
            "Kyoto/Animation/CAnimationSet",
            "Kyoto/Animation/CAnimCharacterSet",
            "Kyoto/Animation/CAnimTreeLoopIn",
            "Kyoto/Animation/CAnimTreeSequence",
            "Kyoto/Animation/CCharacterInfo",
            "Kyoto/Animation/CCharacterSet",
            "Kyoto/Animation/CMetaAnimBlend",
            "Kyoto/Animation/CMetaAnimFactory",
            "Kyoto/Animation/CMetaAnimPhaseBlend",
            "Kyoto/Animation/CMetaAnimPlay",
            "Kyoto/Animation/CMetaAnimRandom",
            "Kyoto/Animation/CMetaAnimSequence",
            "Kyoto/Animation/CMetaTransFactory",
            "Kyoto/Animation/CMetaTransMetaAnim",
            "Kyoto/Animation/CMetaTransPhaseTrans",
            "Kyoto/Animation/CMetaTransSnap",
            "Kyoto/Animation/CMetaTransTrans",
            ["Kyoto/Animation/CPASAnimInfo", True],
            ["Kyoto/Animation/CPASAnimParm", True],
            "Kyoto/Animation/CPASAnimState",
            "Kyoto/Animation/CPASDatabase",
            ["Kyoto/Animation/CPASParmInfo", True],
            ["Kyoto/Animation/CPrimitive", True],
            "Kyoto/Animation/CSequenceHelper",
            ["Kyoto/Animation/CTransition", True],
            ["Kyoto/Animation/CTransitionManager", True],
            "Kyoto/Animation/CTreeUtils",
            "Kyoto/Animation/IMetaAnim",
            ["Kyoto/Audio/CSfxHandle", True],
            "Kyoto/Audio/CSfxManager",
            "Kyoto/Animation/CAdvancementDeltas",
            "Kyoto/Animation/CAnimMathUtils",
            "Kyoto/Animation/CAnimPOIData",
            "Kyoto/Animation/CAnimSource",
            "Kyoto/Animation/CAnimSourceReader",
            "Kyoto/Animation/CAnimSourceReaderBase",
            "Kyoto/Animation/CAnimTreeAnimReaderContainer",
            "Kyoto/Animation/CAnimTreeBlend",
            "Kyoto/Animation/CAnimTreeContinuousPhaseBlend",
            "Kyoto/Animation/CAnimTreeDoubleChild",
            "Kyoto/Animation/CAnimTreeNode",
            "Kyoto/Animation/CAnimTreeSingleChild",
            "Kyoto/Animation/CAnimTreeTimeScale",
            "Kyoto/Animation/CAnimTreeTransition",
            "Kyoto/Animation/CAnimTreeTweenBase",
            ["Kyoto/Animation/CBoolPOINode", True],
            "Kyoto/Animation/CCharAnimMemoryMetrics",
            "Kyoto/Animation/CCharLayoutInfo",
            "Kyoto/Animation/CFBStreamedAnimReader",
            "Kyoto/Animation/CFBStreamedCompression",
            "Kyoto/Animation/CHierarchyPoseBuilder",
            ["Kyoto/Animation/CInt32POINode", True],
            ["Kyoto/Animation/CParticlePOINode", True],
            ["Kyoto/Animation/CPOINode", True],
            "Kyoto/Animation/CSegStatementSet",
            "Kyoto/Animation/CTimeScaleFunctions",
            "Kyoto/Animation/IAnimReader",
            "Kyoto/Animation/CAllFormatsAnimSource",
            "Kyoto/CDvdRequest",
            ["Kyoto/Text/CColorInstruction", True],
            ["Kyoto/Text/CColorOverrideInstruction", True],
            ["Kyoto/Text/CDrawStringOptions", True],
            "Kyoto/Text/CFontInstruction",
            "Kyoto/Text/CFontRenderState",
            ["Kyoto/Text/CLineExtraSpaceInstruction", True],
            "Kyoto/Text/CLineInstruction",
            ["Kyoto/Text/CLineSpacingInstruction", True],
            ["Kyoto/Text/CPopStateInstruction", True],
            ["Kyoto/Text/CPushStateInstruction", True],
            ["Kyoto/Text/CRasterFont", False],
            ["Kyoto/Text/CRemoveColorOverrideInstruction", True],
            ["Kyoto/Text/CSaveableState", True],
            "Kyoto/Text/CTextExecuteBuffer",
            "Kyoto/Text/CTextInstruction",
            ["Kyoto/Text/CTextParser", False],
            ["Kyoto/Text/CWordBreakTables", False],
            ["Kyoto/Text/CWordInstruction", False],
            ["Kyoto/Text/CBlockInstruction", True],
            ["Kyoto/Text/CFont", True],
            ["Kyoto/Graphics/CLight", True],
            "Kyoto/Graphics/CCubeModel",
            ["Kyoto/Graphics/CGX", True],
            ["Kyoto/Graphics/CTevCombiners", True],
            ["Kyoto/Graphics/DolphinCGraphics", False],
            ["Kyoto/Graphics/DolphinCPalette", False],
            ["Kyoto/Graphics/DolphinCTexture", False],
            ["Kyoto/Math/CloseEnough", True],
            "Kyoto/Math/CMatrix3f",
            ["Kyoto/Math/CMatrix4f", False],
            "Kyoto/Math/CQuaternion",
            ["Kyoto/CRandom16", True],
            "Kyoto/Math/CTransform4f",
            ["Kyoto/Math/CUnitVector3f", True],
            ["Kyoto/Math/CVector2f", True],
            ["Kyoto/Math/CVector2i", True],
            ["Kyoto/Math/CVector3d", True],
            ["Kyoto/Math/CVector3f", False],
            ["Kyoto/Math/CVector3i", True],
            ["Kyoto/Math/RMathUtils", False],
            ["Kyoto/CCrc32", True],
            ["Kyoto/Alloc/CCircularBuffer", True],
            ["Kyoto/Alloc/CMemory", True],
            ["Kyoto/Alloc/IAllocator", True],
            "Kyoto/PVS/CPVSVisOctree",
            "Kyoto/PVS/CPVSVisSet",
            ["Kyoto/Particles/CColorElement", False],
            "Kyoto/Particles/CElementGen",
            ["Kyoto/Particles/CIntElement", True],
            ["Kyoto/Particles/CModVectorElement", False],
            ["Kyoto/Particles/CParticleDataFactory", False],
            "Kyoto/Particles/CParticleGen",
            ["Kyoto/Particles/CParticleGlobals", True],
            "Kyoto/Particles/CParticleSwoosh",
            "Kyoto/Particles/CParticleSwooshDataFactory",
            ["Kyoto/Particles/CRealElement", True],
            "Kyoto/Particles/CSpawnSystemKeyframeData",
            ["Kyoto/Particles/CUVElement", False],
            ["Kyoto/Particles/CVectorElement", False],
            ["Kyoto/Particles/CWarp", True],
            ["Kyoto/Math/CPlane", True],
            ["Kyoto/Math/CSphere", True],
            ["Kyoto/Math/CAABox", False],
            "Kyoto/CFactoryMgr",
            "Kyoto/CResFactory",
            "Kyoto/CResLoader",
            ["Kyoto/rstl/rstl_map", False],
            "Kyoto/rstl/rstl_strings",
            ["Kyoto/rstl/RstlExtras", False],
            ["Kyoto/Streams/CInputStream", True],
            ["Kyoto/Streams/CMemoryInStream", True],
            ["Kyoto/Streams/CMemoryStreamOut", True],
            ["Kyoto/Streams/COutputStream", True],
            ["Kyoto/Streams/CZipInputStream", True],
            ["Kyoto/Streams/CZipOutputStream", True],
            ["Kyoto/Streams/CZipSupport", True],
            "Kyoto/CFactoryStore",
            "Kyoto/CObjectReference",
            "Kyoto/CSimplePool",
            ["Kyoto/CToken", True],
            ["Kyoto/IObj", True],
        ],
    },
    {
        "lib": "zlib",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_runtime",
        "host": True,
        "objects": [
            ["Kyoto/zlib/adler32", True],
            ["Kyoto/zlib/deflate", True],
            ["Kyoto/zlib/infblock", True],
            ["Kyoto/zlib/infcodes", True],
            ["Kyoto/zlib/inffast", True],
            ["Kyoto/zlib/inflate", True],
            ["Kyoto/zlib/inftrees", True],
            ["Kyoto/zlib/infutil", True],
            ["Kyoto/zlib/trees", True],
            ["Kyoto/zlib/zutil", True],
        ],
    },
    {
        "lib": "Kyoto_CW2",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_retro",
        "host": True,
        "objects": [
            "Kyoto/CARAMManager",
            "Kyoto/Math/CFrustumPlanes",
            ["Kyoto/Graphics/CCubeMaterial", False],
            ["Kyoto/Graphics/CCubeSurface", False],
            ["Kyoto/Animation/CCharAnimTime", False],
            ["Kyoto/Animation/CSegIdList", False],
            ["Kyoto/Input/CFinalInput", True],
            ["Kyoto/Graphics/CColor", True],
            ["Kyoto/Audio/DolphinCAudioGroupSet", False],
            ["Kyoto/Audio/DolphinCAudioSys", False],
            "Kyoto/DolphinCMemoryCardSys",
            ["Kyoto/Input/DolphinIController", True],
            ["Kyoto/Input/CDolphinController", True],
            ["Kyoto/DolphinCDvdFile", False],
            "Kyoto/Alloc/CMediumAllocPool",
            ["Kyoto/Alloc/CSmallAllocPool", True],
            ["Kyoto/Alloc/CGameAllocator", False],
            "Kyoto/Animation/DolphinCSkinnedModel",
            ["Kyoto/Animation/DolphinCSkinRules", False],
            ["Kyoto/Animation/DolphinCVirtualBone", False],
            "Kyoto/Graphics/DolphinCModel",
            ["Kyoto/Text/CStringTable", True],
            "Kyoto/Particles/CEmitterElement",
            ["Kyoto/Particles/CEffectComponent", True],
            ["Kyoto/Particles/CParticleData", False],
            "Kyoto/Animation/CVertexMorphEffect",
            "Kyoto/Animation/CSkinnedModelWithAvgNormals",
            ["Kyoto/CTimeProvider", True],
            ["Kyoto/CARAMToken", True],
            "Kyoto/Audio/CMidiManager",
            ["Kyoto/Text/CFontImageDef", True],
            "Kyoto/Text/CImageInstruction",
            "Kyoto/Text/CTextRenderBuffer",
            "Kyoto/Graphics/CCubeMoviePlayer",
            "Kyoto/Animation/CAdditiveAnimPlayback",
            "Kyoto/Particles/CParticleElectricDataFactory",
            "Kyoto/Particles/CParticleElectric",
            ["Kyoto/Graphics/DolphinCColor", True],
            "Kyoto/Audio/CDSPStreamManager",
            "Kyoto/CDependencyGroup",
            "Kyoto/Audio/CStreamAudioManager",
            ["Kyoto/Animation/CHalfTransition", True],
            "Kyoto/Particles/CElectricDescription",
            "Kyoto/Particles/CSwooshDescription",
            "Kyoto/Particles/CGenDescription",
            "Kyoto/CPakFile",
            "Kyoto/Animation/CPoseAsTransformsVariableSize",
            ["Kyoto/Input/CRumbleVoice", False],
            ["Kyoto/Input/RumbleAdsr", True],
            ["Kyoto/Input/CRumbleGenerator", True],
            "Kyoto/Audio/SDSPStream",
            ["Kyoto/Audio/g721", True],
            "Kyoto/Audio/CStaticAudioPlayer",
            "Kyoto/CFrameDelayedKiller",
        ],
    },
    {
        "lib": "ai",
        "mwcc_version": "1.2.5e",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/ai", True],
        ],
    },
    {
        "lib": "ar",
        "mwcc_version": "1.2.5e",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/ar/ar", False],
            "Dolphin/ar/arq",
        ],
    },
    {
        "lib": "base",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/PPCArch", True],
        ],
    },
    {
        "lib": "db",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/db", True],
        ],
    },
    {
        "lib": "dsp",
        "mwcc_version": "1.2.5e",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/dsp/dsp", True],
            ["Dolphin/dsp/dsp_debug", True],
            ["Dolphin/dsp/dsp_task", True],
        ],
    },
    {
        "lib": "dvd",
        "mwcc_version": "1.2.5e",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            "Dolphin/dvd/dvdlow",
            ["Dolphin/dvd/dvdfs", True],
            ["Dolphin/dvd/dvd", False],
            "Dolphin/dvd/dvdqueue",
            ["Dolphin/dvd/dvderror", True],
            ["Dolphin/dvd/dvdidutils", True],
            ["Dolphin/dvd/dvdfatal", True],
            ["Dolphin/dvd/fstload", True],
        ],
    },
    {
        "lib": "gx",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base -fp_contract off",
        "host": False,
        "objects": [
            "Dolphin/gx/GXInit",
            "Dolphin/gx/GXFifo",
            "Dolphin/gx/GXAttr",
            "Dolphin/gx/GXMisc",
            "Dolphin/gx/GXGeometry",
            "Dolphin/gx/GXFrameBuf",
            ["Dolphin/gx/GXLight", False],
            "Dolphin/gx/GXTexture",
            "Dolphin/gx/GXBump",
            "Dolphin/gx/GXTev",
            "Dolphin/gx/GXPixel",
            "Dolphin/gx/GXStubs",
            "Dolphin/gx/GXDisplayList",
            "Dolphin/gx/GXTransform",
            "Dolphin/gx/GXPerf",
        ],
    },
    {
        "lib": "mtx",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            "Dolphin/mtx/mtx",
            "Dolphin/mtx/mtx44vec",
            "Dolphin/mtx/mtx44",
            "Dolphin/mtx/vec",
            "Dolphin/mtx/psmtx",
        ],
    },
    {
        "lib": "os",
        "mwcc_version": "1.2.5e",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/os/__start", True],
            ["Dolphin/os/OS", True],
            ["Dolphin/os/OSAlarm", True],
            ["Dolphin/os/OSArena", True],
            ["Dolphin/os/OSAudioSystem", True],
            ["Dolphin/os/OSCache", True],
            ["Dolphin/os/OSContext", True, True, True],
            ["Dolphin/os/OSError", True],
            "Dolphin/os/OSFatal",
            "Dolphin/os/OSFont",
            ["Dolphin/os/OSInterrupt", True],
            ["Dolphin/os/OSLink", True],
            ["Dolphin/os/OSMessage", True],
            ["Dolphin/os/OSMemory", True],
            ["Dolphin/os/OSMutex", True],
            "Dolphin/os/OSReboot",
            ["Dolphin/os/OSReset", True],
            ["Dolphin/os/OSResetSW", True],
            ["Dolphin/os/OSRtc", True],
            ["Dolphin/os/OSSync", True],
            ["Dolphin/os/OSThread", True],
            ["Dolphin/os/OSTime", True],
            ["Dolphin/os/__ppc_eabi_init", True],
        ],
    },
    {
        "lib": "pad",
        "mwcc_version": "1.2.5e",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/pad/PadClamp", True],
            ["Dolphin/pad/pad", True],
        ],
    },
    {
        "lib": "vi",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "host": False,
        "objects": ["Dolphin/vi"],
    },
    {
        "lib": "MSL_C.PPCEABI.bare.H",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_runtime",
        "host": False,
        "objects": [
            ["Runtime/__mem", True],
            ["Runtime/__va_arg", True],
            ["Runtime/global_destructor_chain", True],
            ["Runtime/CPlusLibPPC", True],
            ["Runtime/NMWException", True],
            ["Runtime/ptmf", True],
            ["Runtime/runtime", True],
            ["Runtime/__init_cpp_exceptions", True],
            ["Runtime/Gecko_ExceptionPPC", True],
            ["Runtime/abort_exit", True],
            ["Runtime/alloc", False],
            ["Runtime/ansi_files", True],
            "Runtime/ansi_fp",
            ["Runtime/arith", True],
            ["Runtime/buffer_io", True],
            ["Runtime/ctype", True],
            ["Runtime/locale", True],
            ["Runtime/direct_io", True],
            ["Runtime/file_io", True],
            ["Runtime/errno", True],
            ["Runtime/FILE_POS", True],
            "Runtime/mbstring",
            ["Runtime/mem", True],
            ["Runtime/mem_funcs", True],
            ["Runtime/misc_io", True],
            "Runtime/printf",
            ["Runtime/qsort", False],
            ["Runtime/rand", True],
            "Runtime/sscanf",
            "Runtime/string",
            ["Runtime/float", True],
            "Runtime/strtold",
            ["Runtime/uart_console_io", True],
            ["Runtime/wchar_io", True],
            ["Runtime/e_acos", True],
            ["Runtime/e_asin", True],
            ["Runtime/e_atan2", True],
            ["Runtime/e_exp", False],  # CW 1.3.2 lib bug
            ["Runtime/e_fmod", True],
            ["Runtime/e_log", True],
            ["Runtime/e_pow", False],  # CW 1.3.2 lib bug
            ["Runtime/e_rem_pio2", True],
            ["Runtime/k_cos", True],
            ["Runtime/k_rem_pio2", True],
            ["Runtime/k_sin", True],
            ["Runtime/k_tan", True],
            ["Runtime/s_atan", False],  # CW 1.3.2 lib bug
            ["Runtime/s_copysign", True],
            ["Runtime/s_cos", True],
            ["Runtime/s_floor", True],
            ["Runtime/s_frexp", True],
            ["Runtime/s_ldexp", True],
            ["Runtime/s_modf", True],
            ["Runtime/s_nextafter", True],
            ["Runtime/s_sin", True],
            ["Runtime/s_tan", True],
            ["Runtime/w_acos", True],
            ["Runtime/w_asin", True],
            ["Runtime/w_atan2", True],
            ["Runtime/w_exp", True],
            ["Runtime/w_fmod", True],
            ["Runtime/w_log", True],
            ["Runtime/w_pow", True],
            ["Runtime/math_ppc", True],
        ],
    },
    {
        "lib": "musyx",
        "mwcc_version": "1.3.2",
        "cflags": "$cflags_musyx",
        "host": False,
        "objects": [
            "musyx/seq",
            "musyx/synth",
            ["musyx/seq_api", True],
            ["musyx/snd_synthapi", True, False],
            ["musyx/stream", False],
            "musyx/synthdata",
            "musyx/synthmacros",
            "musyx/synthvoice",
            ["musyx/synth_ac", True],
            "musyx/synth_adsr",
            ["musyx/synth_vsamples", False],
            ["musyx/synth_dbtab", True],
            "musyx/s_data",
            "musyx/hw_dspctrl",
            "musyx/hw_volconv",
            ["musyx/snd3d", False],
            ["musyx/snd_init", True],
            ["musyx/snd_math", True],
            ["musyx/snd_midictrl", False],
            ["musyx/snd_service", True],
            ["musyx/hardware", False],
            "musyx/hw_aramdma",
            ["musyx/dsp_import", True],
            ["musyx/hw_dolphin", True],
            ["musyx/hw_memory", True],
            ["musyx/creverb_fx", True],
            "musyx/creverb",
            ["musyx/reverb_fx", True],
            ["musyx/reverb", False],
            ["musyx/delay_fx", True],
            ["musyx/chorus_fx", True],
        ],
    },
    {
        "lib": "dtk",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/dtk", True],
        ],
    },
    {
        "lib": "card",
        "mwcc_version": "1.2.5e",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/card/CARDBios", True],
            ["Dolphin/card/CARDUnlock", True],
            ["Dolphin/card/CARDRdwr", True],
            ["Dolphin/card/CARDBlock", True],
            ["Dolphin/card/CARDDir", True],
            ["Dolphin/card/CARDCheck", True],
            ["Dolphin/card/CARDMount", True],
            ["Dolphin/card/CARDFormat", True],
            ["Dolphin/card/CARDOpen", True],
            ["Dolphin/card/CARDCreate", True],
            ["Dolphin/card/CARDRead", True],
            ["Dolphin/card/CARDWrite", True],
            ["Dolphin/card/CARDDelete", True],
            ["Dolphin/card/CARDStat", True],
            ["Dolphin/card/CARDRename", True],
            ["Dolphin/card/CARDNet", True],
        ],
    },
    {
        "lib": "si",
        "mwcc_version": "1.2.5e",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/si/SIBios", False],
            ["Dolphin/si/SISamplingRate", True],
        ],
    },
    {
        "lib": "exi",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/exi/EXIBios", True],
            ["Dolphin/exi/EXIUart", True],
        ],
    },
    {
        "lib": "thp",
        "mwcc_version": "1.2.5",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            "Dolphin/thp/THPDec",
            "Dolphin/thp/THPAudio",
        ],
    },
    {
        "lib": "gba",
        "mwcc_version": "1.2.5e",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/GBA/GBA", True],
            ["Dolphin/GBA/GBAGetProcessStatus", False],
            "Dolphin/GBA/GBAJoyBoot",
            ["Dolphin/GBA/GBARead", True],
            ["Dolphin/GBA/GBAWrite", True],
            ["Dolphin/GBA/GBAXfer", True],
            "Dolphin/GBA/GBAKey",
        ],
    },
]

if __name__ == "__main__":
    import os
    import io
    import sys
    import argparse

    from shutil import which
    from tools import ninja_syntax

    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--version",
        dest="version",
        default="0",
        help="version to build (0, 1, kor)",
    )
    parser.add_argument(
        "--map",
        dest="map",
        action="store_true",
        help="generate map file",
    )
    parser.add_argument(
        "--no-check",
        dest="check",
        action="store_false",
        help="don't check hash of resulting dol",
    )
    parser.add_argument(
        "--no-static-libs",
        dest="static_libs",
        action="store_false",
        help="don't build and use static libs",
    )
    parser.add_argument(
        "--devkitppc",
        dest="devkitppc",
        help="path to devkitPPC",
    )
    if os.name != "nt" and not "_NT-" in os.uname().sysname:
        parser.add_argument(
            "--wine",
            dest="wine",
            help="path to wine (or wibo)",
        )
    parser.add_argument(
        "--build-dtk",
        dest="build_dtk",
        help="path to decomp-toolkit source",
    )
    parser.add_argument(
        "--debug",
        dest="debug",
        action="store_true",
        help="build with debug info (non-matching)",
    )
    args = parser.parse_args()

    # On Windows, we need this to use && in commands
    ALLOW_CHAIN = "cmd /c " if os.name == "nt" else ""

    out = io.StringIO()
    n = ninja_syntax.Writer(out)

    n.variable("ninja_required_version", "1.3")
    n.newline()

    n.comment("The arguments passed to configure.py, for rerunning it.")
    configure_args = sys.argv[1:]
    # Ignore DEVKITPPC env var on Windows
    if os.name != "nt" and "DEVKITPPC" in os.environ and not args.devkitppc:
        configure_args.extend(["--devkitppc", os.environ["DEVKITPPC"]])
    n.variable("configure_args", configure_args)
    n.newline()

    ###
    # Variables
    ###
    n.comment("Variables")
    n.variable("version", args.version.lower())
    if args.version.lower() == "kor":
        n.variable("version_num", "2")
    elif args.version.isnumeric() and int(args.version) in [0, 1]:
        n.variable("version_num", args.version)
    else:
        sys.exit(f'Invalid version "{args.version}"')
    n.variable("builddir", "build/mp1.$version")
    if args.devkitppc:
        n.variable("devkitppc", args.devkitppc)
    elif os.name == "nt":
        n.variable("devkitppc", "C:\devkitPro\devkitPPC")
    elif "DEVKITPPC" in os.environ:
        n.variable("devkitppc", os.environ["DEVKITPPC"])
    else:
        n.variable("devkitppc", "/opt/devkitpro/devkitPPC")
    cflags_base = "-proc gekko -nodefaults -Cpp_exceptions off -RTTI off -fp hard -fp_contract on -O4,p -maxerrors 1 -enum int -inline auto -str reuse -nosyspath -MMD -DPRIME1 -DVERSION=$version_num -DNONMATCHING=0 -i include/ -i libc/"
    if args.debug:
        cflags_base += " -sym on -D_DEBUG"
    else:
        cflags_base += " -DNDEBUG"

    n.variable("cflags_base", cflags_base)
    n.variable(
        "cflags_retro",
        "$cflags_base -use_lmw_stmw on -str reuse,pool,readonly -gccinc -inline deferred,noauto -common on",
    )
    n.variable(
        "cflags_runtime",
        "$cflags_base -use_lmw_stmw on -str reuse,pool,readonly -gccinc -inline deferred,auto",
    )
    n.variable("cflags_musyx", "$cflags_base -str reuse,pool,readonly -fp_contract off")
    asflags = "-mgekko -I include/ --defsym version=$version_num -W --strip-local-absolute -gdwarf-2"
    n.variable("asflags", asflags)
    ldflags = "-fp fmadd -nodefaults -lcf ldscript.lcf"
    if args.map:
        ldflags += " -map $builddir/MetroidPrime.MAP"
    n.variable("ldflags", ldflags)
    n.variable("mwcc_version", "1.3.2")
    n.variable("python", sys.executable)
    if os.name == "nt":
        n.variable("exe", ".exe")
    else:
        if "_NT-" in os.uname().sysname:
            # MSYS2
            n.variable("wine", "")
        elif args.wine:
            n.variable("wine", args.wine + " ")
        elif which("wibo") is not None:
            n.variable("wine", "wibo ")
        else:
            n.variable("wine", "wine ")
        n.variable("exe", "")
    n.newline()

    ###
    # Rules
    ###
    if os.name == "nt":
        mwcc_command = "tools\\mwcc_compiler\\$mwcc_version\\mwcceppc.exe $cflags -c $in -o $basedir"
        mwcc_frank_command = (
            ALLOW_CHAIN
            + "tools\\mwcc_compiler\\$mwcc_version\\mwcceppc.exe $cflags -c $in -o $basedir && "
            + "$python tools/franklite.py $out $out"
        )
        link_elf_command = "tools\\mwcc_compiler\\$mwcc_version\\mwldeppc.exe $ldflags -o $out @$out.rsp"
        assemble_asm_command = (
            ALLOW_CHAIN
            + "$devkitppc\\bin\\powerpc-eabi-as.exe $asflags -o $out $in -MD $out.d"
            + " && $dtk elf fixup $out $out"
        )

        n.comment("Link ELF file")
        n.rule(
            name="link",
            command=link_elf_command,
            description="LINK $out",
            rspfile="$out.rsp",
            rspfile_content="$in",
        )
        n.newline()
    else:
        mwcc_command = "${wine}tools/mwcc_compiler/$mwcc_version/mwcceppc.exe $cflags -c $in -o $basedir && $python tools/transform-dep.py $basefile.d $basefile.d"
        mwcc_frank_command = (
            "${wine}tools/mwcc_compiler/$mwcc_version/mwcceppc.exe $cflags -c $in -o $basedir && "
            + "$python tools/franklite.py $out $out && "
            + "$python tools/transform-dep.py $basefile.d $basefile.d"
        )
        link_elf_command = "${wine}tools/mwcc_compiler/$mwcc_version/mwldeppc.exe $ldflags -o $out @$out.rsp"
        assemble_asm_command = (
            "$devkitppc/bin/powerpc-eabi-as $asflags -o $out $in -MD $out.d"
            + " && $dtk elf fixup $out $out"
        )

        n.comment("Link ELF file")
        n.rule(
            name="link",
            command=link_elf_command,
            description="LINK $out",
            rspfile="$out.rsp",
            rspfile_content="$in_newline",
        )
        n.newline()
    
    n.comment("MWCC build")
    n.rule(
        name="mwcc",
        command=mwcc_command,
        description="MWCC $out",
        depfile="$basefile.d",
        deps="gcc",
    )
    n.newline()

    n.comment("MWCC build with franklite")
    n.rule(
        name="mwcc_frank",
        command=mwcc_frank_command,
        description="FRANK $out",
        depfile="$basefile.d",
        deps="gcc",
    )
    n.newline()
    
    n.comment("Assemble asm")
    n.rule(
        name="as",
        command=assemble_asm_command,
        description="AS $out",
        depfile="$out.d",
        deps="gcc",
    )
    n.newline()

    n.comment("Create static library")
    n.rule(
        name="ar",
        command="$dtk ar create $out @$out.rsp",
        description="AR $out",
        rspfile="$out.rsp",
        rspfile_content="$in_newline",
    )
    n.newline()

    n.comment("Host build")
    n.variable("host_cflags", "-I include/ -Wno-trigraphs")
    n.variable(
        "host_cppflags",
        "-std=c++98 -I include/ -fno-exceptions -fno-rtti -D_CRT_SECURE_NO_WARNINGS -Wno-trigraphs -Wno-c++11-extensions",
    )
    n.rule(
        name="host_cc",
        command="clang $host_cflags -c -o $out $in",
        description="host_cc $out",
    )
    n.rule(
        name="host_cpp",
        command="clang++ $host_cppflags -c -o $out $in",
        description="host_c++ $out",
    )
    n.newline()

    ###
    # Tooling
    ###
    n.comment("decomp-toolkit")
    if args.build_dtk:
        n.variable("dtk", os.path.join("build", "tools", "release", "dtk$exe"))
        n.rule(
            name="cargo",
            command="cargo build --release --manifest-path $in --bin $bin --target-dir $target",
            description="CARGO $bin",
            depfile="$target/release/$bin.d",
            deps="gcc",
        )
        n.build(
            outputs="$dtk",
            rule="cargo",
            inputs=os.path.join(args.build_dtk, "Cargo.toml"),
            variables={
                "bin": "dtk",
                "target": os.path.join("build", "tools"),
            },
        )
    else:
        n.variable("dtk", os.path.join("build", "tools", "dtk$exe"))
        n.rule(
            name="download_dtk",
            command="$python tools/download_dtk.py $in $out",
            description="DOWNLOAD $out",
        )
        n.build(
            outputs="$dtk",
            rule="download_dtk",
            inputs="dtk_version",
            implicit=["tools/download_dtk.py"],
        )

    ###
    # Rules for source files
    ###
    n.comment("Source files")
    all_source_files = []
    all_host_source_files = []
    for lib in LIBS:
        inputs = []
        if "lib" in lib:
            lib_name = lib["lib"]
            n.comment(f"{lib_name}.a")
        else:
            n.comment("Loose files")
        for object in lib["objects"]:
            completed = None
            add_to_all = True
            no_frank = False
            if type(object) is list:
                if len(object) > 2:
                    add_to_all = object[2]
                if len(object) > 3:
                    no_frank = object[3]
                completed = object[1]
                object = object[0]

            mwcc_version = lib["mwcc_version"]
            c_file = None
            if os.path.exists(os.path.join("src", f"{object}.cpp")):
                c_file = os.path.join("src", f"{object}.cpp")
            elif os.path.exists(os.path.join("src", f"{object}.c")):
                c_file = os.path.join("src", f"{object}.c")
            if c_file is not None:
                if completed is None:
                    print(f"Mark as incomplete: {c_file}")
                rule = "mwcc"
                if mwcc_version == "1.2.5e":
                    mwcc_version = "1.2.5"
                    if no_frank is False:
                        rule = "mwcc_frank"
                n.build(
                    outputs=f"$builddir/src/{object}.o",
                    rule=rule,
                    inputs=c_file,
                    variables={
                        "mwcc_version": mwcc_version,
                        "cflags": lib["cflags"],
                        "basedir": os.path.dirname(f"$builddir/src/{object}"),
                        "basefile": f"$builddir/src/{object}",
                    },
                )
                if lib["host"]:
                    n.build(
                        outputs=f"$builddir/host/{object}.o",
                        rule="host_cc" if c_file.endswith(".c") else "host_cpp",
                        inputs=c_file,
                        variables={
                            "basedir": os.path.dirname(f"$builddir/src/{object}"),
                            "basefile": f"$builddir/src/{object}",
                        },
                    )
                    if add_to_all:
                        all_host_source_files.append(f"$builddir/host/{object}.o")
                if add_to_all:
                    all_source_files.append(f"$builddir/src/{object}.o")
            if os.path.exists(os.path.join("asm", f"{object}.s")):
                n.build(
                    outputs=f"$builddir/asm/{object}.o",
                    rule="as",
                    inputs=f"asm/{object}.s",
                    implicit="$dtk",
                )
            if completed:
                inputs.append(f"$builddir/src/{object}.o")
            else:
                inputs.append(f"$builddir/asm/{object}.o")
        if args.static_libs and "lib" in lib:
            lib_name = lib["lib"]
            n.build(
                outputs=f"$builddir/lib/{lib_name}.a",
                rule="ar",
                inputs=inputs,
                implicit="$dtk",
            )
        n.newline()

    ###
    # Link
    ###
    n.comment("Link")
    inputs = []
    for lib in LIBS:
        if args.static_libs and "lib" in lib:
            lib_name = lib["lib"]
            inputs.append(f"$builddir/lib/{lib_name}.a")
        else:
            for object in lib["objects"]:
                completed = False

                if type(object) is list:
                    completed = object[1]
                    object = object[0]

                if completed:
                    inputs.append(f"$builddir/src/{object}.o")
                else:
                    inputs.append(f"$builddir/asm/{object}.o")
    if args.map:
        n.build(
            outputs="$builddir/main.elf",
            rule="link",
            inputs=inputs,
            implicit_outputs="$builddir/MetroidPrime.MAP",
        )
    else:
        n.build(
            outputs="$builddir/main.elf",
            rule="link",
            inputs=inputs,
        )
    n.newline()

    ###
    # Helper rule for building all source files
    ###
    n.comment("Build all source files")
    n.build(
        outputs="all_source",
        rule="phony",
        inputs=all_source_files,
    )
    n.newline()

    ###
    # Helper rule for building all source files, with a host compiler
    ###
    n.comment("Build all source files with a host compiler")
    n.build(
        outputs="all_source_host",
        rule="phony",
        inputs=all_host_source_files,
    )
    n.newline()

    ###
    # Generate DOL
    ###
    n.comment("Generate DOL")
    n.rule(
        name="elf2dol",
        command=ALLOW_CHAIN
        + "$dtk elf2dol $in $out && "
        + "$dtk metroidbuildinfo $out buildstrings/mp1.$version.build",
        description="DOL $out",
    )
    n.build(
        outputs="$builddir/main.dol",
        rule="elf2dol",
        inputs="$builddir/main.elf",
        implicit="$dtk",
    )
    n.newline()

    ###
    # Check DOL hash
    ###
    if args.check:
        n.comment("Check DOL hash")
        n.rule(
            name="check",
            command="$dtk shasum -c $in -o $out",
            description="CHECK $in",
        )
        n.build(
            outputs="$builddir/main.dol.ok",
            rule="check",
            inputs="sha1/mp1.$version.sha1",
            implicit=["$builddir/main.dol", "$dtk"],
        )
        n.newline()

    ###
    # Progress script
    ###
    if args.map:
        n.comment("Check progress")
        n.rule(
            name="progress",
            command="$python progress.py $in -o $out",
            description="PROGRESS $in",
        )
        n.build(
            outputs="$builddir/main.dol.progress",
            rule="progress",
            inputs=["$builddir/main.dol", "$builddir/MetroidPrime.MAP"],
            implicit="progress.py",
        )
        n.newline()

    ###
    # Regenerate on change
    ###
    n.comment("Reconfigure on change")
    n.rule(
        name="configure",
        command="$python configure.py $configure_args",
        generator=True,
    )
    n.build(
        outputs="build.ninja",
        rule="configure",
        implicit=["configure.py", "tools/ninja_syntax.py"],
    )
    n.newline()

    ###
    # Default rule
    ###
    n.comment("Default rule")
    if args.check:
        dol_out = "$builddir/main.dol.ok"
    else:
        dol_out = "$builddir/main.dol"
    if args.map:
        n.default([dol_out, "$builddir/main.dol.progress"])
    else:
        n.default([dol_out])

    with open("build.ninja", "w") as f:
        f.write(out.getvalue())
    n.close()
