#include "Kyoto_CWD/CMain.hpp"

#include "Dolphin/OSCache.h"
#include "Dolphin/PPCArch.h"
#include "Dolphin/os.h"

#include "Kyoto_CWD/CARAMManager.hpp"
#include "Kyoto_CWD/CARAMToken.hpp"
#include "Kyoto_CWD/CBasics.hpp"
#include "Kyoto_CWD/CCharacterFactoryBuilder.hpp"
#include "Kyoto_CWD/CCubeRenderer.hpp"
#include "Kyoto_CWD/CGameGlobalObjects.hpp"
#include "Kyoto_CWD/CGameOptions.hpp"
#include "Kyoto_CWD/CGameState.hpp"
#include "Kyoto_CWD/CGraphics.hpp"
#include "Kyoto_CWD/CInGameTweakManager.hpp"
#include "Kyoto_CWD/CMemoryCardSys.hpp"
#include "Kyoto_CWD/CMemoryInStream.hpp"
#include "Kyoto_CWD/CPlayerState.hpp"
#include "Kyoto_CWD/CResFactory.hpp"
#include "Kyoto_CWD/CSfxManager.hpp"
#include "Kyoto_CWD/CSimplePool.hpp"
#include "Kyoto_CWD/CStreamAudioManager.hpp"
#include "Kyoto_CWD/CSystemOptions.hpp"
#include "Kyoto_CWD/CTweakGame.hpp"

extern "C" {
// something pad
void PADRecalibrate(u32);
// something gx
void sub_8036ccfc();
// part of CMain but lazy
void nullsub_2(CMain*);
}

CResFactory* gpResourceFactory;
CSimplePool* gpSimplePool;
CCubeRenderer* gpRender;
CCharacterFactoryBuilder* gpCharacterFactoryBuilder;
unkptr gGuiSystem;
unkptr gpStringTable;
CMain* gpMain;
unkptr gpController;
CGameState* gpGameState;
CMemoryCardSys* gpMemoryCard;
CInGameTweakManager* gpTweakManager;
unkptr gpDefaultFont;
unkptr lbl_805A8C50;
unkptr lbl_805A8C54;
bool lbl_805A8C58;
u32 sARAMMemArray[2];

// sdata
bool lbl_805A6BC0;

// 80003640
void nullsub_1() {}

// 80003644
void InitMetroTRK() {}

// 80003648
int sub_80003648() { return 0; }

// 80003650
int sub_80003650() { return 0; }

// 80003658
void CMain::UpdateStreamedAudio() { CStreamAudioManager::Update(1.f / 60.f); }

// 8000367C
void CMain::RegisterResourceTweaks() { x70_tweaks.RegisterResourceTweaks(); }

// 800036A0
void CMain::ResetGameState() {
  CSystemOptions persistentOptions = gpGameState->SystemOptions();
  CGameOptions gameOptions = gpGameState->GameOptions();
  x128_gameGlobalObjects->SetGameState(nullptr);
  x128_gameGlobalObjects->SetGameState(new CGameState());
  gpGameState->SystemOptions() = persistentOptions;
  gpGameState->SetGameOptions(gameOptions);
  gpGameState->PlayerState()->SetIsFusionEnabled(
      gpGameState->SystemOptions().GetHasFusion());
}

// 800044A4
void CMain::StreamNewGameState(CInputStream& in, int saveIdx) {
  bool hasFusion = gpGameState->SystemOptions().GetHasFusion();
  x128_gameGlobalObjects->SetGameState(nullptr);
  x128_gameGlobalObjects->SetGameState(new CGameState(in, saveIdx));
  gpGameState->SystemOptions().SetHasFusion(hasFusion);
  gpGameState->PlayerState()->SetIsFusionEnabled(
      gpGameState->SystemOptions().GetHasFusion());
  gpGameState->HintOptions().SetHintNextTime();
}

// 80004590
void CMain::RefreshGameState() {
  CSystemOptions systemOptions = gpGameState->SystemOptions();
  u32 saveIdx = gpGameState->SaveIdx();
  u64 cardSerial = gpGameState->CardSerial();
  rstl::vector< u8 > backupBuf = gpGameState->BackupBuf();
  CGameOptions gameOptions = gpGameState->GameOptions();
  x128_gameGlobalObjects->SetGameState(nullptr);
  {
    CMemoryInStream stream(backupBuf.data(), backupBuf.size(),
                           CMemoryInStream::Owned);
    x128_gameGlobalObjects->SetGameState(new CGameState(stream, saveIdx));
  }
  // gpGameState = x128_gameGlobalObjects->x134_gameState.get();
  gpGameState->SystemOptions() = systemOptions;
  gpGameState->SetGameOptions(gameOptions);
  gpGameState->CardSerial() = cardSerial;
  gpGameState->PlayerState()->SetIsFusionEnabled(
      gpGameState->SystemOptions().GetHasFusion());
}

// 8000487C
void CMain::EnsureWorldPaksReady(void) {
  CResLoader& resLoader = gpResourceFactory->GetResLoader();
  for (s32 i = 0; i < resLoader.GetPakCount(); ++i) {
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
        (i == 0 ? rstl::string_l("")
                : rstl::string(CBasics::Stringize("%d", i), -1, allocator));
    if (CDvdFile::FileExists((pak + rstl::string_l(".pak")).data())) {
      gpResourceFactory->GetResLoader().AddPakFileAsync(pak, false, true);
    }
  }
}

// 80004CE8
void CMain::AsyncIdle(u32 time) {
  if (time < 500) {
    u32 total = 0;
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
int CMain::RsMain(int argc, char** argv) {
  PPCSetFpIEEEMode();
  CStopwatch timer;
  LCEnable();

  rstl::single_ptr< CGameGlobalObjects > gameGlobalObjects(
      new CGameGlobalObjects(x0_osContext, x6d_memorySys));
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
        new CGameArchitectureSupport(x0_osContext));
    x164_ = archSupport.get();
    archSupport->PreloadAudio();

    srand(timer.GetElapsedMicros());

    if (lbl_805A8C54 != nullptr) {
      CMemoryInStream stream(lbl_805A8C54, 0x80);
      stream.ReadBits(1);
      gpGameState->SetGameOptions(CGameOptions(stream));
      lbl_805A6BC0 = stream.ReadBits(1);
    }

#define dt 1.0 / 60.0
    while (!x160_24_finished) {
      archSupport->GetStopwatch2().Reset();
      gpResourceFactory->GetResLoader().AsyncIdlePakLoading();
      if (gpMemoryCard == nullptr &&
          gpResourceFactory->GetResLoader().AreAllPaksLoaded()) {
        MemoryCardInitializePump();
      }
      CARAMManager::CollectGarbage();
      CARAMToken::UpdateAllDMAs();
      if (!archSupport->UpdateTicks()) {
        x160_24_finished = true;
      }
      f64 t1 = archSupport->GetStopwatch2().GetElapsedTime();
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

        f64 t2 = archSupport->GetStopwatch2().GetElapsedTime();
        x104_.AddValue(t2 / dt);
        x11c_ = x104_.GetAverage().data();

        u32 idleMicros;
        f64 idleTime = (dt - (t1 + t2)) - 0.00075;
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
        // rs_log_print
        needsReset = true;
      } else if (CheckReset()) {
        needsReset = true;
      }
      if (needsReset) {
        x12c_flowState = 5; // Default
        CStreamAudioManager::StopAll();
        PADRecalibrate(0xf0000000);
        CGraphics::SetIsBeginSceneClearFb(true);
        CGraphics::BeginScene();
        CGraphics::EndScene();
        sub_8036ccfc();

        archSupport = nullptr;
        CGameArchitectureSupport* tmp =
            new CGameArchitectureSupport(x0_osContext);
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
