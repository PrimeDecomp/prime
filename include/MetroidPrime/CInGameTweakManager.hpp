#ifndef _CINGAMETWEAKMANAGER_HPP
#define _CINGAMETWEAKMANAGER_HPP

#include "types.h"

#include "rstl/string.hpp"
#include "rstl/vector.hpp"

class CTweakValue {
public:
  struct Audio {
  public:
    Audio(f32 fadeIn, f32 fadeOut, f32 vol, const rstl::string& fileName, u32 handle)
    : x0_fadeIn(fadeIn)
    , x4_fadeOut(fadeOut)
    , x8_volume(vol)
    , xc_fileName(fileName)
    , x1c_res(handle) {}

    f32 GetFadeIn() const { return x0_fadeIn; }
    f32 GetFadeOut() const { return x4_fadeOut; }
    f32 GetVolume() const { return x8_volume; }
    const rstl::string& GetFileName() const { return xc_fileName; }
    CAssetId GetResId() const { return x1c_res; }
    // static Audio None() { return Audio(0.f, 0.f, 0.f, "", 0); }

  private:
    f32 x0_fadeIn;
    f32 x4_fadeOut;
    f32 x8_volume;
    rstl::string xc_fileName;
    CAssetId x1c_res;
  };
  enum EType {};

  CTweakValue();
  // CTweakValue(const rstl::string&, EType, const Audio&);
  // CTweakValue(CTextInputStream&);
  // void PutTo(CTextOutStream&);
  const rstl::string& GetName() const { return x4_key; }
  const rstl::string& GetValueAsString() const;
  void SetValueFromString(const rstl::string&);
  const Audio& GetAudio() const { return x24_audio; }
  EType GetType() const { return x0_type; }

private:
  EType x0_type;
  rstl::string x4_key;
  rstl::string x14_str;
  Audio x24_audio;
  union {
    u32 x44_int;
    f32 x44_flt;
  };
};

class CInGameTweakManager {
public:
  CInGameTweakManager();

  bool ReadFromMemoryCard(const rstl::string&);

private:
  rstl::vector< CTweakValue > x0_values;
};
CHECK_SIZEOF(CInGameTweakManager, 0x10)

extern CInGameTweakManager* gpTweakManager;

#endif
