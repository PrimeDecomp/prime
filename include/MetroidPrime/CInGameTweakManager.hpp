#ifndef _CINGAMETWEAKMANAGER
#define _CINGAMETWEAKMANAGER

#include "Kyoto/SObjectTag.hpp"
#include "types.h"

#include "rstl/string.hpp"
#include "rstl/vector.hpp"

class CTweakValue {
public:
  struct Audio {
  public:
    Audio(float fadeIn, float fadeOut, float vol, const rstl::string& fileName, uint handle)
    : x0_fadeIn(fadeIn)
    , x4_fadeOut(fadeOut)
    , x8_volume(vol)
    , xc_fileName(fileName)
    , x1c_res(handle) {}

    float GetFadeIn() const { return x0_fadeIn; }
    float GetFadeOut() const { return x4_fadeOut; }
    float GetVolume() const { return x8_volume; }
    const rstl::string& GetFileName() const { return xc_fileName; }
    const CAssetId& GetResId() const { return x1c_res; }
    // static Audio None() { return Audio(0.f, 0.f, 0.f, "", 0); }

  private:
    float x0_fadeIn;
    float x4_fadeOut;
    float x8_volume;
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
    uint x44_int;
    float x44_flt;
  };
};

NESTED_CHECK_SIZEOF(CTweakValue, Audio, 0x20)
CHECK_SIZEOF(CTweakValue, 0x48)

class CInGameTweakManager {
public:
  CInGameTweakManager();
  ~CInGameTweakManager();

  bool HasTweakValue(const rstl::string& name) const;
  const CTweakValue* GetTweakValue(const rstl::string& name) const;
  bool ReadFromMemoryCard(const rstl::string&);
  rstl::vector< CAssetId > GetSongAssetsInWorld(CAssetId world) const;
  rstl::vector< CTweakValue > GetTweaksInWorld(CAssetId world) const;

  static rstl::string GetIdentifierForWorldDefaultMusic(CAssetId world);
  static rstl::string GetIdentifierForMusicEvent(CAssetId, const rstl::string&);

  static rstl::string GetIdentifierForMidiEvent(CAssetId world, CAssetId area,
                                                const rstl::string& midiObj);

private:
  rstl::vector< CTweakValue > x0_values;
};

CHECK_SIZEOF(CInGameTweakManager, 0x10)

extern CInGameTweakManager* gpTweakManager;

#endif // _CINGAMETWEAKMANAGER
