#ifndef _CMAIN
#define _CMAIN

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

class CMain {
public:
  enum ERestartMode {
    kRM_None,
    kRM_WinBad,
    kRM_WinGood,
    kRM_WinBest,
    kRM_LoseGame,
    kRM_Default,
    kRM_StateSetter,
    kRM_PreFrontEnd,
    kRM_FrontEnd,
    kRM_Game,
    kRM_GameExit,
  };

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
  void SetRestartMode(ERestartMode s) { x12c_restartMode = s; }
  void SetCardBusy(bool v) { x160_31_cardBusy = v; }

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
  uchar pad[0x14];
  double xe8_;
  TReservedAverage< float, 4 > xf0_;
  TReservedAverage< float, 4 > x104_;
  float x118_;
  float x11c_;
  float x120_;
  float x124_;
  CGameGlobalObjects* x128_gameGlobalObjects;
  ERestartMode x12c_restartMode;
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

#endif // _CMAIN
