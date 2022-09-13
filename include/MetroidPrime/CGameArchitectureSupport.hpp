#ifndef _CGAMEARCHITECTURESUPPORT_HPP
#define _CGAMEARCHITECTURESUPPORT_HPP

#include "types.h"

#include "GuiSys/CGuiSys.hpp"
#include "Kyoto/Audio/CAudioSys.hpp"
#include "Kyoto/Basics/COsContext.hpp"
#include "Kyoto/Basics/CStopwatch.hpp"
#include "Kyoto/TOneStatic.hpp"
#include "MetroidPrime/CIOWinManager.hpp"
#include "MetroidPrime/CInputGenerator.hpp"

class CSavableState;

class Unknown {
private:
  u8 pad[0x2c];
};

class CGameArchitectureSupport : public TOneStatic< CGameArchitectureSupport > {
public:
  CGameArchitectureSupport(COsContext&);
  ~CGameArchitectureSupport();

  void PreloadAudio();
  bool UpdateTicks();
  void Update();

  inline CStopwatch& GetStopwatch1() { return x20_stopwatch1; }
  inline CStopwatch& GetStopwatch2() { return x28_stopwatch2; }
  // TODO
  inline CIOWinManager& GetIOWinManager() { return *(CIOWinManager*)(((u8*)this) + 0x58); }
  inline int& GetFramesDrawn() const { return *(int*)(((u8*)this) + 0x78); }

private:
  CAudioSys x0_audioSys;
  rstl::list< CSavableState > x8_;
  u32 pad;
  CStopwatch x20_stopwatch1;
  CStopwatch x28_stopwatch2;
  CInputGenerator x30_inputGenerator;
  CGuiSys x44_guiSys;
  CIOWinManager x58_ioWinMgr;
  uint x78_gameFrameCount;
  f32 x7c_;
  f32 x80_;
  f32 x84_;
  uint x88_;
  uint x8c_; // unused?
  uint x90_;
  uint x94_;
  uint x98_;
  rstl::optional_object< Unknown > x9c_;
  u8 pad2[0x4];
};
CHECK_SIZEOF(CGameArchitectureSupport, 0xd0)

#endif
