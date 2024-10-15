#ifndef _CGAMEOPTIONS
#define _CGAMEOPTIONS

#include "types.h"

#include "rstl/pair.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

#include "Kyoto/Audio/CAudioSys.hpp"
#include "Kyoto/SObjectTag.hpp"
#include "MetroidPrime/TGameTypes.hpp"

class CInputStream;
class CMemoryStreamOut;

class CGameOptions {
public:
  CGameOptions();
  CGameOptions(CInputStream& in);
  ~CGameOptions();

  void PutTo(CMemoryStreamOut&);

  void InitSoundMode();
  void ResetToDefaults();
  void EnsureOptions();

  void SetScreenBrightness(int, bool);
  float TuneScreenBrightness();
  void SetScreenPositionX(int, bool);
  void SetScreenPositionY(int, bool);
  void SetScreenStretch(int, bool);
  void SetSfxVolume(int, bool);
  void SetMusicVolume(int, bool);
  void SetSurroundMode(CAudioSys::ESurroundModes, bool);

  float GetHudAlpha() const;
  float GetHelmetAlpha() const;
  void SetHelmetAlpha(int);
  void SetHUDLag(bool);
  void SetIsHintSystemEnabled(bool);
  void ToggleControls(bool);
  void ResetControllerAssets(int);
  void SetControls(int);

  void SetInvertYAxis(bool invert);
  bool GetInvertYAxis() const { return x68_25_invertY; }
  void SetIsRumbleEnabled(bool rumble);
  bool GetIsRumbleEnabled() const { return x68_26_rumble; }

private:
  rstl::reserved_vector< uchar, 64 > x0_;
  int x44_soundMode;
  int x48_screenBrightness;
  int x4c_screenXOffset;
  int x50_screenYOffset;
  int x54_screenStretch;
  uint x58_sfxVol;
  uint x5c_musicVol;
  int x60_hudAlpha;
  int x64_helmetAlpha;
  bool x68_24_hudLag : 1;
  bool x68_25_invertY : 1;
  bool x68_26_rumble : 1;
  bool x68_27_swapBeamsControls : 1;
  bool x68_28_hintSystem : 1;
  rstl::vector< rstl::pair< CAssetId, CAssetId > > x6c_controlTxtrMap;
};

#endif // _CGAMEOPTIONS
