#ifndef _CGAMEARCHITECTURESUPPORT_HPP
#define _CGAMEARCHITECTURESUPPORT_HPP

#include "types.h"

#include "Kyoto/Basics/COsContext.hpp"
#include "Kyoto/Basics/CStopwatch.hpp"
#include "Kyoto/TOneStatic.hpp"
#include "MetroidPrime/CIOWinManager.hpp"

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
  u8 pad[0x20];
  CStopwatch x20_stopwatch1;
  CStopwatch x28_stopwatch2;
  u8 pad2[0xa0];
};

#endif
