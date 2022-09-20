#ifndef _COSCONTEXT_HPP
#define _COSCONTEXT_HPP

#include <stddef.h>

#include "types.h"

#include <dolphin/gx/GXStruct.h>

class COsContext {
public:
  COsContext(bool, bool);
  ~COsContext();

  uint GetBaseFreeRam() const {
    size_t hiAddr = reinterpret_cast< size_t >(x1c_arenaHi);
    size_t loAddr = reinterpret_cast< size_t >(x20_arenaLo2);
    return ((hiAddr & ~31) - ((loAddr + 31) & ~31));
  }

private:
  int x0_right;
  int x4_bottom;
  int x8_left;
  int xc_top;
  int x10_format;
  int x14_consoleType;
  void* x18_arenaLo1;
  void* x1c_arenaHi;
  void* x20_arenaLo2;
  void* x24_frameBuffer1;
  void* x28_frameBuffer2;
  int x2c_frameBufferSize;
  GXRenderModeObj x30_renderMode;
};
CHECK_SIZEOF(COsContext, 0x6c)

#endif
