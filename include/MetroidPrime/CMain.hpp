#ifndef _CMAIN_HPP
#define _CMAIN_HPP

#include "types.h"

#include "rstl/reserved_vector.hpp"

#include "Kyoto/Basics/COsContext.hpp"
#include "Kyoto/Basics/CStopwatch.hpp"
#include "Kyoto/CMemorySys.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/TReservedAverage.hpp"
#include "MetroidPrime/CGameArchitectureSupport.hpp"
#include "MetroidPrime/CGameGlobalObjects.hpp"
#include "MetroidPrime/TGameTypes.hpp"
#include "MetroidPrime/Tweaks/CTweaks.hpp"

class CMain;

// TODO
class UnkClassArena {
public:
  UnkClassArena(CMain*);
};

// TODO move to new header
class CDvdRequestSys {
public:
  CDvdRequestSys() {
    if (mManagerInstalled != true) {
      mManagerInstalled = true;
    }
  }
  ~CDvdRequestSys() {
    if (mManagerInstalled == true) {
      mManagerInstalled = false;
    }
  }

private:
  static bool mManagerInstalled;
};

// TODO where?
enum EFlowState {
  kFS_None,
  kFS_WinBad,
  kFS_WinGood,
  kFS_WinBest,
  kFS_LoseGame,
  kFS_Default,
  kFS_StateSetter,
  kFS_PreFrontEnd,
  kFS_FrontEnd,
  kFS_Game,
  kFS_GameExit,
};

class CMain {
public:
  CMain();
  ~CMain();

  void UpdateStreamedAudio();
  void RegisterResourceTweaks();
  void ResetGameState();
  void StreamNewGameState(CInputStream& in, int saveIdx);
  void RefreshGameState();
  void AddWorldPaks();
  void AsyncIdle(uint time);
  int RsMain(int argc, const char* const* argv);
  void InitializeSubsystems();
  void FillInAssetIDs();
  void ShutdownSubsystems();
  void MemoryCardInitializePump();
  void DoPredrawMetrics();
  void DrawDebugMetrics(double dt, CStopwatch& stopWatch);
  bool CheckTerminate();
  bool CheckReset();
  void OpenWindow();

  void SetMaxSpeed(bool v) {
    // ?
    x160_26_screenFading = v;
  }

  static void EnsureWorldPaksReady();
  static void EnsureWorldPakReady(CAssetId id);

  // TODO
  COsContext& InitOsContext() {
    OpenWindow();
    return x0_osContext;
  }

private:
  COsContext x0_osContext;
  UnkClassArena x6c_unk;
  CMemorySys x6d_memorySys;
  CDvdRequestSys x6e_dvdRequestSys;
  CTweaks x70_tweaks;
  u8 pad[0x14];
  f64 xe8_;
  TReservedAverage< f32, 4 > xf0_;
  TReservedAverage< f32, 4 > x104_;
  f32 x118_;
  f32 x11c_;
  f32 x120_;
  f32 x124_;
  CGameGlobalObjects* x128_gameGlobalObjects;
  EFlowState x12c_flowState;
  rstl::reserved_vector< uint, 10 > x130_frameTimes;
  int x15c_frameTimeIdx;
  bool x160_24_finished : 1;
  bool x160_25_mfGameBuilt : 1;
  bool x160_26_screenFading : 1;
  bool x160_27_ : 1;
  bool x160_28_manageCard : 1;
  bool x160_29_ : 1;
  bool x160_30_ : 1;
  bool x160_31_cardBusy : 1;
  bool x161_24_gameFrameDrawn : 1;
  CGameArchitectureSupport* x164_;
};
CHECK_SIZEOF(CMain, 0x168)

extern CMain* gpMain;

#endif
