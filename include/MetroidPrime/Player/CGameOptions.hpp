#ifndef _CGAMEOPTIONS_HPP
#define _CGAMEOPTIONS_HPP

#include "types.h"

#include "rstl/pair.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

#include "Kyoto/Streams/CInputStream.hpp"
#include "MetroidPrime/TGameTypes.hpp"

class CGameOptions {
public:
  CGameOptions();
  CGameOptions(CInputStream& in);

  void EnsureOptions();

private:
  rstl::reserved_vector< bool, 64 > x0_;
  int x44_soundMode; // CAudioSys::ESurroundModes
  uint x48_screenBrightness;
  int x4c_screenXOffset;
  int x50_screenYOffset;
  int x54_screenStretch;
  uint x58_sfxVol;
  uint x5c_musicVol;
  uint x60_hudAlpha;
  uint x64_helmetAlpha;
  bool x68_24_hudLag : 1;
  bool x68_25_invertY : 1;
  bool x68_26_rumble : 1;
  bool x68_27_swapBeamsControls : 1;
  bool x68_28_hintSystem : 1;
  rstl::vector< rstl::pair< CAssetId, CAssetId > > x6c_controlTxtrMap;
};

#endif
