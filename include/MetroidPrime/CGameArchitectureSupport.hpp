#ifndef _CGAMEARCHITECTURESUPPORT
#define _CGAMEARCHITECTURESUPPORT

#include "types.h"

#include "GuiSys/CGuiSys.hpp"

#include "Kyoto/Audio/CAudioSys.hpp"
#include "Kyoto/Basics/COsContext.hpp"
#include "Kyoto/Basics/CStopwatch.hpp"
#include "Kyoto/TOneStatic.hpp"

#include "MetroidPrime/CArchitectureQueue.hpp"
#include "MetroidPrime/CIOWinManager.hpp"
#include "MetroidPrime/CInputGenerator.hpp"

#include "rstl/vector.hpp"

class CToken;

class CGameArchitectureSupport : public TOneStatic< CGameArchitectureSupport > {
public:
  CGameArchitectureSupport(COsContext&);
  ~CGameArchitectureSupport();

  void PreloadAudio();
  bool UpdateTicks();
  void Update();
  void UnloadAudio();

  inline CStopwatch& GetStopwatch1() { return x20_stopwatch1; }
  inline CStopwatch& GetStopwatch2() { return x28_stopwatch2; }
  inline CIOWinManager& GetIOWinManager() { return x58_ioWinMgr; }
  inline int& GetFramesDrawn() { return x78_gameFrameCount; }

private:
  CAudioSys x0_audioSys;
  CArchitectureQueue x4_archQueue;
  CStopwatch x20_stopwatch1;
  CStopwatch x28_stopwatch2;
  CInputGenerator x30_inputGenerator;
  CGuiSys x44_guiSys;
  CIOWinManager x58_ioWinMgr;
  int x78_gameFrameCount;
  float x7c_;
  float x80_;
  float x84_;
  uint x88_;
  rstl::vector< CToken > x90_;
  OSAlarm xa0_infiniteLoopAlarm;
  bool xc8_infiniteLoopAlarmSet;
};
CHECK_SIZEOF(CGameArchitectureSupport, 0xd0)

#endif // _CGAMEARCHITECTURESUPPORT
