#include "MetroidPrime/CMain.hpp"

#include "stdint.h"
#include "stdio.h"
#include "stdlib.h"

#include "dolphin/PPCArch.h"
#include "dolphin/ar.h"
#include "dolphin/arq.h"
#include "dolphin/dvd.h"
#include "dolphin/os.h"
#include "dolphin/os/OSCache.h"
#include "dolphin/os/OSMemory.h"
#include "dolphin/os/OSMutex.h"
#include "dolphin/pad.h"

#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Audio/CDSPStreamManager.hpp"
#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Audio/CStreamAudioManager.hpp"
#include "Kyoto/Basics/CBasics.hpp"
#include "Kyoto/Basics/RAssertDolphin.hpp"
#include "Kyoto/CARAMManager.hpp"
#include "Kyoto/CARAMToken.hpp"
#include "Kyoto/CFrameDelayedKiller.hpp"
#include "Kyoto/CMemoryCardSys.hpp"
#include "Kyoto/CPakFile.hpp"
#include "Kyoto/CResFactory.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/Particles/CElementGen.hpp"
#include "Kyoto/Streams/CMemoryInStream.hpp"
#include "Kyoto/Streams/CZipInputStream.hpp"
#include "Kyoto/Text/CStringTable.hpp"
#include "MetaRender/CCubeRenderer.hpp"
#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CAudioStateWin.hpp"
#include "MetroidPrime/CConsoleOutputWindow.hpp"
#include "MetroidPrime/CDecalManager.hpp"
#include "MetroidPrime/CEnvFxManager.hpp"
#include "MetroidPrime/CErrorOutputWindow.hpp"
#include "MetroidPrime/CGameGlobalObjects.hpp"
#include "MetroidPrime/CInGameTweakManager.hpp"
#include "MetroidPrime/CMainFlow.hpp"
#include "MetroidPrime/CMemoryCard.hpp"
#include "MetroidPrime/CSplashScreen.hpp"
#include "MetroidPrime/Factories/CCharacterFactoryBuilder.hpp"
#include "MetroidPrime/Player/CGameOptions.hpp"
#include "MetroidPrime/Player/CGameState.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"
#include "MetroidPrime/Player/CSystemState.hpp"
#include "MetroidPrime/ScriptObjects/CScriptMazeNode.hpp"
#include "MetroidPrime/Tweaks/CTweakGame.hpp"
#include "MetroidPrime/Tweaks/CTweakPlayer.hpp"

extern "C" {
void sub_8036ccfc();
// part of CMain but lazy
void nullsub_2(CMain*);
}

CResFactory* gpResourceFactory;
CSimplePool* gpSimplePool;
CCubeRenderer* gpRender;
CCharacterFactoryBuilder* gpCharacterFactoryBuilder;
CGuiSys* gGuiSystem;
CStringTable* gpStringTable;
CMain* gpMain;
unkptr gpController;
CGameState* gpGameState;
CMemoryCard* gpMemoryCard;
CInGameTweakManager* gpTweakManager;
unkptr gpDefaultFont;
unkptr lbl_805A8C50;
unkptr lbl_805A8C54;
bool COsContext::mProgressiveMode;
u32 sARAMMemArray[2];
float sInfiniteLoopTime;

#define GRAPHICS_FIFO_SIZE 0x60000
static uchar sGraphicsFifo[GRAPHICS_FIFO_SIZE];
static uchar sMainSpace[sizeof(CMain)];

const char* s0 = "Misc_AGSC";
const char* s1 = "MiscSamus_AGSC";
const char* s2 = "UI_AGSC";
const char* s3 = "Weapons_AGSC";
const char* s4 = "ZZZ_AGSC";
const char* s5 = "??(??)";
const char* s6 = "";
const char* s7 = "%d";
const char* st8 = ".pak";
const char* s9 = "AudioTweaks";
const char* s10 = "Loaded audio tweaks from memory card\n";
const char* s11 = "FAILED to load audio tweaks from memory card\n";
const char* s12 = "aram:Tweaks";
const char* s13 = "NoARAM";
const char* s14 = "AudioGrp";
const char* s15 = "aram:MiscData";
const char* st16 = "aram:SamusGun";
const char* s17 = "aram:TestAnim";
const char* s18 = "aram:SamGunFx";
const char* s19 = "aram:MidiData";
const char* s20 = "aram:GGuiSys";
const char* s21 = "sound_lookup";
const char* s22 = "INFINITE LOOP";
const char* s23 = "STRG_Main";
const char* s24 = "Initializing renderer...\n";
const char* s25 = "Stack usage: %d bytes (%dk)\n";
const char* s26 = "Protecting stack...  ";
const char* s27 = "Stack: 0x%8.8x down to 0x%8.8x\n";
const char* s28 = "Metaforce";

// sdata
bool lbl_805A6BC0;

int main(int argc, char** argv) {
  DVDSetAutoFatalMessaging(TRUE);
  SetErrorHandlers();
  CMain* main = new (&sMainSpace) CMain();
  gpMain->RsMain(argc, argv);
  main->~CMain();
  return 0;
}

CMain::CMain()
: x0_osContext(true, true)
, x6c_unk(this)
, x6d_memorySys(x0_osContext, CMemorySys::GetGameAllocator())
, xe8_(0.0)
, x118_(0.f)
, x11c_(0.f)
, x120_(0.f)
, x124_(0.f)
, x128_gameGlobalObjects(nullptr)
, x12c_restartMode(kRM_Default)
, x130_frameTimes(0xF4240)
, x15c_frameTimeIdx(0)
, x160_24_finished(false)
, x160_25_mfGameBuilt(false)
, x160_26_screenFading(false)
, x160_27_(false)
, x160_28_manageCard(false)
, x160_29_(false)
, x160_30_(false)
, x160_31_cardBusy(false)
, x161_24_gameFrameDrawn(false)
, x164_(nullptr) {
  gpMain = this;
}

CMain::~CMain() {}

#define UNUSED_STACK_VAL 0x7337D00D

void CMain::InitializeSubsystems() {
  ARInit(sARAMMemArray, 2);
  ARAlloc(0x5fc000);
  CARAMManager::PreInitializeAlloc(0x5fc000);
  ARQInit();
  OSThread* thread = OSGetCurrentThread();
  printf("Protecting stack...  ");
  uchar* stackEnd =
      reinterpret_cast< uchar* >(ALIGN_UP(reinterpret_cast< uintptr_t >(thread->stackEnd), 0x400));
  uchar* stackBase = thread->stackBase;
  OSProtectRange(OS_PROTECT_CHAN3, stackEnd, 0x400, OS_PROTECT_CONTROL_NONE);

  uchar* end = stackBase - 0x2000;
  uchar* ptr = stackEnd + 0x400;
  for (; ptr < end; ptr += 4) {
    *reinterpret_cast< int* >(ptr) = UNUSED_STACK_VAL;
  }

  DCFlushRange(stackEnd + 0x400, static_cast< uint >(end - (stackEnd + 0x400)));
  printf("Stack: 0x%8.8x down to 0x%8.8x\n", thread->stackBase, thread->stackEnd);
  CElementGen::Initialize();
  CAnimData::InitializeCache();
  CARAMManager::Initialize(0x800);
  CDecalManager::Initialize();
  CFrameDelayedKiller::Initialize();
}

void CMain::ShutdownSubsystems() {
  CFrameDelayedKiller::ShutDown();
  CDecalManager::ShutDown();
  CElementGen::ShutDown();
  CAnimData::FreeCache();

  OSThread* thread = OSGetCurrentThread();
  uchar* stackEnd =
      reinterpret_cast< uchar* >(ALIGN_UP(reinterpret_cast< uintptr_t >(thread->stackEnd), 0x400));
  uchar* stackBase = thread->stackBase;

  uchar* ptr = stackEnd + 0x400;
  uchar* end = stackBase - 0x2000;
  for (; ptr < end; ptr += 4) {
    if (*reinterpret_cast< uint* >(ptr) != UNUSED_STACK_VAL) {
      break;
    }
  }
#ifdef __MWERKS__
  // TODO: assuming pointer is int-sized
  OSReport("Stack usage: %d bytes (%dk)\n", (int)(stackBase - ptr),
           ((uint)((int)stackBase - (int)ptr) / 1024));
#endif
}

CGameGlobalObjects::CGameGlobalObjects(COsContext& osContext, CMemorySys& memorySys)
: xcc_simplePool(x4_resFactory)
, x130_graphicsSys(osContext, memorySys, GRAPHICS_FIFO_SIZE, sGraphicsFifo)
, x134_gameState(rs_new CGameState())
, x150_inGameTweakManager(rs_new CInGameTweakManager())
, x154_defaultFont(LoadDefaultFont()) {
  gpResourceFactory = &x4_resFactory;
  gpSimplePool = &xcc_simplePool;
  gpCharacterFactoryBuilder = &xec_characterFactoryBuilder;
  gpGameState = x134_gameState.get();
  gpTweakManager = x150_inGameTweakManager.get();
  gpDefaultFont = &x154_defaultFont;
}

// Generated includes
#include "MetroidPrime/DefaultFontData.inc"
#include "MetroidPrime/DefaultFontTexture.inc"

CRasterFont* CGameGlobalObjects::LoadDefaultFont() {
  CZipInputStream fontDataStream(rs_new CMemoryInStream(sDefaultFontData, sizeof(sDefaultFontData)));
  CRasterFont* font = rs_new CRasterFont(fontDataStream, nullptr);
  CZipInputStream fontTextureStream(
      rs_new CMemoryInStream(sDefaultFontTexture, sizeof(sDefaultFontTexture)));
  font->SetTexture(rs_new CTexture(fontTextureStream, CTexture::kAM_Zero, CTexture::kBK_Zero));
  return font;
}

void CGameGlobalObjects::PostInitialize(COsContext& osContext, CMemorySys& memorySys) {
  AddPaksAndFactories();
  LoadStringTable();
  printf("Initializing renderer...\n");
  x14c_renderer = Renderer::AllocateRenderer(xcc_simplePool, osContext, memorySys, x4_resFactory);
  gpRender = reinterpret_cast< CCubeRenderer* >(x14c_renderer.get());
  CEnvFxManager::Initialize();
  CScriptMazeNode::LoadMazeSeeds();
}

void CGameGlobalObjects::LoadStringTable() {
  x13c_stringTable = gpSimplePool->GetObj("STRG_Main");
  gpStringTable = **x13c_stringTable;
}

// TODO CAuiMain
void InitializeApplicationUI(CGuiSys&);

void InfiniteLoopAlarm(OSAlarm* alarm, OSContext* context) {
  if (sInfiniteLoopTime >= 10.f) {
    rs_debugger_printf("INFINITE LOOP");
  }
  sInfiniteLoopTime += alarm->period / OS_TIMER_CLOCK;
}

CGameArchitectureSupport::CGameArchitectureSupport(COsContext& osContext)
: x0_audioSys(0x30, 0x30, 0x30, 0x30, 0x5fc000)
, x30_inputGenerator(&osContext, gpTweakPlayer->GetLeftAnalogMax(),
                     gpTweakPlayer->GetRightAnalogMax())
, x44_guiSys(gpResourceFactory, gpSimplePool, CGuiSys::kUM_Zero)
, x78_gameFrameCount(0)
, x7c_(0.f)
, x80_(0.f)
, x84_(0.f)
, x88_(2)
, xc8_infiniteLoopAlarmSet(false) {
  CAudioSys::SysSetVolume(0x7F, 0, 0xFF);
  CAudioSys::SetDefaultVolumeScale(0x75);
  CAudioSys::SetVolumeScale(CAudioSys::GetDefaultVolumeScale());
  CDSPStreamManager::Initialize();
  CStreamAudioManager::SetMusicVolume(0x7F);
  CAudioSys::TrkSetSampleRate(kTSR_One);
  gpMain->SetMaxSpeed(false);
  gpMain->ResetGameState();
  if (!gpTweakGame->GetSplashScreensDisabled()) {
    x58_ioWinMgr.AddIOWin(rs_new CSplashScreen(CSplashScreen::Nintendo), 1000, 10000);
  }
  x58_ioWinMgr.AddIOWin(rs_new CMainFlow(), 0, 0);
  x58_ioWinMgr.AddIOWin(rs_new CConsoleOutputWindow(8, 5.f, 0.75f), 100, 0);
  x58_ioWinMgr.AddIOWin(rs_new CAudioStateWin(), 100, -1);
  x58_ioWinMgr.AddIOWin(rs_new CErrorOutputWindow(false), 10000, 100000);
  InitializeApplicationUI(x44_guiSys);
  CGuiSys::SetGlobalGuiSys(&x44_guiSys);
  gpController = x30_inputGenerator.GetController();
  gpGameState->GameOptions().EnsureOptions();
  sInfiniteLoopTime = 0.f;
  OSSetPeriodicAlarm(&xa0_infiniteLoopAlarm, OSGetTime(), (float)OS_TIMER_CLOCK, InfiniteLoopAlarm);
  xc8_infiniteLoopAlarmSet = true;
}

CGameArchitectureSupport::~CGameArchitectureSupport() {
  if (xc8_infiniteLoopAlarmSet) {
    OSCancelAlarm(&xa0_infiniteLoopAlarm);
    xc8_infiniteLoopAlarmSet = false;
  }
  x58_ioWinMgr.RemoveAllIOWins();
  UnloadAudio();
  CSfxManager::Shutdown();
  CDSPStreamManager::Shutdown();
}

// 800044A4
void CMain::StreamNewGameState(CInputStream& in, int saveIdx) {
  bool hasFusion = gpGameState->SystemState().GetHasFusion();
  x128_gameGlobalObjects->GameState() = nullptr;
  gpGameState = nullptr;
  x128_gameGlobalObjects->GameState() = rs_new CGameState(in, saveIdx);
  gpGameState = x128_gameGlobalObjects->GameState().get();
  gpGameState->SystemState().SetHasFusion(hasFusion);
  gpGameState->PlayerState()->SetIsFusionEnabled(gpGameState->SystemState().GetHasFusion());
  gpGameState->HintOptions().SetHintNextTime();
}

// 80004590
void CMain::RefreshGameState() {
  CSystemState systemState = gpGameState->SystemState();
  uint saveIdx = gpGameState->SaveIdx();
  u64 cardSerial = gpGameState->CardSerial();
  rstl::vector< uchar > backupBuf = gpGameState->BackupBuf();
  CGameOptions gameOptions = gpGameState->GameOptions();
  x128_gameGlobalObjects->GameState() = nullptr;
  gpGameState = nullptr;
  {
    CMemoryInStream stream(backupBuf.data(), backupBuf.size(), CMemoryInStream::kOS_Owned);
    x128_gameGlobalObjects->GameState() = rs_new CGameState(stream, saveIdx);
  }
  gpGameState = x128_gameGlobalObjects->GameState().get();
  gpGameState->SystemState() = systemState;
  gpGameState->GameOptions() = gameOptions;
  gpGameState->GameOptions().EnsureOptions();
  gpGameState->CardSerial() = cardSerial;
  gpGameState->PlayerState()->SetIsFusionEnabled(gpGameState->SystemState().GetHasFusion());
}

// 8000487C
void CMain::EnsureWorldPaksReady(void) {
  CResLoader& resLoader = gpResourceFactory->GetResLoader();
  for (int i = 0; i < resLoader.GetPakCount(); ++i) {
    CPakFile& file = resLoader.GetPakFile(i);
    if (file.IsWorldPak()) {
      file.EnsureWorldPakReady();
    }
  }
}

// 80004AEC
void CMain::AddWorldPaks() {
  rstl::rmemory_allocator allocator;
  rstl::string basePath = gpTweakGame->GetWorldPrefix();
  for (int i = 0; i < 9; ++i) {
    rstl::string pak =
        basePath +
        (i == 0 ? rstl::string_l("") : rstl::string(CBasics::Stringize("%d", i), -1, allocator));
    if (CDvdFile::FileExists((pak + rstl::string_l(".pak")).data())) {
      gpResourceFactory->GetResLoader().AddPakFileAsync(pak, false, true);
    }
  }
}

// 80004CE8
void CMain::AsyncIdle(uint time) {
  if (time < 500) {
    uint total = 0;
    for (int i = 0; i < x130_frameTimes.capacity(); ++i) {
      total += x130_frameTimes[i];
    }
    if (total < 500 * x130_frameTimes.capacity()) {
      time = 500;
    } else {
      time = 0;
    }
  }
  if (time != 0) {
    gpResourceFactory->AsyncIdle(time);
  }
  x130_frameTimes[x15c_frameTimeIdx] = time;
  x15c_frameTimeIdx = x15c_frameTimeIdx + 1;
  if (x15c_frameTimeIdx >= x130_frameTimes.capacity()) {
    x15c_frameTimeIdx = 0;
  }
}

// 80004DC8
int CMain::RsMain(int argc, const char* const* argv) {
  PPCSetFpIEEEMode();
  CStopwatch timer;
  LCEnable();

  rstl::single_ptr< CGameGlobalObjects > gameGlobalObjects(
      rs_new CGameGlobalObjects(x0_osContext, x6d_memorySys));
  x128_gameGlobalObjects = gameGlobalObjects.get();

  for (int i = 0; i < 4; ++i) {
    xf0_.AddValue(0.3f);
    x104_.AddValue(0.2f);
  }

  x118_ = 0.3f;
  x11c_ = 0.2f;
  InitializeSubsystems();
  gameGlobalObjects->PostInitialize(x0_osContext, x6d_memorySys);
  x70_tweaks.RegisterTweaks();
  AddWorldPaks();

  {
    rstl::string str;
    bool bVar1;
    if (gpTweakManager->ReadFromMemoryCard(rstl::string_l("AudioTweaks"))) {
      str = rstl::string_l("Loaded audio tweaks from memory card\n");
      bVar1 = true;
    } else {
      str = rstl::string_l("FAILED to load audio tweaks from memory card\n");
      bVar1 = true;
    }

    FillInAssetIDs();

    rstl::single_ptr< CGameArchitectureSupport > archSupport(
        rs_new CGameArchitectureSupport(x0_osContext));
    x164_ = archSupport.get();
    archSupport->PreloadAudio();

    srand(timer.GetElapsedMicros());

    if (lbl_805A8C54 != nullptr) {
      CMemoryInStream stream(lbl_805A8C54, 0x80);
      stream.ReadBits(1);
      gpGameState->GameOptions() = CGameOptions(stream);
      gpGameState->GameOptions().EnsureOptions();
      lbl_805A6BC0 = stream.ReadBits(1);
    }

#define dt 1.0 / 60.0
    while (!x160_24_finished) {
      archSupport->GetStopwatch2().Reset();
      gpResourceFactory->GetResLoader().AsyncIdlePakLoading();
      if (gpMemoryCard == nullptr && gpResourceFactory->GetResLoader().AreAllPaksLoaded()) {
        MemoryCardInitializePump();
      }
      CARAMManager::CollectGarbage();
      CARAMToken::UpdateAllDMAs();
      if (!archSupport->UpdateTicks()) {
        x160_24_finished = true;
      }
      double t1 = archSupport->GetStopwatch2().GetElapsedTime();
      xf0_.AddValue(t1 / dt);
      x118_ = xf0_.GetAverage().data();
      archSupport->GetStopwatch2().Reset();
      DoPredrawMetrics();

      if (bVar1) {
        bVar1 = false;
        // rs_log_print(str.data());
      }
      if (!x160_26_screenFading) {
        gpRender->BeginScene();
        archSupport->GetIOWinManager().Draw();
        DrawDebugMetrics(t1, archSupport->GetStopwatch2());

        double t2 = archSupport->GetStopwatch2().GetElapsedTime();
        x104_.AddValue(t2 / dt);
        x11c_ = x104_.GetAverage().data();

        uint idleMicros;
        double idleTime = (dt - (t1 + t2)) - 0.00075;
        if (idleTime > 0)
          idleMicros = idleTime * 1000000;
        else
          idleMicros = 0;
        AsyncIdle(idleMicros);

        gpRender->EndScene();

        if (x161_24_gameFrameDrawn) {
          ++archSupport->GetFramesDrawn();
          x161_24_gameFrameDrawn = false;
        }
      } else {
        gpResourceFactory->AsyncIdle(1000000);
      }

      archSupport->Update();
      CSfxManager::Update(dt);
      UpdateStreamedAudio();

      if (CheckTerminate())
        break;
      bool needsReset = false;
      if (archSupport->GetIOWinManager().IsEmpty()) {
        // rs_log_print("IOWinManager got empty. Resetting game architecture\n");
        needsReset = true;
      } else if (CheckReset()) {
        // rs_log_print("Reset pressed...\n");
        needsReset = true;
      }
      if (needsReset) {
        x12c_restartMode = kRM_Default;
        CStreamAudioManager::StopAll();
        PADRecalibrate(0xf0000000);
        CGraphics::SetIsBeginSceneClearFb(true);
        CGraphics::BeginScene();
        CGraphics::EndScene();
        sub_8036ccfc();

        archSupport = nullptr;
        CGameArchitectureSupport* tmp = rs_new CGameArchitectureSupport(x0_osContext);
        archSupport = tmp;
        x164_ = archSupport.get();
        tmp->PreloadAudio();
      }
      nullsub_2(this);
    }
  }
  ShutdownSubsystems();
  gameGlobalObjects = nullptr;
  CARAMManager::Shutdown();
  return 0;
}

// 8036723C
void CMain::EnsureWorldPakReady(CAssetId id) {
  CResLoader& resLoader = gpResourceFactory->GetResLoader();
  for (int i = 0; i < resLoader.GetPakCount(); ++i) {
    bool notInNameList = true;
    CPakFile& pakFile = resLoader.GetPakFile(i);
    if (pakFile.IsWorldPak()) {
      rstl::vector< rstl::pair< rstl::string, SObjectTag > > nameList = pakFile.NameList();
      rstl::vector< rstl::pair< rstl::string, SObjectTag > >::iterator cur = nameList.begin();
      while (cur != nameList.end()) {
        if (cur->second.GetId() == id) {
          notInNameList = false;
        }
        ++cur;
      }
      if (notInNameList) {
        pakFile.sub_8036742c();
      } else {
        pakFile.EnsureWorldPakReady();
      }
    }
  }
}

// 800036A0
void CMain::ResetGameState() {
  CSystemState systemState = gpGameState->SystemState();
  CGameOptions gameOptions = gpGameState->GameOptions();
  x128_gameGlobalObjects->GameState() = nullptr;
  gpGameState = nullptr;
  x128_gameGlobalObjects->GameState() = rs_new CGameState();
  gpGameState = x128_gameGlobalObjects->GameState().get();
  gpGameState->SystemState() = systemState;
  gpGameState->GameOptions() = gameOptions;
  gpGameState->GameOptions().EnsureOptions();
  gpGameState->PlayerState()->SetIsFusionEnabled(gpGameState->SystemState().GetHasFusion());
}

// 8000367C
void CMain::RegisterResourceTweaks() { x70_tweaks.RegisterResourceTweaks(); }

// 80003658
void CMain::UpdateStreamedAudio() { CStreamAudioManager::Update(1.f / 60.f); }
