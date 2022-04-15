#ifndef _CMAIN_HPP
#define _CMAIN_HPP

#include "types.h"

#include "rstl/reserved_vector.hpp"

#include "CGameArchitectureSupport.hpp"
#include "CGameGlobalObjects.hpp"
#include "CInputStream.hpp"
#include "CMemorySys.hpp"
#include "COsContext.hpp"
#include "CStopwatch.hpp"
#include "CTweaks.hpp"
#include "TReservedAverage.hpp"
#include "TGameTypes.hpp"

class CMain {
public:
  void UpdateStreamedAudio();
  void RegisterResourceTweaks();
  void ResetGameState();
  void StreamNewGameState(CInputStream& in, int saveIdx);
  void RefreshGameState();
  void AddWorldPaks();
  void AsyncIdle(u32 time);
  int RsMain(int argc, const char* const* argv);
  void InitializeSubsystems();
  void FillInAssetIDs();
  void ShutdownSubsystems();
  void MemoryCardInitializePump();
  void DoPredrawMetrics();
  void DrawDebugMetrics(double dt, CStopwatch& stopWatch);
  bool CheckTerminate();
  bool CheckReset();

  static void EnsureWorldPaksReady();
  static void EnsureWorldPakReady(CAssetId id);

private:
  COsContext x0_osContext;
  u8 x6c_unk;
  CMemorySys x6d_memorySys;
  CTweaks x70_tweaks;
  u8 pad[0x7c];
  TReservedAverage< f32, 4 > xf0_;
  TReservedAverage< f32, 4 > x104_;
  f32 x118_;
  f32 x11c_;
  f32 x120_;
  f32 x124_;
  CGameGlobalObjects* x128_gameGlobalObjects;
  u32 x12c_flowState; // EFlowState
  rstl::reserved_vector< u32, 10 > x130_frameTimes;
  s32 x15c_frameTimeIdx;
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

extern CMain* gpMain;

#endif
