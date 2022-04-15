#ifndef _CGAMEOPTIONS_HPP
#define _CGAMEOPTIONS_HPP

#include "types.h"

#include "rstl/pair.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

#include "CInputStream.hpp"
#include "TGameTypes.hpp"

class CGameOptions {
public:
  CGameOptions();
  CGameOptions(CInputStream& in);

  void EnsureOptions();

private:
  rstl::reserved_vector< bool, 64 > x0_;
  s32 x44_soundMode; // CAudioSys::ESurroundModes
  u32 x48_screenBrightness;
  s32 x4c_screenXOffset;
  s32 x50_screenYOffset;
  s32 x54_screenStretch;
  u32 x58_sfxVol;
  u32 x5c_musicVol;
  u32 x60_hudAlpha;
  u32 x64_helmetAlpha;
  bool x68_24_hudLag : 1;
  bool x68_25_invertY : 1;
  bool x68_26_rumble : 1;
  bool x68_27_swapBeamsControls : 1;
  bool x68_28_hintSystem : 1;
  rstl::vector< rstl::pair< CAssetId, CAssetId > > x6c_controlTxtrMap;
};

#endif
